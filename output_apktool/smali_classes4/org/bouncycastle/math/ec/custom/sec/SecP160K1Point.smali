.class public Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;
.super Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP160K1Point.java"


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
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

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
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 19
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

    .line 29
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    return-object v1

    .line 33
    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    return-object v0

    .line 37
    :cond_1
    if-ne v0, v1, :cond_2

    .line 39
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 42
    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 44
    .local v2, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    iget-object v3, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    .local v3, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;
    iget-object v4, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v4, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    .line 45
    .local v4, "Y1":Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    .local v5, "X2":Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    .line 47
    .local v6, "Y2":Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;
    iget-object v7, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    check-cast v7, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    .line 48
    .local v7, "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;
    invoke-virtual {v1, v8}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    .line 51
    .local v9, "Z2":Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->createExt()[I

    move-result-object v10

    .line 52
    .local v10, "tt1":[I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v11

    .line 53
    .local v11, "t2":[I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v12

    .line 54
    .local v12, "t3":[I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v13

    .line 56
    .local v13, "t4":[I
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->isOne()Z

    move-result v14

    .line 58
    .local v14, "Z1IsOne":Z
    if-eqz v14, :cond_3

    .line 60
    iget-object v15, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    .line 61
    .local v15, "U2":[I
    const/16 v16, 0x0

    iget-object v8, v6, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    .local v8, "S2":[I
    goto :goto_0

    .line 65
    .end local v8    # "S2":[I
    .end local v15    # "U2":[I
    :cond_3
    const/16 v16, 0x0

    move-object v8, v12

    .line 66
    .restart local v8    # "S2":[I
    iget-object v15, v7, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v15, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->square([I[I)V

    .line 68
    move-object v15, v11

    .line 69
    .restart local v15    # "U2":[I
    iget-object v0, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v8, v0, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 71
    iget-object v0, v7, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v8, v0, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 72
    iget-object v0, v6, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v8, v0, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 75
    :goto_0
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->isOne()Z

    move-result v0

    .line 77
    .local v0, "Z2IsOne":Z
    if-eqz v0, :cond_4

    .line 79
    move/from16 v17, v0

    .end local v0    # "Z2IsOne":Z
    .local v17, "Z2IsOne":Z
    iget-object v0, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    .line 80
    .local v0, "U1":[I
    move-object/from16 v18, v0

    .end local v0    # "U1":[I
    .local v18, "U1":[I
    iget-object v0, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    move-object v1, v0

    move-object/from16 v0, v18

    move-object/from16 v18, v5

    .local v0, "S1":[I
    goto :goto_1

    .line 84
    .end local v17    # "Z2IsOne":Z
    .end local v18    # "U1":[I
    .local v0, "Z2IsOne":Z
    :cond_4
    move/from16 v17, v0

    .end local v0    # "Z2IsOne":Z
    .restart local v17    # "Z2IsOne":Z
    move-object v0, v13

    .line 85
    .local v0, "S1":[I
    iget-object v1, v9, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->square([I[I)V

    .line 87
    move-object v1, v10

    .line 88
    .local v1, "U1":[I
    move-object/from16 v18, v5

    .end local v5    # "X2":Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;
    .local v18, "X2":Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;
    iget-object v5, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v0, v5, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 90
    iget-object v5, v9, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v0, v5, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 91
    iget-object v5, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v0, v5, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    move-object/from16 v30, v1

    move-object v1, v0

    move-object/from16 v0, v30

    .line 94
    .local v0, "U1":[I
    .local v1, "S1":[I
    :goto_1
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v5

    .line 95
    .local v5, "H":[I
    invoke-static {v0, v15, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->subtract([I[I[I)V

    .line 97
    move-object/from16 v19, v11

    .line 98
    .local v19, "R":[I
    move-object/from16 v20, v3

    move-object/from16 v3, v19

    .end local v19    # "R":[I
    .local v3, "R":[I
    .local v20, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;
    invoke-static {v1, v8, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->subtract([I[I[I)V

    .line 101
    invoke-static {v5}, Lorg/bouncycastle/math/raw/Nat160;->isZero([I)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 103
    invoke-static {v3}, Lorg/bouncycastle/math/raw/Nat160;->isZero([I)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 106
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 110
    :cond_5
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 113
    :cond_6
    move-object/from16 v19, v12

    .line 114
    .local v19, "HSquared":[I
    move-object/from16 v21, v4

    move-object/from16 v4, v19

    .end local v19    # "HSquared":[I
    .local v4, "HSquared":[I
    .local v21, "Y1":Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;
    invoke-static {v5, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->square([I[I)V

    .line 116
    move-object/from16 v19, v6

    .end local v6    # "Y2":Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;
    .local v19, "Y2":Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v6

    .line 117
    .local v6, "G":[I
    invoke-static {v4, v5, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 119
    move-object/from16 v22, v12

    .line 120
    .local v22, "V":[I
    move-object/from16 v23, v8

    move-object/from16 v8, v22

    .end local v22    # "V":[I
    .local v8, "V":[I
    .local v23, "S2":[I
    invoke-static {v4, v0, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 122
    invoke-static {v6, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->negate([I[I)V

    .line 123
    invoke-static {v1, v6, v10}, Lorg/bouncycastle/math/raw/Nat160;->mul([I[I[I)V

    .line 125
    move-object/from16 v22, v0

    .end local v0    # "U1":[I
    .local v22, "U1":[I
    invoke-static {v8, v8, v6}, Lorg/bouncycastle/math/raw/Nat160;->addBothTo([I[I[I)I

    move-result v0

    .line 126
    .local v0, "c":I
    invoke-static {v0, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->reduce32(I[I)V

    .line 128
    move/from16 v24, v0

    .end local v0    # "c":I
    .local v24, "c":I
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    invoke-direct {v0, v13}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;-><init>([I)V

    .line 129
    .local v0, "X3":Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;
    move-object/from16 v25, v1

    .end local v1    # "S1":[I
    .local v25, "S1":[I
    iget-object v1, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->square([I[I)V

    .line 130
    iget-object v1, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    move-object/from16 v26, v4

    .end local v4    # "HSquared":[I
    .local v26, "HSquared":[I
    iget-object v4, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v1, v6, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->subtract([I[I[I)V

    .line 132
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    invoke-direct {v1, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;-><init>([I)V

    .line 133
    .local v1, "Y3":Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;
    iget-object v4, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    move-object/from16 v27, v6

    .end local v6    # "G":[I
    .local v27, "G":[I
    iget-object v6, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v8, v4, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->subtract([I[I[I)V

    .line 134
    iget-object v4, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v4, v3, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiplyAddToExt([I[I[I)V

    .line 135
    iget-object v4, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v10, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->reduce([I[I)V

    .line 137
    new-instance v4, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    invoke-direct {v4, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;-><init>([I)V

    .line 138
    .local v4, "Z3":Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;
    if-nez v14, :cond_7

    .line 140
    iget-object v6, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    move-object/from16 v28, v3

    .end local v3    # "R":[I
    .local v28, "R":[I
    iget-object v3, v7, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    move-object/from16 v29, v5

    .end local v5    # "H":[I
    .local v29, "H":[I
    iget-object v5, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v6, v3, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    goto :goto_2

    .line 138
    .end local v28    # "R":[I
    .end local v29    # "H":[I
    .restart local v3    # "R":[I
    .restart local v5    # "H":[I
    :cond_7
    move-object/from16 v28, v3

    move-object/from16 v29, v5

    .line 142
    .end local v3    # "R":[I
    .end local v5    # "H":[I
    .restart local v28    # "R":[I
    .restart local v29    # "H":[I
    :goto_2
    if-nez v17, :cond_8

    .line 144
    iget-object v3, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    iget-object v5, v9, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    iget-object v6, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v3, v5, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 147
    :cond_8
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v4, v3, v16

    .line 149
    .local v3, "zs":[Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v5, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;

    invoke-direct {v5, v2, v0, v1, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v5
.end method

.method protected detach()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 4

    .line 23
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 5

    .line 249
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    return-object p0

    .line 254
    :cond_0
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->negate()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public threeTimes()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 238
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 240
    :cond_1
    :goto_0
    return-object p0
.end method

.method public twice()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 17

    .line 155
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    return-object v0

    .line 160
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 162
    .local v1, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    iget-object v2, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    .line 163
    .local v2, "Y1":Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 168
    :cond_1
    iget-object v3, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    .local v3, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;
    iget-object v4, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    .line 172
    .local v4, "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v6

    .line 173
    .local v6, "Y1Squared":[I
    iget-object v7, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v7, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->square([I[I)V

    .line 175
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v7

    .line 176
    .local v7, "T":[I
    invoke-static {v6, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->square([I[I)V

    .line 178
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v8

    .line 179
    .local v8, "M":[I
    iget-object v9, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v9, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->square([I[I)V

    .line 180
    invoke-static {v8, v8, v8}, Lorg/bouncycastle/math/raw/Nat160;->addBothTo([I[I[I)I

    move-result v9

    .line 181
    .local v9, "c":I
    invoke-static {v9, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->reduce32(I[I)V

    .line 183
    move-object v10, v6

    .line 184
    .local v10, "S":[I
    iget-object v11, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v6, v11, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 185
    const/4 v11, 0x2

    const/4 v12, 0x5

    invoke-static {v12, v10, v11, v5}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v9

    .line 186
    invoke-static {v9, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->reduce32(I[I)V

    .line 188
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v11

    .line 189
    .local v11, "t1":[I
    const/4 v13, 0x3

    invoke-static {v12, v7, v13, v5, v11}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    move-result v9

    .line 190
    invoke-static {v9, v11}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->reduce32(I[I)V

    .line 192
    new-instance v12, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    invoke-direct {v12, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;-><init>([I)V

    .line 193
    .local v12, "X3":Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;
    iget-object v13, v12, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v8, v13}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->square([I[I)V

    .line 194
    iget-object v13, v12, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    iget-object v14, v12, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v13, v10, v14}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->subtract([I[I[I)V

    .line 195
    iget-object v13, v12, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    iget-object v14, v12, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v13, v10, v14}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->subtract([I[I[I)V

    .line 197
    new-instance v13, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    invoke-direct {v13, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;-><init>([I)V

    .line 198
    .local v13, "Y3":Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;
    iget-object v14, v12, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    iget-object v15, v13, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v10, v14, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->subtract([I[I[I)V

    .line 199
    iget-object v14, v13, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    iget-object v15, v13, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v14, v8, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 200
    iget-object v14, v13, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    iget-object v15, v13, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v14, v11, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->subtract([I[I[I)V

    .line 202
    new-instance v14, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    invoke-direct {v14, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;-><init>([I)V

    .line 203
    .local v14, "Z3":Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;
    iget-object v15, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    const/16 v16, 0x0

    iget-object v5, v14, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v15, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->twice([I[I)V

    .line 204
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->isOne()Z

    move-result v5

    if-nez v5, :cond_2

    .line 206
    iget-object v5, v14, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    iget-object v15, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    iget-object v0, v14, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v5, v15, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    .line 209
    :cond_2
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v14, v5, v16

    invoke-direct {v0, v1, v12, v13, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 2
    .param p1, "b"    # Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 214
    if-ne p0, p1, :cond_0

    .line 216
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->threeTimes()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    return-object p1

    .line 222
    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 227
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 228
    .local v0, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 230
    return-object p1

    .line 233
    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160K1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method
