.class public Lorg/bouncycastle/math/ec/ECPoint$F2m;
.super Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V
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

    .line 1637
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 1640
    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V
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

    .line 1644
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 1647
    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 30
    .param p1, "b"    # Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1716
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1718
    return-object v1

    .line 1720
    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1722
    return-object v0

    .line 1725
    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 1726
    .local v2, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v3

    .line 1728
    .local v3, "coord":I
    iget-object v4, v0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 1729
    .local v4, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v5, v1, Lorg/bouncycastle/math/ec/ECPoint;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 1731
    .local v5, "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    const/4 v7, 0x0

    sparse-switch v3, :sswitch_data_0

    .line 1890
    move/from16 v17, v3

    .end local v3    # "coord":I
    .local v17, "coord":I
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "unsupported coordinate system"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1795
    .end local v17    # "coord":I
    .restart local v3    # "coord":I
    :sswitch_0
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1797
    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1799
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    return-object v6

    .line 1802
    :cond_2
    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    return-object v6

    .line 1805
    :cond_3
    iget-object v8, v0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v8, "L1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v9, v0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v9, v9, v7

    .line 1806
    .local v9, "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v10, v1, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v10, "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v11, v1, Lorg/bouncycastle/math/ec/ECPoint;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v11, v11, v7

    .line 1808
    .local v11, "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v12

    .line 1809
    .local v12, "Z1IsOne":Z
    move-object v13, v5

    .local v13, "U2":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object v14, v10

    .line 1810
    .local v14, "S2":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-nez v12, :cond_4

    .line 1812
    invoke-virtual {v13, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1813
    invoke-virtual {v14, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1816
    :cond_4
    invoke-virtual {v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v15

    .line 1817
    .local v15, "Z2IsOne":Z
    move-object/from16 v16, v4

    .local v16, "U1":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v17, v8

    .line 1818
    .local v17, "S1":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-nez v15, :cond_5

    .line 1820
    move-object/from16 v7, v16

    const/16 v18, 0x0

    .end local v16    # "U1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v7, "U1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1821
    .end local v7    # "U1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v16    # "U1":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v7, v17

    .end local v17    # "S1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v7, "S1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v7, v16

    move-object/from16 v6, v17

    .end local v7    # "S1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v17    # "S1":Lorg/bouncycastle/math/ec/ECFieldElement;
    goto :goto_0

    .line 1818
    :cond_5
    move-object/from16 v7, v16

    move-object/from16 v16, v17

    const/16 v18, 0x0

    .end local v17    # "S1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v7, "U1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v16, "S1":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v6, v16

    .line 1824
    .end local v16    # "S1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v6, "S1":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    move/from16 v17, v3

    .end local v3    # "coord":I
    .local v17, "coord":I
    invoke-virtual {v6, v14}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1825
    .local v3, "A":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 1827
    .local v19, "B":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1829
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1831
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 1834
    :cond_6
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 1838
    :cond_7
    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 1841
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v20

    .line 1842
    .local v20, "p":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/math/ec/ECPoint;->getXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1843
    move-object/from16 v21, v6

    .end local v6    # "S1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v21, "S1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/math/ec/ECPoint;->getYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1845
    .local v6, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v22, v10

    .line 1846
    .local v22, "Y2":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v23, v10

    move/from16 v22, v12

    .end local v12    # "Z1IsOne":Z
    .local v10, "Y2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v22, "Z1IsOne":Z
    .local v23, "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1848
    .local v12, "L":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v24, v10

    .end local v10    # "Y2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v24, "Y2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    move-object/from16 v25, v14

    .end local v14    # "S2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v25, "S2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v10, v14}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1849
    .local v10, "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1851
    new-instance v14, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    move/from16 v26, v15

    .end local v15    # "Z2IsOne":Z
    .local v26, "Z2IsOne":Z
    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/math/ec/ECFieldElement;->sqrt()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-direct {v14, v2, v10, v15}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v14

    .line 1854
    .end local v26    # "Z2IsOne":Z
    .restart local v15    # "Z2IsOne":Z
    :cond_8
    move/from16 v26, v15

    .end local v15    # "Z2IsOne":Z
    .restart local v26    # "Z2IsOne":Z
    invoke-virtual {v4, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v14, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v14, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1855
    .local v14, "Y3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1856
    .local v15, "L3":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v27, v4

    .end local v4    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v27, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    sget-object v4, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1857
    .end local v6    # "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "L":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "Y3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "p":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v24    # "Y2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v4, "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v20, v3

    move-object/from16 v6, v19

    move-object/from16 v19, v7

    goto :goto_1

    .line 1860
    .end local v21    # "S1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "Z1IsOne":Z
    .end local v23    # "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "S2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "Z2IsOne":Z
    .end local v27    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v4, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v6, "S1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v10, "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v12, "Z1IsOne":Z
    .local v14, "S2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v15, "Z2IsOne":Z
    :cond_9
    move-object/from16 v21, v6

    move-object/from16 v23, v10

    move/from16 v22, v12

    move-object/from16 v25, v14

    move/from16 v26, v15

    .end local v6    # "S1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "Z1IsOne":Z
    .end local v14    # "S2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "Z2IsOne":Z
    .restart local v21    # "S1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v22    # "Z1IsOne":Z
    .restart local v23    # "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v25    # "S2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v26    # "Z2IsOne":Z
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1862
    .end local v19    # "B":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v6, "B":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1863
    .local v10, "AU1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1865
    .local v12, "AU2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1866
    .local v14, "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 1868
    new-instance v15, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v19, v7

    .end local v7    # "U1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v19, "U1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/math/ec/ECFieldElement;->sqrt()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-direct {v15, v2, v14, v7}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v15

    .line 1871
    .end local v19    # "U1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v7    # "U1":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_a
    move-object/from16 v19, v7

    .end local v7    # "U1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v19    # "U1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1872
    .local v7, "ABZ2":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-nez v26, :cond_b

    .line 1874
    invoke-virtual {v7, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1877
    :cond_b
    invoke-virtual {v12, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    move-object/from16 v20, v3

    .end local v3    # "A":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v20, "A":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v15, v7, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1879
    .local v15, "L3":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object v3, v7

    .line 1880
    .local v3, "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-nez v22, :cond_c

    .line 1882
    invoke-virtual {v3, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v27, v4

    move-object v10, v14

    move-object v4, v3

    goto :goto_1

    .line 1880
    :cond_c
    move-object/from16 v27, v4

    move-object v10, v14

    move-object v4, v3

    .line 1886
    .end local v3    # "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "ABZ2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "AU2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v4, "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v10, "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v27    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_1
    new-instance v3, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    const/4 v7, 0x1

    new-array v7, v7, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v4, v7, v18

    invoke-direct {v3, v2, v10, v15, v7}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v3

    .line 1758
    .end local v6    # "B":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "L1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "U2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "L3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "coord":I
    .end local v19    # "U1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "A":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "S1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "Z1IsOne":Z
    .end local v23    # "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "S2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "Z2IsOne":Z
    .end local v27    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v3, "coord":I
    .local v4, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    :sswitch_1
    move/from16 v17, v3

    const/16 v18, 0x0

    .end local v3    # "coord":I
    .restart local v17    # "coord":I
    iget-object v3, v0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v3, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v6, v0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v6, v6, v18

    .line 1759
    .local v6, "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v7, v1, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v7, "Y2":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v8, v1, Lorg/bouncycastle/math/ec/ECPoint;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v8, v8, v18

    .line 1761
    .local v8, "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v9

    .line 1763
    .local v9, "Z2IsOne":Z
    invoke-virtual {v6, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1764
    .local v10, "U1":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-eqz v9, :cond_d

    move-object v11, v3

    goto :goto_2

    :cond_d
    invoke-virtual {v3, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1765
    .local v11, "U2":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_2
    invoke-virtual {v10, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1766
    .local v12, "U":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1767
    .local v13, "V1":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-eqz v9, :cond_e

    move-object v14, v4

    goto :goto_3

    :cond_e
    invoke-virtual {v4, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1768
    .local v14, "V2":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_3
    invoke-virtual {v13, v14}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1770
    .local v15, "V":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v19

    if-eqz v19, :cond_10

    .line 1772
    invoke-virtual {v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_f

    .line 1774
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 1777
    :cond_f
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 1780
    :cond_10
    move-object/from16 v19, v7

    .end local v7    # "Y2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v19, "Y2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1781
    .local v7, "VSq":Lorg/bouncycastle/math/ec/ECFieldElement;
    move/from16 v20, v9

    .end local v9    # "Z2IsOne":Z
    .local v20, "Z2IsOne":Z
    invoke-virtual {v7, v15}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1782
    .local v9, "VCu":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-eqz v20, :cond_11

    move-object/from16 v21, v6

    goto :goto_4

    :cond_11
    invoke-virtual {v6, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v21

    :goto_4
    move-object/from16 v22, v21

    .line 1783
    .local v22, "W":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v21, v6

    .end local v6    # "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v21, "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v15}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1784
    .local v6, "uv":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v23, v10

    .end local v10    # "U1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v23, "U1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v6, v12, v7, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    move-object/from16 v24, v11

    move-object/from16 v11, v22

    .end local v22    # "W":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v11, "W":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v24, "U2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1786
    .local v10, "A":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v22, v13

    .end local v13    # "V1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v22, "V1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1787
    .local v13, "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-eqz v20, :cond_12

    move-object/from16 v25, v7

    goto :goto_5

    :cond_12
    invoke-virtual {v7, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v25

    :goto_5
    move-object/from16 v26, v25

    .line 1788
    .local v26, "VSqZ2":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v25, v7

    .end local v7    # "VSq":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v25, "VSq":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v4, v15, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    move-object/from16 v27, v3

    move-object/from16 v3, v26

    .end local v26    # "VSqZ2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v3, "VSqZ2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v27, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v3, v6, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1789
    .local v7, "Y3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v26

    .line 1791
    .local v26, "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v28, v3

    .end local v3    # "VSqZ2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v28, "VSqZ2":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v3, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    move-object/from16 v29, v6

    const/4 v6, 0x1

    .end local v6    # "uv":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v29, "uv":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-array v6, v6, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v26, v6, v18

    invoke-direct {v3, v2, v13, v7, v6}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v3

    .line 1735
    .end local v7    # "Y3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "VCu":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "A":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "W":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "U":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "V2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "V":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "coord":I
    .end local v19    # "Y2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "Z2IsOne":Z
    .end local v21    # "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "V1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "U1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "U2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "VSq":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v27    # "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v28    # "VSqZ2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v29    # "uv":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v3, "coord":I
    :sswitch_2
    move/from16 v17, v3

    .end local v3    # "coord":I
    .restart local v17    # "coord":I
    iget-object v3, v0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 1736
    .local v3, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v6, v1, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 1738
    .local v6, "Y2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .local v7, "dx":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1739
    .local v8, "dy":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 1741
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 1743
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    return-object v9

    .line 1746
    :cond_13
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    return-object v9

    .line 1749
    :cond_14
    invoke-virtual {v8, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1751
    .local v9, "L":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1752
    .local v10, "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1754
    .local v11, "Y3":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v12, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v12, v2, v10, v11}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v12

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected detach()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 4

    .line 1651
    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected getCompressionYTilde()Z
    .locals 5

    .line 1691
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->getRawXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1692
    .local v0, "X":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1694
    return v2

    .line 1697
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->getRawYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1699
    .local v1, "Y":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1709
    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v2

    return v2

    .line 1705
    :pswitch_0
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v3

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v4

    if-eq v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 6

    .line 1656
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    move-result v0

    .line 1658
    .local v0, "coord":I
    packed-switch v0, :pswitch_data_0

    .line 1684
    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    return-object v1

    .line 1663
    :pswitch_0
    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v1, "X":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 1665
    .local v2, "L":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1671
    :cond_0
    invoke-virtual {v2, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1672
    .local v3, "Y":Lorg/bouncycastle/math/ec/ECFieldElement;
    const/4 v4, 0x6

    if-ne v4, v0, :cond_1

    .line 1674
    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 1675
    .local v4, "Z":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1677
    invoke-virtual {v3, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1680
    .end local v4    # "Z":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_1
    return-object v3

    .line 1667
    .end local v3    # "Y":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_2
    :goto_0
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 8

    .line 2082
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2084
    return-object p0

    .line 2087
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 2088
    .local v0, "X":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2090
    return-object p0

    .line 2093
    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 2118
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "unsupported coordinate system"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2113
    :pswitch_1
    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v1, "L":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v4, v4, v3

    .line 2114
    .local v4, "Z":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v5, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v6, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    new-array v2, v2, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v4, v2, v3

    invoke-direct {v5, v6, v0, v7, v2}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v5

    .line 2107
    .end local v1    # "L":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "Z":Lorg/bouncycastle/math/ec/ECFieldElement;
    :pswitch_2
    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 2108
    .restart local v1    # "L":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->addOne()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v2

    .line 2102
    .end local v1    # "L":Lorg/bouncycastle/math/ec/ECFieldElement;
    :pswitch_3
    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v1, "Y":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v4, v4, v3

    .line 2103
    .restart local v4    # "Z":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v5, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v6, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    new-array v2, v2, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v4, v2, v3

    invoke-direct {v5, v6, v0, v7, v2}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v5

    .line 2097
    .end local v1    # "Y":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "Z":Lorg/bouncycastle/math/ec/ECFieldElement;
    :pswitch_4
    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 2098
    .restart local v1    # "Y":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public twice()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 22

    .line 1897
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1899
    return-object v0

    .line 1902
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 1904
    .local v1, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    iget-object v2, v0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 1905
    .local v2, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1908
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 1911
    :cond_1
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v3

    .line 1913
    .local v3, "coord":I
    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_0

    .line 2000
    move/from16 v19, v3

    .end local v3    # "coord":I
    .local v19, "coord":I
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "unsupported coordinate system"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1949
    .end local v19    # "coord":I
    .restart local v3    # "coord":I
    :sswitch_0
    iget-object v6, v0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v6, "L1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v7, v0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v7, v7, v5

    .line 1951
    .local v7, "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v8

    .line 1952
    .local v8, "Z1IsOne":Z
    if-eqz v8, :cond_2

    move-object v9, v6

    goto :goto_0

    :cond_2
    invoke-virtual {v6, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1953
    .local v9, "L1Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    if-eqz v8, :cond_3

    move-object v10, v7

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1954
    .local v10, "Z1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_1
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1955
    .local v11, "a":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-eqz v8, :cond_4

    move-object v12, v11

    goto :goto_2

    :cond_4
    invoke-virtual {v11, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1956
    .local v12, "aZ1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_2
    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1957
    .local v13, "T":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1959
    new-instance v4, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->sqrt()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-direct {v4, v1, v13, v5}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v4

    .line 1962
    :cond_5
    invoke-virtual {v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1963
    .local v14, "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-eqz v8, :cond_6

    move-object v15, v13

    goto :goto_3

    :cond_6
    invoke-virtual {v13, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1965
    .local v15, "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_3
    const/16 v16, 0x0

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1967
    .local v5, "b":Lorg/bouncycastle/math/ec/ECFieldElement;
    const/16 v17, 0x1

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v4

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v18

    move/from16 v19, v3

    .end local v3    # "coord":I
    .restart local v19    # "coord":I
    shr-int/lit8 v3, v18, 0x1

    if-ge v4, v3, :cond_a

    .line 1969
    invoke-virtual {v6, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1971
    .local v3, "t1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1973
    invoke-virtual {v12, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .local v4, "t2":Lorg/bouncycastle/math/ec/ECFieldElement;
    goto :goto_4

    .line 1978
    .end local v4    # "t2":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_7
    invoke-virtual {v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v12, v5, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1980
    .restart local v4    # "t2":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_4
    move-object/from16 v18, v5

    .end local v5    # "b":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v18, "b":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v14}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1981
    .local v5, "L3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1983
    invoke-virtual {v5, v15}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    goto :goto_5

    .line 1985
    :cond_8
    invoke-virtual {v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v20

    if-nez v20, :cond_9

    .line 1987
    move-object/from16 v20, v3

    .end local v3    # "t1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v20, "t1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->addOne()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v15}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    goto :goto_5

    .line 1985
    .end local v20    # "t1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v3    # "t1":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_9
    move-object/from16 v20, v3

    .line 1989
    .end local v3    # "t1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "t2":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_5
    goto :goto_7

    .line 1992
    .end local v18    # "b":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v5, "b":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_a
    move-object/from16 v18, v5

    .end local v5    # "b":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v18    # "b":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-eqz v8, :cond_b

    move-object v3, v2

    goto :goto_6

    :cond_b
    invoke-virtual {v2, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1993
    .local v3, "X1Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_6
    invoke-virtual {v3, v13, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v14}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v15}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1996
    .end local v3    # "X1Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v5, "L3":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_7
    new-instance v3, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v15, v4, v16

    invoke-direct {v3, v1, v14, v5, v4}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v3

    .line 1928
    .end local v5    # "L3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "L1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "Z1IsOne":Z
    .end local v9    # "L1Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "Z1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "a":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "aZ1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "T":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "b":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "coord":I
    .local v3, "coord":I
    :sswitch_1
    move/from16 v19, v3

    const/16 v16, 0x0

    .end local v3    # "coord":I
    .restart local v19    # "coord":I
    iget-object v3, v0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v3, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v4, v0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v4, v4, v16

    .line 1930
    .local v4, "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v5

    .line 1931
    .local v5, "Z1IsOne":Z
    if-eqz v5, :cond_c

    move-object v6, v2

    goto :goto_8

    :cond_c
    invoke-virtual {v2, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1932
    .local v6, "X1Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_8
    if-eqz v5, :cond_d

    move-object v7, v3

    goto :goto_9

    :cond_d
    invoke-virtual {v3, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1934
    .local v7, "Y1Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_9
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1935
    .local v8, "X1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1936
    .local v9, "S":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object v10, v6

    .line 1937
    .local v10, "V":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1938
    .local v11, "vSquared":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1939
    .local v12, "sv":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v12, v9, v11, v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1941
    .local v13, "h":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1942
    .restart local v14    # "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v10, v13, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1943
    .local v15, "Y3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 1945
    .local v18, "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v20, v3

    .end local v3    # "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v20, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v3, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    move-object/from16 v21, v4

    const/4 v4, 0x1

    .end local v4    # "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v21, "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-array v4, v4, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v18, v4, v16

    invoke-direct {v3, v1, v14, v15, v4}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v3

    .line 1917
    .end local v5    # "Z1IsOne":Z
    .end local v6    # "X1Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "Y1Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "X1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "S":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "V":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "vSquared":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "sv":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "h":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "Y3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "coord":I
    .end local v20    # "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v3, "coord":I
    :sswitch_2
    move/from16 v19, v3

    .end local v3    # "coord":I
    .restart local v19    # "coord":I
    iget-object v3, v0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 1919
    .local v3, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1921
    .local v4, "L1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1922
    .local v5, "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->addOne()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1924
    .local v6, "Y3":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v7, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v7, v1, v5, v6}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v7

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 24
    .param p1, "b"    # Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 2007
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2009
    return-object v1

    .line 2011
    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2013
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 2016
    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 2018
    .local v2, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    iget-object v3, v0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 2019
    .local v3, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2022
    return-object v1

    .line 2025
    :cond_2
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v4

    .line 2027
    .local v4, "coord":I
    packed-switch v4, :pswitch_data_0

    .line 2075
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 2032
    :pswitch_0
    iget-object v5, v1, Lorg/bouncycastle/math/ec/ECPoint;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v5, "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v6, v1, Lorg/bouncycastle/math/ec/ECPoint;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    .line 2033
    .local v6, "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v8

    if-nez v8, :cond_3

    move-object/from16 v17, v3

    move/from16 v19, v4

    move-object/from16 v18, v5

    move-object/from16 v20, v6

    goto/16 :goto_0

    .line 2038
    :cond_3
    iget-object v8, v0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v8, "L1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v9, v0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v9, v9, v7

    .line 2039
    .local v9, "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v10, v1, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 2041
    .local v10, "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 2042
    .local v11, "X1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 2043
    .local v12, "L1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 2044
    .local v13, "Z1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 2046
    .local v14, "L1Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v14}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 2047
    .local v15, "T":Lorg/bouncycastle/math/ec/ECFieldElement;
    const/16 v16, 0x0

    invoke-virtual {v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->addOne()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 2048
    .local v7, "L2plus1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v15, v11, v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 2049
    .local v0, "A":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v17, v3

    .end local v3    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v17, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 2050
    .local v3, "X2Z1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v15}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v18

    move/from16 v19, v4

    .end local v4    # "coord":I
    .local v19, "coord":I
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 2052
    .local v4, "B":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 2054
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 2056
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 2059
    :cond_4
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 2062
    :cond_5
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 2064
    move-object/from16 v18, v5

    .end local v5    # "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v18, "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v5, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v20, v6

    .end local v6    # "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v20, "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/math/ec/ECFieldElement;->sqrt()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-direct {v5, v2, v0, v6}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v5

    .line 2067
    .end local v18    # "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v5    # "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v6    # "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_6
    move-object/from16 v18, v5

    move-object/from16 v20, v6

    .end local v5    # "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v18    # "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v20    # "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 2068
    .local v5, "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 2069
    .local v6, "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v21

    move-object/from16 v22, v0

    .end local v0    # "A":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v22, "A":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v21 .. v21}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v15, v7, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 2071
    .local v0, "L3":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v21, v3

    .end local v3    # "X2Z1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v21, "X2Z1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v3, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    move-object/from16 v23, v4

    .end local v4    # "B":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v23, "B":Lorg/bouncycastle/math/ec/ECFieldElement;
    const/4 v4, 0x1

    new-array v4, v4, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v6, v4, v16

    invoke-direct {v3, v2, v5, v0, v4}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v3

    .line 2033
    .end local v0    # "L3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "L2plus1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "L1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "X1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "L1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "Z1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "L1Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "T":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "coord":I
    .end local v20    # "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "X2Z1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "A":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "B":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v3, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v4, "coord":I
    .local v5, "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v6, "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_7
    move-object/from16 v17, v3

    move/from16 v19, v4

    move-object/from16 v18, v5

    move-object/from16 v20, v6

    .line 2035
    .end local v3    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "coord":I
    .end local v5    # "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v17    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v18    # "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v19    # "coord":I
    .restart local v20    # "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
