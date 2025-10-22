.class public Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;
.super Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP521R1Point.java"


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

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 13
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

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 18
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

    .line 27
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    return-object v0

    .line 35
    :cond_1
    if-ne v0, v1, :cond_2

    .line 37
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 40
    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 42
    .local v2, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    iget-object v3, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .local v3, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v4, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v4, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 43
    .local v4, "Y1":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .local v5, "X2":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 45
    .local v6, "Y2":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v7, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    check-cast v7, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 46
    .local v7, "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-virtual {v1, v8}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 48
    .local v9, "Z2":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    const/16 v10, 0x21

    invoke-static {v10}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v10

    .line 49
    .local v10, "tt0":[I
    const/16 v11, 0x11

    invoke-static {v11}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v12

    .line 50
    .local v12, "t1":[I
    invoke-static {v11}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v13

    .line 51
    .local v13, "t2":[I
    invoke-static {v11}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v14

    .line 52
    .local v14, "t3":[I
    invoke-static {v11}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v15

    .line 54
    .local v15, "t4":[I
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->isOne()Z

    move-result v16

    .line 56
    .local v16, "Z1IsOne":Z
    if-eqz v16, :cond_3

    .line 58
    const/16 v17, 0x0

    iget-object v8, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    .line 59
    .local v8, "U2":[I
    const/16 v18, 0x11

    iget-object v11, v6, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    .local v11, "S2":[I
    goto :goto_0

    .line 63
    .end local v8    # "U2":[I
    .end local v11    # "S2":[I
    :cond_3
    const/16 v17, 0x0

    const/16 v18, 0x11

    move-object v11, v14

    .line 64
    .restart local v11    # "S2":[I
    iget-object v8, v7, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v8, v11, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I[I)V

    .line 66
    move-object v8, v13

    .line 67
    .restart local v8    # "U2":[I
    iget-object v0, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v11, v0, v8, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 69
    iget-object v0, v7, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v11, v0, v11, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 70
    iget-object v0, v6, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v11, v0, v11, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 73
    :goto_0
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->isOne()Z

    move-result v0

    .line 75
    .local v0, "Z2IsOne":Z
    if-eqz v0, :cond_4

    .line 77
    move/from16 v19, v0

    .end local v0    # "Z2IsOne":Z
    .local v19, "Z2IsOne":Z
    iget-object v0, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    .line 78
    .local v0, "U1":[I
    move-object/from16 v20, v0

    .end local v0    # "U1":[I
    .local v20, "U1":[I
    iget-object v0, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object v1, v0

    move-object/from16 v0, v20

    move-object/from16 v20, v5

    .local v0, "S1":[I
    goto :goto_1

    .line 82
    .end local v19    # "Z2IsOne":Z
    .end local v20    # "U1":[I
    .local v0, "Z2IsOne":Z
    :cond_4
    move/from16 v19, v0

    .end local v0    # "Z2IsOne":Z
    .restart local v19    # "Z2IsOne":Z
    move-object v0, v15

    .line 83
    .local v0, "S1":[I
    iget-object v1, v9, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v1, v0, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I[I)V

    .line 85
    move-object v1, v12

    .line 86
    .local v1, "U1":[I
    move-object/from16 v20, v5

    .end local v5    # "X2":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .local v20, "X2":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v5, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v0, v5, v1, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 88
    iget-object v5, v9, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v0, v5, v0, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 89
    iget-object v5, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v0, v5, v0, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    move-object/from16 v30, v1

    move-object v1, v0

    move-object/from16 v0, v30

    .line 92
    .local v0, "U1":[I
    .local v1, "S1":[I
    :goto_1
    invoke-static/range {v18 .. v18}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v5

    .line 93
    .local v5, "H":[I
    invoke-static {v0, v8, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 95
    move-object/from16 v21, v13

    .line 96
    .local v21, "R":[I
    move-object/from16 v22, v3

    move-object/from16 v3, v21

    .end local v21    # "R":[I
    .local v3, "R":[I
    .local v22, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-static {v1, v11, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 99
    move-object/from16 v21, v4

    const/16 v4, 0x11

    .end local v4    # "Y1":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .local v21, "Y1":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-static {v4, v5}, Lorg/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 101
    invoke-static {v4, v3}, Lorg/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 104
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 108
    :cond_5
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 111
    :cond_6
    move-object v4, v14

    .line 112
    .local v4, "HSquared":[I
    invoke-static {v5, v4, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I[I)V

    .line 114
    move-object/from16 v23, v6

    const/16 v18, 0x11

    .end local v6    # "Y2":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .local v23, "Y2":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-static/range {v18 .. v18}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v6

    .line 115
    .local v6, "G":[I
    invoke-static {v4, v5, v6, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 117
    move-object/from16 v18, v14

    .line 118
    .local v18, "V":[I
    move-object/from16 v24, v8

    move-object/from16 v8, v18

    .end local v18    # "V":[I
    .local v8, "V":[I
    .local v24, "U2":[I
    invoke-static {v4, v0, v8, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 120
    invoke-static {v1, v6, v12, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 122
    move-object/from16 v18, v0

    .end local v0    # "U1":[I
    .local v18, "U1":[I
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v0, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 123
    .local v0, "X3":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    move-object/from16 v25, v1

    .end local v1    # "S1":[I
    .local v25, "S1":[I
    iget-object v1, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v3, v1, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I[I)V

    .line 124
    iget-object v1, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v26, v4

    .end local v4    # "HSquared":[I
    .local v26, "HSquared":[I
    iget-object v4, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v1, v6, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->add([I[I[I)V

    .line 125
    iget-object v1, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v4, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v1, v8, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 126
    iget-object v1, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v4, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v1, v8, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 128
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v1, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 129
    .local v1, "Y3":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v4, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v27, v6

    .end local v6    # "G":[I
    .local v27, "G":[I
    iget-object v6, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v8, v4, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 130
    iget-object v4, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v4, v3, v13, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 131
    iget-object v4, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v13, v12, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 133
    new-instance v4, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v4, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 134
    .local v4, "Z3":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    if-nez v16, :cond_7

    .line 136
    iget-object v6, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v28, v3

    .end local v3    # "R":[I
    .local v28, "R":[I
    iget-object v3, v7, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v29, v5

    .end local v5    # "H":[I
    .local v29, "H":[I
    iget-object v5, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v6, v3, v5, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    goto :goto_2

    .line 134
    .end local v28    # "R":[I
    .end local v29    # "H":[I
    .restart local v3    # "R":[I
    .restart local v5    # "H":[I
    :cond_7
    move-object/from16 v28, v3

    move-object/from16 v29, v5

    .line 138
    .end local v3    # "R":[I
    .end local v5    # "H":[I
    .restart local v28    # "R":[I
    .restart local v29    # "H":[I
    :goto_2
    if-nez v19, :cond_8

    .line 140
    iget-object v3, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v5, v9, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v6, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v3, v5, v6, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 143
    :cond_8
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v4, v3, v17

    .line 145
    .local v3, "zs":[Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v5, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    invoke-direct {v5, v2, v0, v1, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v5
.end method

.method protected detach()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 4

    .line 22
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected doubleProductFromSquares(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "a"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p2, "b"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p3, "aSquared"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p4, "bSquared"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "aSquared",
            "bSquared"
        }
    .end annotation

    .line 282
    invoke-virtual {p1, p2}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p4}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected eight(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 272
    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->four(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected four(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 267
    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 5

    .line 287
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    return-object p0

    .line 292
    :cond_0
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->negate()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected three(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 262
    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public threeTimes()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 246
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 248
    :cond_1
    :goto_0
    return-object p0
.end method

.method public twice()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 20

    .line 150
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    return-object v0

    .line 155
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 157
    .local v1, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    iget-object v2, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 158
    .local v2, "Y1":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 163
    :cond_1
    iget-object v3, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .local v3, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v4, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 165
    .local v4, "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    const/16 v6, 0x21

    invoke-static {v6}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v6

    .line 166
    .local v6, "tt0":[I
    const/16 v7, 0x11

    invoke-static {v7}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v8

    .line 167
    .local v8, "t1":[I
    invoke-static {v7}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v9

    .line 169
    .local v9, "t2":[I
    invoke-static {v7}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v10

    .line 170
    .local v10, "Y1Squared":[I
    iget-object v11, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v11, v10, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I[I)V

    .line 172
    invoke-static {v7}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v11

    .line 173
    .local v11, "T":[I
    invoke-static {v10, v11, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I[I)V

    .line 175
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->isOne()Z

    move-result v12

    .line 177
    .local v12, "Z1IsOne":Z
    iget-object v13, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    .line 178
    .local v13, "Z1Squared":[I
    if-nez v12, :cond_2

    .line 180
    move-object v13, v9

    .line 181
    iget-object v14, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v14, v13, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I[I)V

    .line 184
    :cond_2
    iget-object v14, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v14, v13, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 186
    move-object v14, v9

    .line 187
    .local v14, "M":[I
    iget-object v15, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v15, v13, v14}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->add([I[I[I)V

    .line 188
    invoke-static {v14, v8, v14, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 189
    invoke-static {v7, v14, v14, v14}, Lorg/bouncycastle/math/raw/Nat;->addBothTo(I[I[I[I)I

    .line 190
    invoke-static {v14}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce23([I)V

    .line 192
    move-object v15, v10

    .line 193
    .local v15, "S":[I
    iget-object v5, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v10, v5, v15, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 194
    const/4 v5, 0x2

    const/4 v0, 0x0

    invoke-static {v7, v15, v5, v0}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    .line 195
    invoke-static {v15}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce23([I)V

    .line 197
    const/4 v5, 0x3

    invoke-static {v7, v11, v5, v0, v8}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    .line 198
    invoke-static {v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce23([I)V

    .line 200
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v0, v11}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 201
    .local v0, "X3":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v5, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v14, v5, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I[I)V

    .line 202
    iget-object v5, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v7, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v5, v15, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 203
    iget-object v5, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v7, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v5, v15, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 205
    new-instance v5, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v5, v15}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 206
    .local v5, "Y3":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v7, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v17, v3

    .end local v3    # "X1":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .local v17, "X1":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v3, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v15, v7, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 207
    iget-object v3, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v7, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v3, v14, v7, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    .line 208
    iget-object v3, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v7, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v3, v8, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 210
    new-instance v3, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v3, v14}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 211
    .local v3, "Z3":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v7, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v18, v2

    .end local v2    # "Y1":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .local v18, "Y1":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v2, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v7, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->twice([I[I)V

    .line 212
    if-nez v12, :cond_3

    .line 214
    iget-object v2, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v7, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v19, v4

    .end local v4    # "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .local v19, "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v4, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v2, v7, v4, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I[I)V

    goto :goto_0

    .line 212
    .end local v19    # "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .restart local v4    # "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    :cond_3
    move-object/from16 v19, v4

    .line 217
    .end local v4    # "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .restart local v19    # "Z1":Lorg/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    :goto_0
    new-instance v2, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/bouncycastle/math/ec/ECFieldElement;

    const/16 v16, 0x0

    aput-object v3, v4, v16

    invoke-direct {v2, v1, v0, v5, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

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

    .line 222
    if-ne p0, p1, :cond_0

    .line 224
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->threeTimes()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 226
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    return-object p1

    .line 230
    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 235
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 236
    .local v0, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 238
    return-object p1

    .line 241
    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method

.method protected two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 257
    invoke-virtual {p1, p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method
