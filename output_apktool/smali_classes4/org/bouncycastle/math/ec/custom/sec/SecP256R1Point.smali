.class public Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;
.super Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP256R1Point.java"


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
    .locals 32
    .param p1, "b"    # Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 28
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    return-object v1

    .line 32
    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    return-object v0

    .line 36
    :cond_1
    if-ne v0, v1, :cond_2

    .line 38
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 41
    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 43
    .local v2, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    iget-object v3, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    .local v3, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v4, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v4, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    .line 44
    .local v4, "Y1":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    .local v5, "X2":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    .line 46
    .local v6, "Y2":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v7, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    check-cast v7, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    .line 47
    .local v7, "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    invoke-virtual {v1, v8}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    .line 50
    .local v9, "Z2":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v10

    .line 51
    .local v10, "tt0":[I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v11

    .line 52
    .local v11, "tt1":[I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v12

    .line 53
    .local v12, "t2":[I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v13

    .line 54
    .local v13, "t3":[I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v14

    .line 56
    .local v14, "t4":[I
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->isOne()Z

    move-result v15

    .line 58
    .local v15, "Z1IsOne":Z
    if-eqz v15, :cond_3

    .line 60
    const/16 v16, 0x0

    iget-object v8, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    .line 61
    .local v8, "U2":[I
    iget-object v0, v6, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    .local v0, "S2":[I
    goto :goto_0

    .line 65
    .end local v0    # "S2":[I
    .end local v8    # "U2":[I
    :cond_3
    const/16 v16, 0x0

    move-object v0, v13

    .line 66
    .restart local v0    # "S2":[I
    iget-object v8, v7, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v8, v0, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I[I)V

    .line 68
    move-object v8, v12

    .line 69
    .restart local v8    # "U2":[I
    iget-object v1, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v0, v1, v8, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I[I)V

    .line 71
    iget-object v1, v7, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v0, v1, v0, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I[I)V

    .line 72
    iget-object v1, v6, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v0, v1, v0, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I[I)V

    .line 75
    :goto_0
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->isOne()Z

    move-result v1

    .line 77
    .local v1, "Z2IsOne":Z
    if-eqz v1, :cond_4

    .line 79
    move/from16 v17, v1

    .end local v1    # "Z2IsOne":Z
    .local v17, "Z2IsOne":Z
    iget-object v1, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    .line 80
    .local v1, "U1":[I
    move-object/from16 v18, v1

    .end local v1    # "U1":[I
    .local v18, "U1":[I
    iget-object v1, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    move-object/from16 v19, v5

    move-object v5, v1

    move-object/from16 v1, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v6

    .local v1, "S1":[I
    goto :goto_1

    .line 84
    .end local v17    # "Z2IsOne":Z
    .end local v18    # "U1":[I
    .local v1, "Z2IsOne":Z
    :cond_4
    move/from16 v17, v1

    .end local v1    # "Z2IsOne":Z
    .restart local v17    # "Z2IsOne":Z
    move-object v1, v14

    .line 85
    .local v1, "S1":[I
    move-object/from16 v18, v5

    .end local v5    # "X2":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    .local v18, "X2":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v5, v9, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v5, v1, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I[I)V

    .line 87
    move-object v5, v11

    .line 88
    .local v5, "U1":[I
    move-object/from16 v19, v6

    .end local v6    # "Y2":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    .local v19, "Y2":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v6, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, v6, v5, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I[I)V

    .line 90
    iget-object v6, v9, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, v6, v1, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I[I)V

    .line 91
    iget-object v6, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, v6, v1, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I[I)V

    move-object/from16 v31, v5

    move-object v5, v1

    move-object/from16 v1, v31

    .line 94
    .local v1, "U1":[I
    .local v5, "S1":[I
    :goto_1
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v6

    .line 95
    .local v6, "H":[I
    invoke-static {v1, v8, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    .line 97
    move-object/from16 v20, v12

    .line 98
    .local v20, "R":[I
    move-object/from16 v21, v3

    move-object/from16 v3, v20

    .end local v20    # "R":[I
    .local v3, "R":[I
    .local v21, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    invoke-static {v5, v0, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    .line 101
    invoke-static {v6}, Lorg/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 103
    invoke-static {v3}, Lorg/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 106
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 110
    :cond_5
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 113
    :cond_6
    move-object/from16 v20, v13

    .line 114
    .local v20, "HSquared":[I
    move-object/from16 v22, v0

    move-object/from16 v0, v20

    .end local v20    # "HSquared":[I
    .local v0, "HSquared":[I
    .local v22, "S2":[I
    invoke-static {v6, v0, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I[I)V

    .line 116
    move-object/from16 v20, v4

    .end local v4    # "Y1":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    .local v20, "Y1":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v4

    .line 117
    .local v4, "G":[I
    invoke-static {v0, v6, v4, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I[I)V

    .line 119
    move-object/from16 v23, v13

    .line 120
    .local v23, "V":[I
    move-object/from16 v24, v8

    move-object/from16 v8, v23

    .end local v23    # "V":[I
    .local v8, "V":[I
    .local v24, "U2":[I
    invoke-static {v0, v1, v8, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I[I)V

    .line 122
    invoke-static {v4, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->negate([I[I)V

    .line 123
    invoke-static {v5, v4, v11}, Lorg/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 125
    move-object/from16 v23, v0

    .end local v0    # "HSquared":[I
    .local v23, "HSquared":[I
    invoke-static {v8, v8, v4}, Lorg/bouncycastle/math/raw/Nat256;->addBothTo([I[I[I)I

    move-result v0

    .line 126
    .local v0, "c":I
    invoke-static {v0, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce32(I[I)V

    .line 128
    move/from16 v25, v0

    .end local v0    # "c":I
    .local v25, "c":I
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v0, v14}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    .line 129
    .local v0, "X3":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    move-object/from16 v26, v1

    .end local v1    # "U1":[I
    .local v26, "U1":[I
    iget-object v1, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v3, v1, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I[I)V

    .line 130
    iget-object v1, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    move-object/from16 v27, v5

    .end local v5    # "S1":[I
    .local v27, "S1":[I
    iget-object v5, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, v4, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    .line 132
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v1, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    .line 133
    .local v1, "Y3":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v5, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    move-object/from16 v28, v4

    .end local v4    # "G":[I
    .local v28, "G":[I
    iget-object v4, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v8, v5, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    .line 134
    iget-object v4, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v4, v3, v11}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiplyAddToExt([I[I[I)V

    .line 135
    iget-object v4, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v11, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 137
    new-instance v4, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v4, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    .line 138
    .local v4, "Z3":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    if-nez v15, :cond_7

    .line 140
    iget-object v5, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    move-object/from16 v29, v3

    .end local v3    # "R":[I
    .local v29, "R":[I
    iget-object v3, v7, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    move-object/from16 v30, v6

    .end local v6    # "H":[I
    .local v30, "H":[I
    iget-object v6, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v5, v3, v6, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I[I)V

    goto :goto_2

    .line 138
    .end local v29    # "R":[I
    .end local v30    # "H":[I
    .restart local v3    # "R":[I
    .restart local v6    # "H":[I
    :cond_7
    move-object/from16 v29, v3

    move-object/from16 v30, v6

    .line 142
    .end local v3    # "R":[I
    .end local v6    # "H":[I
    .restart local v29    # "R":[I
    .restart local v30    # "H":[I
    :goto_2
    if-nez v17, :cond_8

    .line 144
    iget-object v3, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    iget-object v5, v9, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    iget-object v6, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v3, v5, v6, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I[I)V

    .line 147
    :cond_8
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v4, v3, v16

    .line 149
    .local v3, "zs":[Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v5, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;

    invoke-direct {v5, v2, v0, v1, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v5
.end method

.method protected detach()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 4

    .line 23
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 5

    .line 262
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    return-object p0

    .line 267
    :cond_0
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->negate()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public threeTimes()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 251
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 253
    :cond_1
    :goto_0
    return-object p0
.end method

.method public twice()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 21

    .line 154
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    return-object v0

    .line 159
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 161
    .local v1, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    iget-object v2, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    .line 162
    .local v2, "Y1":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 167
    :cond_1
    iget-object v3, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    .local v3, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v4, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    .line 170
    .local v4, "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v6

    .line 171
    .local v6, "tt0":[I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v7

    .line 172
    .local v7, "t1":[I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v8

    .line 174
    .local v8, "t2":[I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v9

    .line 175
    .local v9, "Y1Squared":[I
    iget-object v10, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v10, v9, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I[I)V

    .line 177
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v10

    .line 178
    .local v10, "T":[I
    invoke-static {v9, v10, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I[I)V

    .line 180
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->isOne()Z

    move-result v11

    .line 182
    .local v11, "Z1IsOne":Z
    iget-object v12, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    .line 183
    .local v12, "Z1Squared":[I
    if-nez v11, :cond_2

    .line 185
    move-object v12, v8

    .line 186
    iget-object v13, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v13, v12, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I[I)V

    .line 189
    :cond_2
    iget-object v13, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v13, v12, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    .line 191
    move-object v13, v8

    .line 192
    .local v13, "M":[I
    iget-object v14, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v14, v12, v13}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->add([I[I[I)V

    .line 193
    invoke-static {v13, v7, v13, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I[I)V

    .line 194
    invoke-static {v13, v13, v13}, Lorg/bouncycastle/math/raw/Nat256;->addBothTo([I[I[I)I

    move-result v14

    .line 195
    .local v14, "c":I
    invoke-static {v14, v13}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce32(I[I)V

    .line 197
    move-object v15, v9

    .line 198
    .local v15, "S":[I
    iget-object v5, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v9, v5, v15, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I[I)V

    .line 199
    const/4 v5, 0x2

    const/16 v0, 0x8

    move-object/from16 v17, v3

    const/4 v3, 0x0

    .end local v3    # "X1":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    .local v17, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    invoke-static {v0, v15, v5, v3}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v5

    .line 200
    .end local v14    # "c":I
    .local v5, "c":I
    invoke-static {v5, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce32(I[I)V

    .line 202
    const/4 v14, 0x3

    invoke-static {v0, v10, v14, v3, v7}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    move-result v0

    .line 203
    .end local v5    # "c":I
    .local v0, "c":I
    invoke-static {v0, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce32(I[I)V

    .line 205
    new-instance v3, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v3, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    .line 206
    .local v3, "X3":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v5, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v13, v5, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I[I)V

    .line 207
    iget-object v5, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    iget-object v14, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v5, v15, v14}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    .line 208
    iget-object v5, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    iget-object v14, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v5, v15, v14}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    .line 210
    new-instance v5, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v5, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    .line 211
    .local v5, "Y3":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v14, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    move/from16 v18, v0

    .end local v0    # "c":I
    .local v18, "c":I
    iget-object v0, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v15, v14, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    .line 212
    iget-object v0, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    iget-object v14, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v0, v13, v14, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I[I)V

    .line 213
    iget-object v0, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    iget-object v14, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v0, v7, v14}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    .line 215
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v0, v13}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    .line 216
    .local v0, "Z3":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v14, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    move-object/from16 v19, v2

    .end local v2    # "Y1":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    .local v19, "Y1":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v2, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v14, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->twice([I[I)V

    .line 217
    if-nez v11, :cond_3

    .line 219
    iget-object v2, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    iget-object v14, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    move-object/from16 v20, v4

    .end local v4    # "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    .local v20, "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v4, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v2, v14, v4, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I[I)V

    goto :goto_0

    .line 217
    .end local v20    # "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    .restart local v4    # "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    :cond_3
    move-object/from16 v20, v4

    .line 222
    .end local v4    # "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    .restart local v20    # "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    :goto_0
    new-instance v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/bouncycastle/math/ec/ECFieldElement;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    invoke-direct {v2, v1, v3, v5, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v2
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

    .line 227
    if-ne p0, p1, :cond_0

    .line 229
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->threeTimes()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 231
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    return-object p1

    .line 235
    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 240
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 241
    .local v0, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 243
    return-object p1

    .line 246
    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method
