.class public Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;
.super Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "Curve25519Point.java"


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

    .line 37
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    return-object v1

    .line 41
    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    return-object v0

    .line 45
    :cond_1
    if-ne v0, v1, :cond_2

    .line 47
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 50
    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 52
    .local v2, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    iget-object v3, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    .local v3, "X1":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    iget-object v4, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v4, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    .line 53
    .local v4, "Y1":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    iget-object v5, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    .line 54
    .local v5, "Z1":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    .local v7, "X2":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    .line 55
    .local v8, "Y2":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    invoke-virtual {v1, v6}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    .line 58
    .local v9, "Z2":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v10

    .line 59
    .local v10, "tt1":[I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v11

    .line 60
    .local v11, "t2":[I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v12

    .line 61
    .local v12, "t3":[I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v13

    .line 63
    .local v13, "t4":[I
    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->isOne()Z

    move-result v14

    .line 65
    .local v14, "Z1IsOne":Z
    if-eqz v14, :cond_3

    .line 67
    iget-object v15, v7, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    .line 68
    .local v15, "U2":[I
    const/16 v16, 0x0

    iget-object v6, v8, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    .local v6, "S2":[I
    goto :goto_0

    .line 72
    .end local v6    # "S2":[I
    .end local v15    # "U2":[I
    :cond_3
    const/16 v16, 0x0

    move-object v6, v12

    .line 73
    .restart local v6    # "S2":[I
    iget-object v15, v5, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v15, v6}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 75
    move-object v15, v11

    .line 76
    .restart local v15    # "U2":[I
    iget-object v1, v7, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v6, v1, v15}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 78
    iget-object v1, v5, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v6, v1, v6}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 79
    iget-object v1, v8, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v6, v1, v6}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 82
    :goto_0
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->isOne()Z

    move-result v1

    .line 84
    .local v1, "Z2IsOne":Z
    if-eqz v1, :cond_4

    .line 86
    move/from16 v17, v1

    .end local v1    # "Z2IsOne":Z
    .local v17, "Z2IsOne":Z
    iget-object v1, v3, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    .line 87
    .local v1, "U1":[I
    move-object/from16 v18, v1

    .end local v1    # "U1":[I
    .local v18, "U1":[I
    iget-object v1, v4, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    move-object/from16 v19, v7

    move-object v7, v1

    move-object/from16 v1, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v8

    .local v1, "S1":[I
    goto :goto_1

    .line 91
    .end local v17    # "Z2IsOne":Z
    .end local v18    # "U1":[I
    .local v1, "Z2IsOne":Z
    :cond_4
    move/from16 v17, v1

    .end local v1    # "Z2IsOne":Z
    .restart local v17    # "Z2IsOne":Z
    move-object v1, v13

    .line 92
    .local v1, "S1":[I
    move-object/from16 v18, v7

    .end local v7    # "X2":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    .local v18, "X2":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    iget-object v7, v9, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v7, v1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 94
    move-object v7, v10

    .line 95
    .local v7, "U1":[I
    move-object/from16 v19, v8

    .end local v8    # "Y2":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    .local v19, "Y2":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    iget-object v8, v3, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v1, v8, v7}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 97
    iget-object v8, v9, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v1, v8, v1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 98
    iget-object v8, v4, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v1, v8, v1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    move-object/from16 v31, v7

    move-object v7, v1

    move-object/from16 v1, v31

    .line 101
    .local v1, "U1":[I
    .local v7, "S1":[I
    :goto_1
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v8

    .line 102
    .local v8, "H":[I
    invoke-static {v1, v15, v8}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    .line 104
    move-object/from16 v20, v11

    .line 105
    .local v20, "R":[I
    move-object/from16 v21, v3

    move-object/from16 v3, v20

    .end local v20    # "R":[I
    .local v3, "R":[I
    .local v21, "X1":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    invoke-static {v7, v6, v3}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    .line 108
    invoke-static {v8}, Lorg/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 110
    invoke-static {v3}, Lorg/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 113
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 117
    :cond_5
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 120
    :cond_6
    move-object/from16 v20, v4

    .end local v4    # "Y1":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    .local v20, "Y1":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v4

    .line 121
    .local v4, "HSquared":[I
    invoke-static {v8, v4}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 123
    move-object/from16 v22, v6

    .end local v6    # "S2":[I
    .local v22, "S2":[I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v6

    .line 124
    .local v6, "G":[I
    invoke-static {v4, v8, v6}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 126
    move-object/from16 v23, v12

    .line 127
    .local v23, "V":[I
    move-object/from16 v24, v11

    move-object/from16 v11, v23

    .end local v23    # "V":[I
    .local v11, "V":[I
    .local v24, "t2":[I
    invoke-static {v4, v1, v11}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 129
    invoke-static {v6, v6}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->negate([I[I)V

    .line 130
    invoke-static {v7, v6, v10}, Lorg/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 132
    move-object/from16 v23, v1

    .end local v1    # "U1":[I
    .local v23, "U1":[I
    invoke-static {v11, v11, v6}, Lorg/bouncycastle/math/raw/Nat256;->addBothTo([I[I[I)I

    move-result v1

    .line 133
    .local v1, "c":I
    invoke-static {v1, v6}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->reduce27(I[I)V

    .line 135
    move/from16 v25, v1

    .end local v1    # "c":I
    .local v25, "c":I
    new-instance v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v1, v13}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    .line 136
    .local v1, "X3":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    move-object/from16 v26, v4

    .end local v4    # "HSquared":[I
    .local v26, "HSquared":[I
    iget-object v4, v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v3, v4}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 137
    iget-object v4, v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    move-object/from16 v27, v7

    .end local v7    # "S1":[I
    .local v27, "S1":[I
    iget-object v7, v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v4, v6, v7}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    .line 139
    new-instance v4, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v4, v6}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    .line 140
    .local v4, "Y3":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    iget-object v7, v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    move-object/from16 v28, v6

    .end local v6    # "G":[I
    .local v28, "G":[I
    iget-object v6, v4, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v11, v7, v6}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    .line 141
    iget-object v6, v4, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v6, v3, v10}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiplyAddToExt([I[I[I)V

    .line 142
    iget-object v6, v4, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v10, v6}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->reduce([I[I)V

    .line 144
    new-instance v6, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v6, v8}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    .line 145
    .local v6, "Z3":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    if-nez v14, :cond_7

    .line 147
    iget-object v7, v6, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    move-object/from16 v29, v3

    .end local v3    # "R":[I
    .local v29, "R":[I
    iget-object v3, v5, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    move-object/from16 v30, v5

    .end local v5    # "Z1":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    .local v30, "Z1":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    iget-object v5, v6, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v7, v3, v5}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    goto :goto_2

    .line 145
    .end local v29    # "R":[I
    .end local v30    # "Z1":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    .restart local v3    # "R":[I
    .restart local v5    # "Z1":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    :cond_7
    move-object/from16 v29, v3

    move-object/from16 v30, v5

    .line 149
    .end local v3    # "R":[I
    .end local v5    # "Z1":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    .restart local v29    # "R":[I
    .restart local v30    # "Z1":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    :goto_2
    if-nez v17, :cond_8

    .line 151
    iget-object v3, v6, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v5, v9, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v7, v6, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v3, v5, v7}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 154
    :cond_8
    if-eqz v14, :cond_9

    if-eqz v17, :cond_9

    move-object/from16 v3, v26

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    .line 157
    .local v3, "Z3Squared":[I
    :goto_3
    invoke-virtual {v0, v6, v3}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->calculateJacobianModifiedW(Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;[I)Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-result-object v5

    .line 159
    .local v5, "W3":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    const/4 v7, 0x2

    new-array v7, v7, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v6, v7, v16

    const/16 v16, 0x1

    aput-object v5, v7, v16

    .line 161
    .local v7, "zs":[Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;

    invoke-direct {v0, v2, v1, v4, v7}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected calculateJacobianModifiedW(Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;[I)Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    .locals 5
    .param p1, "Z"    # Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    .param p2, "ZSquared"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "Z",
            "ZSquared"
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    .line 235
    .local v0, "a4":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->isOne()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    return-object v0

    .line 240
    :cond_0
    new-instance v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>()V

    .line 241
    .local v1, "W":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    if-nez p2, :cond_1

    .line 243
    iget-object p2, v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    .line 244
    iget-object v2, p1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v2, p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 246
    :cond_1
    iget-object v2, v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {p2, v2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 247
    iget-object v2, v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v3, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v4, v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 248
    return-object v1
.end method

.method protected detach()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 4

    .line 22
    new-instance v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected getJacobianModifiedW()Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    .locals 5

    .line 253
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    .line 254
    .local v0, "W":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    if-nez v0, :cond_0

    .line 257
    iget-object v2, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->calculateJacobianModifiedW(Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;[I)Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-result-object v3

    move-object v0, v3

    aput-object v3, v2, v1

    .line 259
    :cond_0
    return-object v0
.end method

.method public getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 27
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->getJacobianModifiedW()Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-result-object v0

    return-object v0

    .line 32
    :cond_0
    invoke-super {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 5

    .line 224
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    return-object p0

    .line 229
    :cond_0
    new-instance v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->negate()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public threeTimes()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 2

    .line 208
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    return-object p0

    .line 213
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 214
    .local v0, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    return-object p0

    .line 219
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->twiceJacobianModified(Z)Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method

.method public twice()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 3

    .line 166
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    return-object p0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 173
    .local v0, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 174
    .local v1, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 179
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->twiceJacobianModified(Z)Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;

    move-result-object v2

    return-object v2
.end method

.method protected twiceJacobianModified(Z)Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;
    .locals 18
    .param p1, "calculateW"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "calculateW"
        }
    .end annotation

    .line 264
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    .local v1, "X1":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    iget-object v2, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    .line 265
    .local v2, "Y1":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    iget-object v3, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    .local v3, "Z1":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->getJacobianModifiedW()Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-result-object v5

    .line 269
    .local v5, "W1":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v6

    .line 270
    .local v6, "M":[I
    iget-object v7, v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v7, v6}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 271
    invoke-static {v6, v6, v6}, Lorg/bouncycastle/math/raw/Nat256;->addBothTo([I[I[I)I

    move-result v7

    .line 272
    .local v7, "c":I
    iget-object v8, v5, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v8, v6}, Lorg/bouncycastle/math/raw/Nat256;->addTo([I[I)I

    move-result v8

    add-int/2addr v7, v8

    .line 273
    invoke-static {v7, v6}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->reduce27(I[I)V

    .line 275
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v8

    .line 276
    .local v8, "_2Y1":[I
    iget-object v9, v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v9, v8}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->twice([I[I)V

    .line 278
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v9

    .line 279
    .local v9, "_2Y1Squared":[I
    iget-object v10, v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v8, v10, v9}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 281
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v10

    .line 282
    .local v10, "S":[I
    iget-object v11, v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v9, v11, v10}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 283
    invoke-static {v10, v10}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->twice([I[I)V

    .line 285
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v11

    .line 286
    .local v11, "_8T":[I
    invoke-static {v9, v11}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 287
    invoke-static {v11, v11}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->twice([I[I)V

    .line 289
    new-instance v12, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v12, v9}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    .line 290
    .local v12, "X3":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    iget-object v13, v12, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v6, v13}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 291
    iget-object v13, v12, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v14, v12, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v13, v10, v14}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    .line 292
    iget-object v13, v12, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v14, v12, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v13, v10, v14}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    .line 294
    new-instance v13, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v13, v10}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    .line 295
    .local v13, "Y3":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    iget-object v14, v12, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v15, v13, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v10, v14, v15}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    .line 296
    iget-object v14, v13, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v15, v13, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v14, v6, v15}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 297
    iget-object v14, v13, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v15, v13, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v14, v11, v15}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    .line 299
    new-instance v14, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v14, v8}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    .line 300
    .local v14, "Z3":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    iget-object v15, v3, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v15}, Lorg/bouncycastle/math/raw/Nat256;->isOne([I)Z

    move-result v15

    if-nez v15, :cond_0

    .line 302
    iget-object v15, v14, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    const/16 v16, 0x0

    iget-object v4, v3, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v0, v14, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v15, v4, v0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    goto :goto_0

    .line 300
    :cond_0
    const/16 v16, 0x0

    .line 305
    :goto_0
    const/4 v0, 0x0

    .line 306
    .local v0, "W3":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    if-eqz p1, :cond_1

    .line 308
    new-instance v4, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v4, v11}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    move-object v0, v4

    .line 309
    iget-object v4, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v15, v5, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    move-object/from16 v17, v1

    .end local v1    # "X1":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    .local v17, "X1":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    iget-object v1, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v4, v15, v1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 310
    iget-object v1, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v4, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v1, v4}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->twice([I[I)V

    goto :goto_1

    .line 306
    .end local v17    # "X1":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    .restart local v1    # "X1":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    :cond_1
    move-object/from16 v17, v1

    .line 313
    .end local v1    # "X1":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    .restart local v17    # "X1":Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    :goto_1
    new-instance v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    const/4 v15, 0x2

    new-array v15, v15, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v14, v15, v16

    const/16 v16, 0x1

    aput-object v0, v15, v16

    invoke-direct {v1, v4, v12, v13, v15}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v1
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

    .line 184
    if-ne p0, p1, :cond_0

    .line 186
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->threeTimes()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 188
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    return-object p1

    .line 192
    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 197
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 198
    .local v0, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 200
    return-object p1

    .line 203
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->twiceJacobianModified(Z)Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method
