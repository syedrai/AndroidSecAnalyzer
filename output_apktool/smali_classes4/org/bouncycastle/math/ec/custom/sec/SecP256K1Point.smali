.class public Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;
.super Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP256K1Point.java"


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

    .line 29
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->isInfinity()Z

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
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 42
    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 44
    .local v2, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    iget-object v3, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .local v3, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v4, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v4, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 45
    .local v4, "Y1":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .local v5, "X2":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 47
    .local v6, "Y2":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v7, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    check-cast v7, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 48
    .local v7, "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    invoke-virtual {v1, v8}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 51
    .local v9, "Z2":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v10

    .line 52
    .local v10, "tt0":[I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v11

    .line 53
    .local v11, "tt1":[I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v12

    .line 54
    .local v12, "t2":[I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v13

    .line 55
    .local v13, "t3":[I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v14

    .line 57
    .local v14, "t4":[I
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->isOne()Z

    move-result v15

    .line 59
    .local v15, "Z1IsOne":Z
    if-eqz v15, :cond_3

    .line 61
    const/16 v16, 0x0

    iget-object v8, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .line 62
    .local v8, "U2":[I
    iget-object v0, v6, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .local v0, "S2":[I
    goto :goto_0

    .line 66
    .end local v0    # "S2":[I
    .end local v8    # "U2":[I
    :cond_3
    const/16 v16, 0x0

    move-object v0, v13

    .line 67
    .restart local v0    # "S2":[I
    iget-object v8, v7, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v8, v0, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 69
    move-object v8, v12

    .line 70
    .restart local v8    # "U2":[I
    iget-object v1, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0, v1, v8, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 72
    iget-object v1, v7, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0, v1, v0, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 73
    iget-object v1, v6, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0, v1, v0, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 76
    :goto_0
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->isOne()Z

    move-result v1

    .line 78
    .local v1, "Z2IsOne":Z
    if-eqz v1, :cond_4

    .line 80
    move/from16 v17, v1

    .end local v1    # "Z2IsOne":Z
    .local v17, "Z2IsOne":Z
    iget-object v1, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .line 81
    .local v1, "U1":[I
    move-object/from16 v18, v1

    .end local v1    # "U1":[I
    .local v18, "U1":[I
    iget-object v1, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v19, v5

    move-object v5, v1

    move-object/from16 v1, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v6

    .local v1, "S1":[I
    goto :goto_1

    .line 85
    .end local v17    # "Z2IsOne":Z
    .end local v18    # "U1":[I
    .local v1, "Z2IsOne":Z
    :cond_4
    move/from16 v17, v1

    .end local v1    # "Z2IsOne":Z
    .restart local v17    # "Z2IsOne":Z
    move-object v1, v14

    .line 86
    .local v1, "S1":[I
    move-object/from16 v18, v5

    .end local v5    # "X2":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    .local v18, "X2":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v5, v9, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v5, v1, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 88
    move-object v5, v11

    .line 89
    .local v5, "U1":[I
    move-object/from16 v19, v6

    .end local v6    # "Y2":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    .local v19, "Y2":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v6, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v6, v5, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 91
    iget-object v6, v9, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v6, v1, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 92
    iget-object v6, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v6, v1, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    move-object/from16 v31, v5

    move-object v5, v1

    move-object/from16 v1, v31

    .line 95
    .local v1, "U1":[I
    .local v5, "S1":[I
    :goto_1
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v6

    .line 96
    .local v6, "H":[I
    invoke-static {v1, v8, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 98
    move-object/from16 v20, v12

    .line 99
    .local v20, "R":[I
    move-object/from16 v21, v3

    move-object/from16 v3, v20

    .end local v20    # "R":[I
    .local v3, "R":[I
    .local v21, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    invoke-static {v5, v0, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 102
    invoke-static {v6}, Lorg/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 104
    invoke-static {v3}, Lorg/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 107
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 111
    :cond_5
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 114
    :cond_6
    move-object/from16 v20, v13

    .line 115
    .local v20, "HSquared":[I
    move-object/from16 v22, v0

    move-object/from16 v0, v20

    .end local v20    # "HSquared":[I
    .local v0, "HSquared":[I
    .local v22, "S2":[I
    invoke-static {v6, v0, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 117
    move-object/from16 v20, v4

    .end local v4    # "Y1":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    .local v20, "Y1":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v4

    .line 118
    .local v4, "G":[I
    invoke-static {v0, v6, v4, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 120
    move-object/from16 v23, v13

    .line 121
    .local v23, "V":[I
    move-object/from16 v24, v8

    move-object/from16 v8, v23

    .end local v23    # "V":[I
    .local v8, "V":[I
    .local v24, "U2":[I
    invoke-static {v0, v1, v8, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 123
    invoke-static {v4, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->negate([I[I)V

    .line 124
    invoke-static {v5, v4, v11}, Lorg/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 126
    move-object/from16 v23, v0

    .end local v0    # "HSquared":[I
    .local v23, "HSquared":[I
    invoke-static {v8, v8, v4}, Lorg/bouncycastle/math/raw/Nat256;->addBothTo([I[I[I)I

    move-result v0

    .line 127
    .local v0, "c":I
    invoke-static {v0, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce32(I[I)V

    .line 129
    move/from16 v25, v0

    .end local v0    # "c":I
    .local v25, "c":I
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v0, v14}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 130
    .local v0, "X3":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    move-object/from16 v26, v1

    .end local v1    # "U1":[I
    .local v26, "U1":[I
    iget-object v1, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v3, v1, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 131
    iget-object v1, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v27, v5

    .end local v5    # "S1":[I
    .local v27, "S1":[I
    iget-object v5, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v4, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 133
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 134
    .local v1, "Y3":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v5, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v28, v4

    .end local v4    # "G":[I
    .local v28, "G":[I
    iget-object v4, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v8, v5, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 135
    iget-object v4, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v4, v3, v11}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiplyAddToExt([I[I[I)V

    .line 136
    iget-object v4, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v11, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    .line 138
    new-instance v4, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v4, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 139
    .local v4, "Z3":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    if-nez v15, :cond_7

    .line 141
    iget-object v5, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v29, v3

    .end local v3    # "R":[I
    .local v29, "R":[I
    iget-object v3, v7, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v30, v6

    .end local v6    # "H":[I
    .local v30, "H":[I
    iget-object v6, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v5, v3, v6, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    goto :goto_2

    .line 139
    .end local v29    # "R":[I
    .end local v30    # "H":[I
    .restart local v3    # "R":[I
    .restart local v6    # "H":[I
    :cond_7
    move-object/from16 v29, v3

    move-object/from16 v30, v6

    .line 143
    .end local v3    # "R":[I
    .end local v6    # "H":[I
    .restart local v29    # "R":[I
    .restart local v30    # "H":[I
    :goto_2
    if-nez v17, :cond_8

    .line 145
    iget-object v3, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v5, v9, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v6, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v3, v5, v6, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 148
    :cond_8
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v4, v3, v16

    .line 150
    .local v3, "zs":[Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v5, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;

    invoke-direct {v5, v2, v0, v1, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v5
.end method

.method protected detach()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 4

    .line 23
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 5

    .line 251
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    return-object p0

    .line 256
    :cond_0
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->negate()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public threeTimes()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 240
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 242
    :cond_1
    :goto_0
    return-object p0
.end method

.method public twice()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 18

    .line 156
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    return-object v0

    .line 161
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 163
    .local v1, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    iget-object v2, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 164
    .local v2, "Y1":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 169
    :cond_1
    iget-object v3, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .local v3, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v4, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 172
    .local v4, "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v6

    .line 174
    .local v6, "tt0":[I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v7

    .line 175
    .local v7, "Y1Squared":[I
    iget-object v8, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v8, v7, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 177
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v8

    .line 178
    .local v8, "T":[I
    invoke-static {v7, v8, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 180
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v9

    .line 181
    .local v9, "M":[I
    iget-object v10, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v10, v9, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 182
    invoke-static {v9, v9, v9}, Lorg/bouncycastle/math/raw/Nat256;->addBothTo([I[I[I)I

    move-result v10

    .line 183
    .local v10, "c":I
    invoke-static {v10, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce32(I[I)V

    .line 185
    move-object v11, v7

    .line 186
    .local v11, "S":[I
    iget-object v12, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v7, v12, v11, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 187
    const/4 v12, 0x2

    const/16 v13, 0x8

    invoke-static {v13, v11, v12, v5}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v10

    .line 188
    invoke-static {v10, v11}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce32(I[I)V

    .line 190
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v12

    .line 191
    .local v12, "t1":[I
    const/4 v14, 0x3

    invoke-static {v13, v8, v14, v5, v12}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    move-result v10

    .line 192
    invoke-static {v10, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce32(I[I)V

    .line 194
    new-instance v13, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v13, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 195
    .local v13, "X3":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v14, v13, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v9, v14, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I[I)V

    .line 196
    iget-object v14, v13, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v15, v13, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v14, v11, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 197
    iget-object v14, v13, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v15, v13, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v14, v11, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 199
    new-instance v14, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v14, v11}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 200
    .local v14, "Y3":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v15, v13, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    const/16 v16, 0x0

    iget-object v5, v14, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v11, v15, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 201
    iget-object v5, v14, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v15, v14, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v5, v9, v15, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    .line 202
    iget-object v5, v14, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v15, v14, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v5, v12, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 204
    new-instance v5, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v5, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 205
    .local v5, "Z3":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v15, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v0, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v15, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->twice([I[I)V

    .line 206
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->isOne()Z

    move-result v0

    if-nez v0, :cond_2

    .line 208
    iget-object v0, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v15, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v17, v2

    .end local v2    # "Y1":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    .local v17, "Y1":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v2, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0, v15, v2, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I[I)V

    goto :goto_0

    .line 206
    .end local v17    # "Y1":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    .restart local v2    # "Y1":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    :cond_2
    move-object/from16 v17, v2

    .line 211
    .end local v2    # "Y1":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    .restart local v17    # "Y1":Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    :goto_0
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v5, v2, v16

    invoke-direct {v0, v1, v13, v14, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

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

    .line 216
    if-ne p0, p1, :cond_0

    .line 218
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->threeTimes()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    return-object p1

    .line 224
    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 229
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 230
    .local v0, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 232
    return-object p1

    .line 235
    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method
