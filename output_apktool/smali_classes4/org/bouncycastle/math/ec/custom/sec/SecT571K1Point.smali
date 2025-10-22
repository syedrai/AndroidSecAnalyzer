.class public Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;
.super Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
.source "SecT571K1Point.java"


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

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 15
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

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 20
    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 31
    .param p1, "b"    # Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 64
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    return-object v1

    .line 68
    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    return-object v0

    .line 73
    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 75
    .local v2, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    iget-object v3, v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 76
    .local v3, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 78
    .local v4, "X2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 80
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 82
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5

    .line 85
    :cond_2
    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5

    .line 88
    :cond_3
    iget-object v5, v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .local v5, "L1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    iget-object v6, v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 89
    .local v6, "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .local v8, "L2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual {v1, v7}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 91
    .local v9, "Z2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v10

    .line 92
    .local v10, "t1":[J
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v11

    .line 93
    .local v11, "t2":[J
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v12

    .line 94
    .local v12, "t3":[J
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v13

    .line 96
    .local v13, "t4":[J
    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isOne()Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x0

    goto :goto_0

    :cond_4
    iget-object v14, v6, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v14}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->precompMultiplicand([J)[J

    move-result-object v14

    .line 98
    .local v14, "Z1Precomp":[J
    :goto_0
    if-nez v14, :cond_5

    .line 100
    const/16 v16, 0x0

    iget-object v7, v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    .line 101
    .local v7, "U2":[J
    iget-object v15, v8, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    .local v15, "S2":[J
    goto :goto_1

    .line 105
    .end local v7    # "U2":[J
    .end local v15    # "S2":[J
    :cond_5
    const/16 v16, 0x0

    iget-object v7, v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object v15, v11

    .local v15, "U2":[J
    invoke-static {v7, v14, v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 106
    iget-object v7, v8, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v18, v13

    .local v18, "S2":[J
    invoke-static {v7, v14, v13}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    move-object v7, v15

    move-object/from16 v15, v18

    .line 109
    .end local v18    # "S2":[J
    .restart local v7    # "U2":[J
    .local v15, "S2":[J
    :goto_1
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isOne()Z

    move-result v18

    if-eqz v18, :cond_6

    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    iget-object v0, v9, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->precompMultiplicand([J)[J

    move-result-object v0

    .line 111
    .local v0, "Z2Precomp":[J
    :goto_2
    if-nez v0, :cond_7

    .line 113
    iget-object v1, v3, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    .line 114
    .local v1, "U1":[J
    move-object/from16 v17, v1

    .end local v1    # "U1":[J
    .local v17, "U1":[J
    iget-object v1, v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v30, v17

    move-object/from16 v17, v3

    move-object/from16 v3, v30

    .local v1, "S1":[J
    goto :goto_3

    .line 118
    .end local v1    # "S1":[J
    .end local v17    # "U1":[J
    :cond_7
    iget-object v1, v3, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v17, v10

    .restart local v17    # "U1":[J
    invoke-static {v1, v0, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 119
    iget-object v1, v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v18, v12

    .local v18, "S1":[J
    invoke-static {v1, v0, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    move-object/from16 v1, v17

    move-object/from16 v17, v3

    move-object v3, v1

    move-object/from16 v1, v18

    .line 122
    .end local v18    # "S1":[J
    .restart local v1    # "S1":[J
    .local v3, "U1":[J
    .local v17, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    :goto_3
    move-object/from16 v18, v12

    .line 123
    .local v18, "A":[J
    move-object/from16 v19, v4

    move-object/from16 v4, v18

    .end local v18    # "A":[J
    .local v4, "A":[J
    .local v19, "X2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-static {v1, v15, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 125
    move-object/from16 v18, v13

    .line 126
    .local v18, "B":[J
    move-object/from16 v20, v1

    move-object/from16 v1, v18

    .end local v18    # "B":[J
    .local v1, "B":[J
    .local v20, "S1":[J
    invoke-static {v3, v7, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 128
    invoke-static {v1}, Lorg/bouncycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 130
    invoke-static {v4}, Lorg/bouncycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 132
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 135
    :cond_8
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 139
    :cond_9
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 142
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v18

    .line 143
    .local v18, "p":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/math/ec/ECPoint;->getXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v21

    move-object/from16 v22, v4

    .end local v4    # "A":[J
    .local v22, "A":[J
    move-object/from16 v4, v21

    check-cast v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 144
    .end local v17    # "X1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .local v4, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    move-object/from16 v21, v8

    .end local v8    # "L2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .local v21, "L2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/math/ec/ECPoint;->getYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 146
    .local v8, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v17, v21

    .line 147
    .local v17, "Y2":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v23, v9

    move-object/from16 v24, v11

    move-object/from16 v9, v17

    .end local v11    # "t2":[J
    .end local v17    # "Y2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v9, "Y2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v23, "Z2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .local v24, "t2":[J
    invoke-virtual {v8, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 149
    .local v11, "L":Lorg/bouncycastle/math/ec/ECFieldElement;
    nop

    .end local v9    # "Y2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v17    # "Y2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 150
    .local v9, "X3":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v25

    if-eqz v25, :cond_a

    .line 152
    move-object/from16 v25, v15

    .end local v15    # "S2":[J
    .local v25, "S2":[J
    new-instance v15, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;

    move-object/from16 v26, v14

    .end local v14    # "Z1Precomp":[J
    .local v26, "Z1Precomp":[J
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-direct {v15, v2, v9, v14}, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v15

    .line 155
    .end local v25    # "S2":[J
    .end local v26    # "Z1Precomp":[J
    .restart local v14    # "Z1Precomp":[J
    .restart local v15    # "S2":[J
    :cond_a
    move-object/from16 v26, v14

    move-object/from16 v25, v15

    .end local v14    # "Z1Precomp":[J
    .end local v15    # "S2":[J
    .restart local v25    # "S2":[J
    .restart local v26    # "Z1Precomp":[J
    invoke-virtual {v4, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v11, v14}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v14, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v14, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 156
    .local v14, "Y3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    check-cast v15, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 157
    .local v15, "L3":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    move-object/from16 v27, v4

    .end local v4    # "X1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .local v27, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    sget-object v4, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 158
    .end local v8    # "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "L":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "Y3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "Y2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "p":Lorg/bouncycastle/math/ec/ECPoint;
    .local v4, "Z3":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    move-object/from16 v28, v1

    move-object/from16 v18, v3

    move-object/from16 v3, v26

    move-object/from16 v17, v27

    move-object/from16 v27, v0

    goto/16 :goto_6

    .line 161
    .end local v21    # "L2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .end local v22    # "A":[J
    .end local v23    # "Z2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .end local v24    # "t2":[J
    .end local v25    # "S2":[J
    .end local v26    # "Z1Precomp":[J
    .end local v27    # "X1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .local v4, "A":[J
    .local v8, "L2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .local v9, "Z2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .local v11, "t2":[J
    .local v14, "Z1Precomp":[J
    .local v15, "S2":[J
    .local v17, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    :cond_b
    move-object/from16 v22, v4

    move-object/from16 v21, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v11

    move-object/from16 v26, v14

    move-object/from16 v25, v15

    .end local v4    # "A":[J
    .end local v8    # "L2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .end local v9    # "Z2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .end local v11    # "t2":[J
    .end local v14    # "Z1Precomp":[J
    .end local v15    # "S2":[J
    .restart local v21    # "L2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .restart local v22    # "A":[J
    .restart local v23    # "Z2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .restart local v24    # "t2":[J
    .restart local v25    # "S2":[J
    .restart local v26    # "Z1Precomp":[J
    invoke-static {v1, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 163
    invoke-static/range {v22 .. v22}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->precompMultiplicand([J)[J

    move-result-object v4

    .line 165
    .local v4, "APrecomp":[J
    move-object v8, v10

    .line 166
    .local v8, "AU1":[J
    move-object/from16 v9, v24

    .line 168
    .local v9, "AU2":[J
    invoke-static {v3, v4, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 169
    invoke-static {v7, v4, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 171
    new-instance v11, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v11, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 172
    .local v11, "X3":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    iget-object v14, v11, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v8, v9, v14}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 174
    invoke-virtual {v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 176
    new-instance v14, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-direct {v14, v2, v11, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v14

    .line 179
    :cond_c
    new-instance v14, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v14, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 180
    .local v14, "Z3":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    iget-object v15, v14, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v1, v4, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 182
    if-eqz v0, :cond_d

    .line 184
    iget-object v15, v14, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v18, v3

    .end local v3    # "U1":[J
    .local v18, "U1":[J
    iget-object v3, v14, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v15, v0, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    goto :goto_4

    .line 182
    .end local v18    # "U1":[J
    .restart local v3    # "U1":[J
    :cond_d
    move-object/from16 v18, v3

    .line 187
    .end local v3    # "U1":[J
    .restart local v18    # "U1":[J
    :goto_4
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v3

    .line 189
    .local v3, "tt":[J
    invoke-static {v9, v1, v13}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 190
    invoke-static {v13, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareAddToExt([J[J)V

    .line 192
    iget-object v15, v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v27, v0

    .end local v0    # "Z2Precomp":[J
    .local v27, "Z2Precomp":[J
    iget-object v0, v6, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v15, v0, v13}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 193
    iget-object v0, v14, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v13, v0, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyAddToExt([J[J[J)V

    .line 195
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v0, v13}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    move-object v15, v0

    .line 196
    .local v15, "L3":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    iget-object v0, v15, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v3, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    .line 198
    if-eqz v26, :cond_e

    .line 200
    iget-object v0, v14, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v28, v1

    .end local v1    # "B":[J
    .local v28, "B":[J
    iget-object v1, v14, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v29, v3

    move-object/from16 v3, v26

    .end local v26    # "Z1Precomp":[J
    .local v3, "Z1Precomp":[J
    .local v29, "tt":[J
    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    goto :goto_5

    .line 198
    .end local v28    # "B":[J
    .end local v29    # "tt":[J
    .restart local v1    # "B":[J
    .local v3, "tt":[J
    .restart local v26    # "Z1Precomp":[J
    :cond_e
    move-object/from16 v28, v1

    move-object/from16 v29, v3

    move-object/from16 v3, v26

    .line 204
    .end local v1    # "B":[J
    .end local v4    # "APrecomp":[J
    .end local v8    # "AU1":[J
    .end local v9    # "AU2":[J
    .end local v26    # "Z1Precomp":[J
    .local v3, "Z1Precomp":[J
    .restart local v28    # "B":[J
    :goto_5
    move-object v9, v11

    move-object v4, v14

    .end local v11    # "X3":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .end local v14    # "Z3":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .local v4, "Z3":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .local v9, "X3":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    :goto_6
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v4, v1, v16

    invoke-direct {v0, v2, v9, v15, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected detach()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 4

    .line 24
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected getCompressionYTilde()Z
    .locals 5

    .line 50
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->getRawXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 51
    .local v0, "X":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 53
    return v2

    .line 56
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->getRawYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 59
    .local v1, "Y":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v3

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v4

    if-eq v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public getYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 5

    .line 29
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v0, "X":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 31
    .local v1, "L":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->isInfinity()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 39
    .local v2, "Y":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v3, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 40
    .local v3, "Z":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v4

    if-nez v4, :cond_1

    .line 42
    invoke-virtual {v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 45
    :cond_1
    return-object v2

    .line 33
    .end local v2    # "Y":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v3    # "Z":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_2
    :goto_0
    return-object v1
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 8

    .line 318
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    return-object p0

    .line 323
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 324
    .local v0, "X":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    return-object p0

    .line 330
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v1, "L":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 331
    .local v2, "Z":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;

    iget-object v5, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v2, v7, v3

    invoke-direct {v4, v5, v0, v6, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v4
.end method

.method public twice()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 15

    .line 209
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    return-object p0

    .line 214
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 216
    .local v0, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 217
    .local v1, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 224
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v2, "L1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v3, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 226
    .local v3, "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v5

    .line 227
    .local v5, "Z1IsOne":Z
    if-eqz v5, :cond_2

    move-object v6, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 229
    .local v6, "Z1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    if-eqz v5, :cond_3

    .line 231
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .local v7, "T":Lorg/bouncycastle/math/ec/ECFieldElement;
    goto :goto_1

    .line 235
    .end local v7    # "T":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_3
    invoke-virtual {v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 238
    .restart local v7    # "T":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_1
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 240
    new-instance v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-direct {v4, v0, v7, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v4

    .line 243
    :cond_4
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 244
    .local v8, "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-eqz v5, :cond_5

    move-object v9, v7

    goto :goto_2

    :cond_5
    invoke-virtual {v7, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 246
    .local v9, "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_2
    invoke-virtual {v2, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 247
    .local v10, "t1":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-eqz v5, :cond_6

    move-object v11, v3

    goto :goto_3

    :cond_6
    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 248
    .local v11, "t2":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_3
    invoke-virtual {v10, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 250
    .local v12, "L3":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v13, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;

    const/4 v14, 0x1

    new-array v14, v14, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v9, v14, v4

    invoke-direct {v13, v0, v8, v12, v14}, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v13
.end method

.method public twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 23
    .param p1, "b"    # Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 255
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    return-object v1

    .line 259
    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 264
    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 266
    .local v2, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    iget-object v3, v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 267
    .local v3, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 270
    return-object v1

    .line 274
    :cond_2
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .local v4, "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 275
    .local v6, "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v7

    if-nez v7, :cond_3

    move-object/from16 v18, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v6

    goto/16 :goto_0

    .line 280
    :cond_3
    iget-object v7, v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v7, "L1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v8, v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v8, v8, v5

    .line 281
    .local v8, "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 283
    .local v9, "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 284
    .local v10, "X1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 285
    .local v11, "L1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 286
    .local v12, "Z1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 288
    .local v13, "L1Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11, v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 289
    .local v14, "T":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->addOne()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 290
    .local v15, "L2plus1":Lorg/bouncycastle/math/ec/ECFieldElement;
    const/16 v16, 0x0

    invoke-virtual {v15, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v14, v10, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 291
    .local v5, "A":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 292
    .local v0, "X2Z1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v14}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v18, v3

    .end local v3    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v18, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 294
    .local v3, "B":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 296
    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 298
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 301
    :cond_4
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 304
    :cond_5
    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 306
    move-object/from16 v17, v4

    .end local v4    # "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v17, "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;

    move-object/from16 v19, v6

    .end local v6    # "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v19, "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-direct {v4, v2, v5, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v4

    .line 309
    .end local v17    # "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v4    # "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v6    # "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_6
    move-object/from16 v17, v4

    move-object/from16 v19, v6

    .end local v4    # "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v17    # "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v19    # "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 310
    .local v4, "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 311
    .local v6, "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v20

    move-object/from16 v21, v0

    .end local v0    # "X2Z1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v21, "X2Z1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v14, v15, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 313
    .local v0, "L3":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v20, v3

    .end local v3    # "B":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v20, "B":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v3, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;

    move-object/from16 v22, v5

    .end local v5    # "A":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v22, "A":Lorg/bouncycastle/math/ec/ECFieldElement;
    const/4 v5, 0x1

    new-array v5, v5, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v6, v5, v16

    invoke-direct {v3, v2, v4, v0, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v3

    .line 275
    .end local v0    # "L3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "L1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "X1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "L1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "Z1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "L1Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "T":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "L2plus1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "B":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "X2Z1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "A":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v3, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v4, "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v6, "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_7
    move-object/from16 v18, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v6

    .line 277
    .end local v3    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v17    # "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v18    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v19    # "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571K1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
