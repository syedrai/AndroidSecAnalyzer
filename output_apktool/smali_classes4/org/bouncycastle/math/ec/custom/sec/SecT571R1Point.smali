.class public Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;
.super Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
.source "SecT571R1Point.java"


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

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 16
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

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 21
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

    .line 65
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    return-object v1

    .line 69
    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    return-object v0

    .line 74
    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 76
    .local v2, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    iget-object v3, v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 77
    .local v3, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 79
    .local v4, "X2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 81
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 83
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5

    .line 86
    :cond_2
    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5

    .line 89
    :cond_3
    iget-object v5, v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .local v5, "L1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    iget-object v6, v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 90
    .local v6, "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .local v8, "L2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual {v1, v7}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 92
    .local v9, "Z2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v10

    .line 93
    .local v10, "t1":[J
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v11

    .line 94
    .local v11, "t2":[J
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v12

    .line 95
    .local v12, "t3":[J
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v13

    .line 97
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

    .line 99
    .local v14, "Z1Precomp":[J
    :goto_0
    if-nez v14, :cond_5

    .line 101
    const/16 v16, 0x0

    iget-object v7, v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    .line 102
    .local v7, "U2":[J
    iget-object v15, v8, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    .local v15, "S2":[J
    goto :goto_1

    .line 106
    .end local v7    # "U2":[J
    .end local v15    # "S2":[J
    :cond_5
    const/16 v16, 0x0

    iget-object v7, v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object v15, v11

    .local v15, "U2":[J
    invoke-static {v7, v14, v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 107
    iget-object v7, v8, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v18, v13

    .local v18, "S2":[J
    invoke-static {v7, v14, v13}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    move-object v7, v15

    move-object/from16 v15, v18

    .line 110
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

    .line 112
    .local v0, "Z2Precomp":[J
    :goto_2
    if-nez v0, :cond_7

    .line 114
    iget-object v1, v3, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    .line 115
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

    .line 119
    .end local v1    # "S1":[J
    .end local v17    # "U1":[J
    :cond_7
    iget-object v1, v3, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v17, v10

    .restart local v17    # "U1":[J
    invoke-static {v1, v0, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 120
    iget-object v1, v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v18, v12

    .local v18, "S1":[J
    invoke-static {v1, v0, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    move-object/from16 v1, v17

    move-object/from16 v17, v3

    move-object v3, v1

    move-object/from16 v1, v18

    .line 123
    .end local v18    # "S1":[J
    .restart local v1    # "S1":[J
    .local v3, "U1":[J
    .local v17, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    :goto_3
    move-object/from16 v18, v12

    .line 124
    .local v18, "A":[J
    move-object/from16 v19, v4

    move-object/from16 v4, v18

    .end local v18    # "A":[J
    .local v4, "A":[J
    .local v19, "X2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-static {v1, v15, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 126
    move-object/from16 v18, v13

    .line 127
    .local v18, "B":[J
    move-object/from16 v20, v1

    move-object/from16 v1, v18

    .end local v18    # "B":[J
    .local v1, "B":[J
    .local v20, "S1":[J
    invoke-static {v3, v7, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 129
    invoke-static {v1}, Lorg/bouncycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 131
    invoke-static {v4}, Lorg/bouncycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 133
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 136
    :cond_8
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 140
    :cond_9
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 143
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v18

    .line 144
    .local v18, "p":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/math/ec/ECPoint;->getXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v21

    move-object/from16 v22, v4

    .end local v4    # "A":[J
    .local v22, "A":[J
    move-object/from16 v4, v21

    check-cast v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 145
    .end local v17    # "X1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .local v4, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    move-object/from16 v21, v8

    .end local v8    # "L2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .local v21, "L2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/math/ec/ECPoint;->getYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 147
    .local v8, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v17, v21

    .line 148
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

    .line 150
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

    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->addOne()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 151
    .local v9, "X3":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v25

    if-eqz v25, :cond_a

    .line 153
    move-object/from16 v25, v15

    .end local v15    # "S2":[J
    .local v25, "S2":[J
    new-instance v15, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;

    move-object/from16 v26, v14

    .end local v14    # "Z1Precomp":[J
    .local v26, "Z1Precomp":[J
    sget-object v14, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve;->SecT571R1_B_SQRT:Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v15, v2, v9, v14}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v15

    .line 156
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

    .line 157
    .local v14, "Y3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    check-cast v15, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 158
    .local v15, "L3":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    move-object/from16 v27, v4

    .end local v4    # "X1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .local v27, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    sget-object v4, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 159
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

    .line 162
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

    .line 164
    invoke-static/range {v22 .. v22}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->precompMultiplicand([J)[J

    move-result-object v4

    .line 166
    .local v4, "APrecomp":[J
    move-object v8, v10

    .line 167
    .local v8, "AU1":[J
    move-object/from16 v9, v24

    .line 169
    .local v9, "AU2":[J
    invoke-static {v3, v4, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 170
    invoke-static {v7, v4, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 172
    new-instance v11, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v11, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 173
    .local v11, "X3":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    iget-object v14, v11, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v8, v9, v14}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 175
    invoke-virtual {v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 177
    new-instance v14, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;

    sget-object v15, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve;->SecT571R1_B_SQRT:Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v14, v2, v11, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v14

    .line 180
    :cond_c
    new-instance v14, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v14, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 181
    .local v14, "Z3":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    iget-object v15, v14, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v1, v4, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 183
    if-eqz v0, :cond_d

    .line 185
    iget-object v15, v14, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v18, v3

    .end local v3    # "U1":[J
    .local v18, "U1":[J
    iget-object v3, v14, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v15, v0, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    goto :goto_4

    .line 183
    .end local v18    # "U1":[J
    .restart local v3    # "U1":[J
    :cond_d
    move-object/from16 v18, v3

    .line 188
    .end local v3    # "U1":[J
    .restart local v18    # "U1":[J
    :goto_4
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v3

    .line 190
    .local v3, "tt":[J
    invoke-static {v9, v1, v13}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 191
    invoke-static {v13, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareAddToExt([J[J)V

    .line 193
    iget-object v15, v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v27, v0

    .end local v0    # "Z2Precomp":[J
    .local v27, "Z2Precomp":[J
    iget-object v0, v6, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v15, v0, v13}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 194
    iget-object v0, v14, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v13, v0, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyAddToExt([J[J[J)V

    .line 196
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v0, v13}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    move-object v15, v0

    .line 197
    .local v15, "L3":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    iget-object v0, v15, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v3, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    .line 199
    if-eqz v26, :cond_e

    .line 201
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

    .line 199
    .end local v28    # "B":[J
    .end local v29    # "tt":[J
    .restart local v1    # "B":[J
    .local v3, "tt":[J
    .restart local v26    # "Z1Precomp":[J
    :cond_e
    move-object/from16 v28, v1

    move-object/from16 v29, v3

    move-object/from16 v3, v26

    .line 205
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
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v4, v1, v16

    invoke-direct {v0, v2, v9, v15, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected detach()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 4

    .line 25
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected getCompressionYTilde()Z
    .locals 5

    .line 51
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->getRawXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 52
    .local v0, "X":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 54
    return v2

    .line 57
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->getRawYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 60
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

    .line 30
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v0, "X":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 32
    .local v1, "L":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->isInfinity()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 40
    .local v2, "Y":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v3, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 41
    .local v3, "Z":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v4

    if-nez v4, :cond_1

    .line 43
    invoke-virtual {v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 46
    :cond_1
    return-object v2

    .line 34
    .end local v2    # "Y":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v3    # "Z":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_2
    :goto_0
    return-object v1
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 8

    .line 386
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    return-object p0

    .line 391
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 392
    .local v0, "X":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    return-object p0

    .line 398
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v1, "L":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 399
    .local v2, "Z":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;

    iget-object v5, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v2, v7, v3

    invoke-direct {v4, v5, v0, v6, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v4
.end method

.method public twice()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 18

    .line 210
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    return-object v0

    .line 215
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 217
    .local v1, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    iget-object v2, v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 218
    .local v2, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 224
    :cond_1
    iget-object v3, v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .local v3, "L1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    iget-object v4, v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 226
    .local v4, "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v6

    .line 227
    .local v6, "t1":[J
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v7

    .line 229
    .local v7, "t2":[J
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isOne()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    iget-object v8, v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v8}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->precompMultiplicand([J)[J

    move-result-object v8

    .line 231
    .local v8, "Z1Precomp":[J
    :goto_0
    if-nez v8, :cond_3

    .line 233
    iget-object v9, v3, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    .line 234
    .local v9, "L1Z1":[J
    iget-object v10, v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    .local v10, "Z1Sq":[J
    goto :goto_1

    .line 238
    .end local v9    # "L1Z1":[J
    .end local v10    # "Z1Sq":[J
    :cond_3
    iget-object v9, v3, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object v10, v6

    .local v10, "L1Z1":[J
    invoke-static {v9, v8, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 239
    iget-object v9, v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object v11, v7

    .local v11, "Z1Sq":[J
    invoke-static {v9, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    move-object v9, v10

    move-object v10, v11

    .line 242
    .end local v11    # "Z1Sq":[J
    .restart local v9    # "L1Z1":[J
    .local v10, "Z1Sq":[J
    :goto_1
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v11

    .line 243
    .local v11, "T":[J
    iget-object v12, v3, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v12, v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 244
    invoke-static {v9, v10, v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addBothTo([J[J[J)V

    .line 246
    invoke-static {v11}, Lorg/bouncycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 248
    new-instance v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;

    new-instance v12, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v12, v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    sget-object v13, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve;->SecT571R1_B_SQRT:Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v5, v1, v12, v13}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v5

    .line 251
    :cond_4
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v12

    .line 252
    .local v12, "tt":[J
    invoke-static {v11, v9, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyAddToExt([J[J[J)V

    .line 254
    new-instance v13, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v13, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 255
    .local v13, "X3":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    iget-object v14, v13, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v11, v14}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 257
    new-instance v14, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v14, v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 258
    .local v14, "Z3":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    if-eqz v8, :cond_5

    .line 260
    iget-object v15, v14, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    const/16 v16, 0x0

    iget-object v5, v14, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v15, v10, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    goto :goto_2

    .line 258
    :cond_5
    const/16 v16, 0x0

    .line 264
    :goto_2
    if-nez v8, :cond_6

    .line 266
    iget-object v5, v2, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    .local v5, "X1Z1":[J
    goto :goto_3

    .line 270
    .end local v5    # "X1Z1":[J
    :cond_6
    iget-object v5, v2, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object v15, v7

    .local v15, "X1Z1":[J
    invoke-static {v5, v8, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    move-object v5, v15

    .line 273
    .end local v15    # "X1Z1":[J
    .restart local v5    # "X1Z1":[J
    :goto_3
    invoke-static {v5, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareAddToExt([J[J)V

    .line 274
    invoke-static {v12, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    .line 275
    iget-object v15, v13, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    iget-object v0, v14, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v15, v0, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addBothTo([J[J[J)V

    .line 276
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v0, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 278
    .local v0, "L3":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    new-instance v15, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;

    move-object/from16 v17, v2

    .end local v2    # "X1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .local v17, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    const/4 v2, 0x1

    new-array v2, v2, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v14, v2, v16

    invoke-direct {v15, v1, v13, v0, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v15
.end method

.method public twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 28
    .param p1, "b"    # Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 283
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    return-object v1

    .line 287
    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 292
    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 294
    .local v2, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    iget-object v3, v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 295
    .local v3, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 298
    return-object v1

    .line 301
    :cond_2
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .local v4, "X2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 302
    .local v6, "Z2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isOne()Z

    move-result v7

    if-nez v7, :cond_3

    move-object/from16 v17, v3

    move-object/from16 v23, v4

    move-object/from16 v18, v6

    goto/16 :goto_0

    .line 307
    :cond_3
    iget-object v7, v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v7, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .local v7, "L1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    iget-object v8, v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v8, v8, v5

    check-cast v8, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 308
    .local v8, "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 310
    .local v9, "L2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v10

    .line 311
    .local v10, "t1":[J
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v11

    .line 312
    .local v11, "t2":[J
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v12

    .line 313
    .local v12, "t3":[J
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v13

    .line 315
    .local v13, "t4":[J
    move-object v14, v10

    .line 316
    .local v14, "X1Sq":[J
    iget-object v15, v3, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v15, v14}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 318
    move-object v15, v11

    .line 319
    .local v15, "L1Sq":[J
    const/16 v16, 0x0

    iget-object v5, v7, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v5, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 321
    move-object v5, v12

    .line 322
    .local v5, "Z1Sq":[J
    iget-object v0, v8, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v0, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 324
    move-object v0, v13

    .line 325
    .local v0, "L1Z1":[J
    move-object/from16 v17, v3

    .end local v3    # "X1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .local v17, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    iget-object v3, v7, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v18, v6

    .end local v6    # "Z2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .local v18, "Z2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    iget-object v6, v8, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v3, v6, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 327
    move-object v3, v0

    .line 328
    .local v3, "T":[J
    invoke-static {v5, v15, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addBothTo([J[J[J)V

    .line 330
    invoke-static {v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->precompMultiplicand([J)[J

    move-result-object v6

    .line 332
    .local v6, "Z1SqPrecomp":[J
    move-object/from16 v19, v12

    .line 333
    .local v19, "A":[J
    move-object/from16 v20, v0

    .end local v0    # "L1Z1":[J
    .local v20, "L1Z1":[J
    iget-object v0, v9, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v21, v5

    move-object/from16 v5, v19

    .end local v19    # "A":[J
    .local v5, "A":[J
    .local v21, "Z1Sq":[J
    invoke-static {v0, v6, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 334
    invoke-static {v5, v15, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 336
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    .line 337
    .local v0, "tt":[J
    invoke-static {v5, v3, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyAddToExt([J[J[J)V

    .line 338
    invoke-static {v14, v6, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecompAddToExt([J[J[J)V

    .line 339
    invoke-static {v0, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    .line 341
    move-object/from16 v19, v10

    .line 342
    .local v19, "X2Z1Sq":[J
    move-object/from16 v22, v7

    .end local v7    # "L1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .local v22, "L1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    iget-object v7, v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v23, v4

    move-object/from16 v4, v19

    .end local v19    # "X2Z1Sq":[J
    .local v4, "X2Z1Sq":[J
    .local v23, "X2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-static {v7, v6, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 344
    move-object v7, v11

    .line 345
    .local v7, "B":[J
    invoke-static {v4, v3, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 346
    invoke-static {v7, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 348
    invoke-static {v7}, Lorg/bouncycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 350
    invoke-static {v5}, Lorg/bouncycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 352
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 355
    :cond_4
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 358
    :cond_5
    invoke-static {v5}, Lorg/bouncycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 360
    move-object/from16 v19, v8

    .end local v8    # "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .local v19, "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    new-instance v8, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;

    move-object/from16 v24, v12

    .end local v12    # "t3":[J
    .local v24, "t3":[J
    new-instance v12, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v12, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    move-object/from16 v25, v14

    .end local v14    # "X1Sq":[J
    .local v25, "X1Sq":[J
    sget-object v14, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve;->SecT571R1_B_SQRT:Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v8, v2, v12, v14}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v8

    .line 363
    .end local v19    # "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .end local v24    # "t3":[J
    .end local v25    # "X1Sq":[J
    .restart local v8    # "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .restart local v12    # "t3":[J
    .restart local v14    # "X1Sq":[J
    :cond_6
    move-object/from16 v19, v8

    move-object/from16 v24, v12

    move-object/from16 v25, v14

    .end local v8    # "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .end local v12    # "t3":[J
    .end local v14    # "X1Sq":[J
    .restart local v19    # "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .restart local v24    # "t3":[J
    .restart local v25    # "X1Sq":[J
    new-instance v8, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v8}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>()V

    .line 364
    .local v8, "X3":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    iget-object v12, v8, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v5, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 365
    iget-object v12, v8, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    iget-object v14, v8, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v12, v4, v14}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 367
    new-instance v12, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v12, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 368
    .local v12, "Z3":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    iget-object v14, v12, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v5, v7, v14}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 369
    iget-object v14, v12, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v26, v4

    .end local v4    # "X2Z1Sq":[J
    .local v26, "X2Z1Sq":[J
    iget-object v4, v12, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v14, v6, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 371
    new-instance v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v4, v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 372
    .local v4, "L3":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    iget-object v14, v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v5, v7, v14}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 373
    iget-object v14, v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v27, v5

    .end local v5    # "A":[J
    .local v27, "A":[J
    iget-object v5, v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v14, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 375
    const/16 v5, 0x12

    invoke-static {v5, v0}, Lorg/bouncycastle/math/raw/Nat;->zero64(I[J)V

    .line 376
    iget-object v5, v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v5, v3, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyAddToExt([J[J[J)V

    .line 377
    iget-object v5, v9, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v5, v13}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addOne([J[J)V

    .line 378
    iget-object v5, v12, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v13, v5, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyAddToExt([J[J[J)V

    .line 379
    iget-object v5, v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v0, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    .line 381
    new-instance v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;

    const/4 v14, 0x1

    new-array v14, v14, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v12, v14, v16

    invoke-direct {v5, v2, v8, v4, v14}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v5

    .line 302
    .end local v0    # "tt":[J
    .end local v7    # "B":[J
    .end local v8    # "X3":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .end local v9    # "L2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .end local v10    # "t1":[J
    .end local v11    # "t2":[J
    .end local v12    # "Z3":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .end local v13    # "t4":[J
    .end local v15    # "L1Sq":[J
    .end local v17    # "X1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .end local v18    # "Z2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .end local v19    # "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .end local v20    # "L1Z1":[J
    .end local v21    # "Z1Sq":[J
    .end local v22    # "L1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .end local v23    # "X2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .end local v24    # "t3":[J
    .end local v25    # "X1Sq":[J
    .end local v26    # "X2Z1Sq":[J
    .end local v27    # "A":[J
    .local v3, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .local v4, "X2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .local v6, "Z2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    :cond_7
    move-object/from16 v17, v3

    move-object/from16 v23, v4

    move-object/from16 v18, v6

    .line 304
    .end local v3    # "X1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .end local v4    # "X2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .end local v6    # "Z2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .restart local v17    # "X1":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .restart local v18    # "Z2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    .restart local v23    # "X2":Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
