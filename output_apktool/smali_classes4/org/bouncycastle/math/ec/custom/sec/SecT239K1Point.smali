.class public Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;
.super Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
.source "SecT239K1Point.java"


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

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 14
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

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 19
    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
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

    .line 63
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    return-object v1

    .line 67
    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    return-object v0

    .line 72
    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 74
    .local v2, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    iget-object v3, v0, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 75
    .local v3, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 77
    .local v4, "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 79
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 81
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5

    .line 84
    :cond_2
    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5

    .line 87
    :cond_3
    iget-object v5, v0, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v5, "L1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v6, v0, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    .line 88
    .local v6, "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .local v8, "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v7}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 90
    .local v9, "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v10

    .line 91
    .local v10, "Z1IsOne":Z
    move-object v11, v4

    .local v11, "U2":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object v12, v8

    .line 92
    .local v12, "S2":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-nez v10, :cond_4

    .line 94
    invoke-virtual {v11, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 95
    invoke-virtual {v12, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 98
    :cond_4
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v13

    .line 99
    .local v13, "Z2IsOne":Z
    move-object v14, v3

    .local v14, "U1":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object v15, v5

    .line 100
    .local v15, "S1":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-nez v13, :cond_5

    .line 102
    invoke-virtual {v14, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 103
    invoke-virtual {v15, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 106
    :cond_5
    const/16 v16, 0x0

    invoke-virtual {v15, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 107
    .local v7, "A":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 109
    .local v17, "B":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 111
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 113
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 116
    :cond_6
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 120
    :cond_7
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 123
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v18

    .line 124
    .local v18, "p":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/math/ec/ECPoint;->getXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 125
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/math/ec/ECPoint;->getYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 127
    .local v0, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v19, v8

    .line 128
    .local v19, "Y2":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v1, v19

    move-object/from16 v19, v4

    .end local v4    # "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v1, "Y2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v19, "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 130
    .local v4, "L":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v20, v1

    .end local v1    # "Y2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v20, "Y2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 131
    .local v1, "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 133
    move-object/from16 v21, v8

    .end local v8    # "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v21, "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v8, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;

    move/from16 v22, v10

    .end local v10    # "Z1IsOne":Z
    .local v22, "Z1IsOne":Z
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-direct {v8, v2, v1, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v8

    .line 136
    .end local v21    # "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "Z1IsOne":Z
    .restart local v8    # "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v10    # "Z1IsOne":Z
    :cond_8
    move-object/from16 v21, v8

    move/from16 v22, v10

    .end local v8    # "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "Z1IsOne":Z
    .restart local v21    # "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v22    # "Z1IsOne":Z
    invoke-virtual {v3, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 137
    .local v8, "Y3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 138
    .local v10, "L3":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v23, v0

    .end local v0    # "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v23, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 139
    .end local v4    # "L":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "Y3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "p":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v20    # "Y2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v0, "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    goto :goto_0

    .line 142
    .end local v0    # "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v1    # "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "Z1IsOne":Z
    .local v4, "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v8, "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v10, "Z1IsOne":Z
    :cond_9
    move-object/from16 v19, v4

    move-object/from16 v21, v8

    move/from16 v22, v10

    .end local v4    # "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "Z1IsOne":Z
    .restart local v19    # "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v21    # "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v22    # "Z1IsOne":Z
    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 144
    .end local v17    # "B":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v0, "B":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v14}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 145
    .local v1, "AU1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 147
    .local v4, "AU2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 148
    .local v8, "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 150
    new-instance v10, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;

    move-object/from16 v17, v1

    .end local v1    # "AU1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v17, "AU1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {v10, v2, v8, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v10

    .line 153
    .end local v17    # "AU1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v1    # "AU1":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_a
    move-object/from16 v17, v1

    .end local v1    # "AU1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v17    # "AU1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 154
    .local v1, "ABZ2":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-nez v13, :cond_b

    .line 156
    invoke-virtual {v1, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 159
    :cond_b
    invoke-virtual {v4, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    move-object/from16 v18, v0

    .end local v0    # "B":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v18, "B":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v10, v1, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 161
    .local v10, "L3":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object v0, v1

    .line 162
    .local v0, "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-nez v22, :cond_c

    .line 164
    invoke-virtual {v0, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object v1, v8

    move-object/from16 v17, v18

    goto :goto_0

    .line 162
    :cond_c
    move-object v1, v8

    move-object/from16 v17, v18

    .line 168
    .end local v4    # "AU2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "B":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v1, "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v17, "B":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    new-instance v4, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;

    const/4 v8, 0x1

    new-array v8, v8, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v0, v8, v16

    invoke-direct {v4, v2, v1, v10, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v4
.end method

.method protected detach()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 4

    .line 23
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected getCompressionYTilde()Z
    .locals 5

    .line 49
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->getRawXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 50
    .local v0, "X":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 52
    return v2

    .line 55
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->getRawYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 58
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

    .line 28
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v0, "X":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 30
    .local v1, "L":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->isInfinity()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 38
    .local v2, "Y":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v3, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 39
    .local v3, "Z":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v4

    if-nez v4, :cond_1

    .line 41
    invoke-virtual {v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 44
    :cond_1
    return-object v2

    .line 32
    .end local v2    # "Y":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v3    # "Z":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_2
    :goto_0
    return-object v1
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 8

    .line 282
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    return-object p0

    .line 287
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 288
    .local v0, "X":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    return-object p0

    .line 294
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v1, "L":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 295
    .local v2, "Z":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v4, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;

    iget-object v5, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v2, v7, v3

    invoke-direct {v4, v5, v0, v6, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v4
.end method

.method public twice()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 15

    .line 173
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    return-object p0

    .line 178
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 180
    .local v0, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 181
    .local v1, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 188
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v2, "L1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v3, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 190
    .local v3, "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v5

    .line 191
    .local v5, "Z1IsOne":Z
    if-eqz v5, :cond_2

    move-object v6, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 193
    .local v6, "Z1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    if-eqz v5, :cond_3

    .line 195
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .local v7, "T":Lorg/bouncycastle/math/ec/ECFieldElement;
    goto :goto_1

    .line 199
    .end local v7    # "T":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_3
    invoke-virtual {v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 202
    .restart local v7    # "T":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_1
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 204
    new-instance v4, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-direct {v4, v0, v7, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v4

    .line 207
    :cond_4
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 208
    .local v8, "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-eqz v5, :cond_5

    move-object v9, v7

    goto :goto_2

    :cond_5
    invoke-virtual {v7, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 210
    .local v9, "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_2
    invoke-virtual {v2, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 211
    .local v10, "t1":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-eqz v5, :cond_6

    move-object v11, v3

    goto :goto_3

    :cond_6
    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 212
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

    .line 214
    .local v12, "L3":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v13, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;

    const/4 v14, 0x1

    new-array v14, v14, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v9, v14, v4

    invoke-direct {v13, v0, v8, v12, v14}, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

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

    .line 219
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    return-object v1

    .line 223
    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 228
    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 230
    .local v2, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    iget-object v3, v0, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 231
    .local v3, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 234
    return-object v1

    .line 238
    :cond_2
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .local v4, "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 239
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

    .line 244
    :cond_3
    iget-object v7, v0, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v7, "L1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v8, v0, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v8, v8, v5

    .line 245
    .local v8, "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 247
    .local v9, "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 248
    .local v10, "X1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 249
    .local v11, "L1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 250
    .local v12, "Z1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 252
    .local v13, "L1Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11, v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 253
    .local v14, "T":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->addOne()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 254
    .local v15, "L2plus1":Lorg/bouncycastle/math/ec/ECFieldElement;
    const/16 v16, 0x0

    invoke-virtual {v15, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v14, v10, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 255
    .local v5, "A":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 256
    .local v0, "X2Z1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v14}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v18, v3

    .end local v3    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v18, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 258
    .local v3, "B":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 260
    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 262
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 265
    :cond_4
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 268
    :cond_5
    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 270
    move-object/from16 v17, v4

    .end local v4    # "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v17, "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v4, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;

    move-object/from16 v19, v6

    .end local v6    # "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v19, "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-direct {v4, v2, v5, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v4

    .line 273
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

    .line 274
    .local v4, "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 275
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

    .line 277
    .local v0, "L3":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v20, v3

    .end local v3    # "B":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v20, "B":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v3, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;

    move-object/from16 v22, v5

    .end local v5    # "A":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v22, "A":Lorg/bouncycastle/math/ec/ECFieldElement;
    const/4 v5, 0x1

    new-array v5, v5, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v6, v5, v16

    invoke-direct {v3, v2, v4, v0, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v3

    .line 239
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

    .line 241
    .end local v3    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v17    # "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v18    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v19    # "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239K1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
