.class public Lorg/bouncycastle/math/ec/ECPoint$Fp;
.super Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
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

    .line 634
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 635
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

    .line 639
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 640
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

    .line 660
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    return-object v1

    .line 664
    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 666
    return-object v0

    .line 668
    :cond_1
    if-ne v0, v1, :cond_2

    .line 670
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 673
    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 674
    .local v2, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v3

    .line 676
    .local v3, "coord":I
    iget-object v4, v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v4, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v5, v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 677
    .local v5, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v6, v1, Lorg/bouncycastle/math/ec/ECPoint;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v6, "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v7, v1, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 679
    .local v7, "Y2":Lorg/bouncycastle/math/ec/ECFieldElement;
    const/4 v9, 0x0

    packed-switch v3, :pswitch_data_0

    .line 871
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :pswitch_1
    iget-object v10, v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v10, v10, v9

    .line 750
    .local v10, "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v11, v1, Lorg/bouncycastle/math/ec/ECPoint;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v11, v11, v9

    .line 752
    .local v11, "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v12

    .line 754
    .local v12, "Z1IsOne":Z
    const/4 v13, 0x0

    .line 756
    .local v13, "Z3Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-nez v12, :cond_5

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 760
    invoke-virtual {v4, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .local v14, "dx":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 761
    .local v15, "dy":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 763
    invoke-virtual {v15}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 765
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    return-object v8

    .line 767
    :cond_3
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    return-object v8

    .line 770
    :cond_4
    const/16 v16, 0x0

    invoke-virtual {v14}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 771
    .local v9, "C":Lorg/bouncycastle/math/ec/ECFieldElement;
    const/16 v17, 0x1

    invoke-virtual {v4, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    move/from16 v18, v12

    .end local v12    # "Z1IsOne":Z
    .local v8, "W1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v18, "Z1IsOne":Z
    invoke-virtual {v6, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 772
    .local v12, "W2":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v19, v9

    .end local v9    # "C":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v19, "C":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 774
    .local v9, "A1":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v20, v13

    .end local v13    # "Z3Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v20, "Z3Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 775
    .local v13, "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v21, v12

    .end local v12    # "W2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v21, "W2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12, v15}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 776
    .local v12, "Y3":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v22, v14

    .line 778
    .local v22, "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v23, v8

    move-object/from16 v8, v22

    .end local v22    # "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v8, "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v23, "W1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 779
    .end local v9    # "A1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "dx":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "dy":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "C":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "W2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "W1":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v25, v4

    move-object v4, v13

    move-object/from16 v13, v20

    goto/16 :goto_3

    .line 756
    .end local v8    # "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "Z1IsOne":Z
    .end local v20    # "Z3Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v12, "Z1IsOne":Z
    .local v13, "Z3Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_5
    move/from16 v18, v12

    move-object/from16 v20, v13

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 783
    .end local v12    # "Z1IsOne":Z
    .end local v13    # "Z3Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v18    # "Z1IsOne":Z
    .restart local v20    # "Z3Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-eqz v18, :cond_6

    .line 785
    move-object v8, v10

    .local v8, "Z1Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object v9, v6

    .local v9, "U2":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object v12, v7

    .local v12, "S2":Lorg/bouncycastle/math/ec/ECFieldElement;
    goto :goto_0

    .line 789
    .end local v8    # "Z1Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "U2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "S2":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_6
    invoke-virtual {v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 790
    .restart local v8    # "Z1Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 791
    .restart local v9    # "U2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 792
    .local v12, "Z1Cubed":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    move-object v12, v13

    .line 795
    .local v12, "S2":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    invoke-virtual {v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v13

    .line 797
    .local v13, "Z2IsOne":Z
    if-eqz v13, :cond_7

    .line 799
    move-object v14, v11

    .local v14, "Z2Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object v15, v4

    .local v15, "U1":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v19, v5

    move-object/from16 v30, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v30

    .local v19, "S1":Lorg/bouncycastle/math/ec/ECFieldElement;
    goto :goto_1

    .line 803
    .end local v14    # "Z2Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "U1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "S1":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_7
    invoke-virtual {v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 804
    .restart local v14    # "Z2Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 805
    .restart local v15    # "U1":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v19, v8

    .end local v8    # "Z1Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v19, "Z1Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 806
    .local v8, "Z2Cubed":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v21

    move-object/from16 v8, v21

    .line 809
    .local v8, "S1":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_1
    move/from16 v21, v13

    .end local v13    # "Z2IsOne":Z
    .local v21, "Z2IsOne":Z
    invoke-virtual {v15, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 810
    .local v13, "H":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v22, v9

    .end local v9    # "U2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v22, "U2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 813
    .local v9, "R":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v23

    if-eqz v23, :cond_9

    .line 815
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 818
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 822
    :cond_8
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 825
    :cond_9
    move-object/from16 v23, v12

    .end local v12    # "S2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v23, "S2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 826
    .local v12, "HSquared":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v24, v14

    .end local v14    # "Z2Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v24, "Z2Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 827
    .local v14, "G":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v25, v4

    .end local v4    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v25, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v15}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 829
    .local v4, "V":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v26, v12

    .end local v12    # "HSquared":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v26, "HSquared":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12, v14}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    move-object/from16 v27, v15

    .end local v15    # "U1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v27, "U1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v12, v15}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 830
    .local v12, "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v9, v14, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiplyMinusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 832
    .local v15, "Y3":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v28, v13

    .line 833
    .local v28, "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-nez v18, :cond_a

    .line 835
    move-object/from16 v29, v4

    move-object/from16 v4, v28

    .end local v28    # "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v4, "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v29, "V":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v28

    move-object/from16 v4, v28

    .end local v4    # "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v28    # "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    goto :goto_2

    .line 833
    .end local v29    # "V":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v4, "V":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_a
    move-object/from16 v29, v4

    move-object/from16 v4, v28

    .line 837
    .end local v28    # "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v4, "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v29    # "V":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_2
    if-nez v21, :cond_b

    .line 839
    invoke-virtual {v4, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 847
    :cond_b
    if-ne v4, v13, :cond_c

    .line 849
    move-object/from16 v20, v26

    move-object v8, v4

    move-object v4, v12

    move-object v12, v15

    move-object/from16 v13, v20

    goto :goto_3

    .line 847
    :cond_c
    move-object v8, v4

    move-object v4, v12

    move-object v12, v15

    move-object/from16 v13, v20

    .line 854
    .end local v9    # "R":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "G":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "Y3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "Z1Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "Z3Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "Z2IsOne":Z
    .end local v22    # "U2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "S2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "Z2Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "HSquared":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v27    # "U1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v29    # "V":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v4, "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v8, "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v12, "Y3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v13, "Z3Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_3
    const/4 v9, 0x4

    if-ne v3, v9, :cond_d

    .line 857
    invoke-virtual {v0, v8, v13}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 859
    .local v9, "W3":Lorg/bouncycastle/math/ec/ECFieldElement;
    const/4 v14, 0x2

    new-array v14, v14, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v8, v14, v16

    aput-object v9, v14, v17

    .line 860
    .end local v9    # "W3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v14, "zs":[Lorg/bouncycastle/math/ec/ECFieldElement;
    goto :goto_4

    .line 863
    .end local v14    # "zs":[Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_d
    const/4 v9, 0x1

    new-array v9, v9, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v8, v9, v16

    move-object v14, v9

    .line 866
    .restart local v14    # "zs":[Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_4
    new-instance v9, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v9, v2, v4, v12, v14}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v9

    .line 706
    .end local v8    # "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "Y3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "Z3Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "zs":[Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "Z1IsOne":Z
    .end local v25    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v4, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    :pswitch_2
    move-object/from16 v25, v4

    const/16 v16, 0x0

    .end local v4    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v25    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v4, v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v4, v4, v16

    .line 707
    .local v4, "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v8, v1, Lorg/bouncycastle/math/ec/ECPoint;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v8, v8, v16

    .line 709
    .local v8, "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v9

    .line 710
    .local v9, "Z1IsOne":Z
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v10

    .line 712
    .local v10, "Z2IsOne":Z
    if-eqz v9, :cond_e

    move-object v11, v7

    goto :goto_5

    :cond_e
    invoke-virtual {v7, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 713
    .local v11, "u1":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_5
    if-eqz v10, :cond_f

    move-object v12, v5

    goto :goto_6

    :cond_f
    invoke-virtual {v5, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 714
    .local v12, "u2":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_6
    invoke-virtual {v11, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 715
    .local v13, "u":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-eqz v9, :cond_10

    move-object v14, v6

    goto :goto_7

    :cond_10
    invoke-virtual {v6, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 716
    .local v14, "v1":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_7
    move-object/from16 v15, v25

    if-eqz v10, :cond_11

    move-object/from16 v18, v15

    goto :goto_8

    .end local v25    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v15, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_11
    invoke-virtual {v15, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v18

    :goto_8
    move-object/from16 v19, v18

    .line 717
    .local v19, "v2":Lorg/bouncycastle/math/ec/ECFieldElement;
    move/from16 v18, v3

    move-object/from16 v1, v19

    .end local v3    # "coord":I
    .end local v19    # "v2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v1, "v2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v18, "coord":I
    invoke-virtual {v14, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 720
    .local v3, "v":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v19

    if-eqz v19, :cond_13

    .line 722
    invoke-virtual {v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_12

    .line 725
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 729
    :cond_12
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 733
    :cond_13
    if-eqz v9, :cond_14

    move-object/from16 v19, v8

    goto :goto_9

    :cond_14
    if-eqz v10, :cond_15

    move-object/from16 v19, v4

    goto :goto_9

    :cond_15
    invoke-virtual {v4, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    :goto_9
    move-object/from16 v20, v19

    .line 734
    .local v20, "w":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v19, v4

    .end local v4    # "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v19, "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 735
    .local v4, "vSquared":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v21, v8

    .end local v8    # "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v21, "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 736
    .local v8, "vCubed":Lorg/bouncycastle/math/ec/ECFieldElement;
    move/from16 v22, v9

    .end local v9    # "Z1IsOne":Z
    .local v22, "Z1IsOne":Z
    invoke-virtual {v4, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 737
    .local v9, "vSquaredV2":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v23, v1

    .end local v1    # "v2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v23, "v2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    move-object/from16 v24, v4

    move-object/from16 v4, v20

    .end local v20    # "w":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v4, "w":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v24, "vSquared":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    move/from16 v20, v10

    .end local v10    # "Z2IsOne":Z
    .local v20, "Z2IsOne":Z
    invoke-virtual {v0, v9}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v1, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 739
    .local v1, "A":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 740
    .local v10, "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v13, v12, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiplyMinusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 741
    .local v0, "Y3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v25

    .line 743
    .local v25, "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v26, v1

    .end local v1    # "A":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v26, "A":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v1, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    move-object/from16 v27, v3

    const/4 v3, 0x1

    .end local v3    # "v":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v27, "v":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-array v3, v3, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v25, v3, v16

    invoke-direct {v1, v2, v10, v0, v3}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v1

    .line 683
    .end local v0    # "Y3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "vCubed":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "vSquaredV2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "u1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "u2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "u":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "v1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "coord":I
    .end local v19    # "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "Z2IsOne":Z
    .end local v21    # "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "Z1IsOne":Z
    .end local v23    # "v2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "vSquared":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "A":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v27    # "v":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v3, "coord":I
    .local v4, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    :pswitch_3
    move/from16 v18, v3

    move-object v15, v4

    .end local v3    # "coord":I
    .end local v4    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v15    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v18    # "coord":I
    invoke-virtual {v6, v15}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .local v0, "dx":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 685
    .local v1, "dy":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 687
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 690
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 694
    :cond_16
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 697
    :cond_17
    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 698
    .local v3, "gamma":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v15}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 699
    .local v4, "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 701
    .local v8, "Y3":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v9, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v9, v2, v4, v8}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected calculateJacobianModifiedW(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 5
    .param p1, "Z"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p2, "ZSquared"    # Lorg/bouncycastle/math/ec/ECFieldElement;
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

    .line 1286
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1287
    .local v0, "a4":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1292
    :cond_0
    if-nez p2, :cond_1

    .line 1294
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    .line 1297
    :cond_1
    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1298
    .local v1, "W":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->negate()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1299
    .local v2, "a4Neg":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v3

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1301
    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->negate()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    goto :goto_0

    .line 1305
    :cond_2
    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1307
    :goto_0
    return-object v1

    .line 1289
    .end local v1    # "W":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v2    # "a4Neg":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_3
    :goto_1
    return-object v0
.end method

.method protected detach()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 4

    .line 644
    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

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

    .line 1263
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

    .line 1253
    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->four(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

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

    .line 1248
    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected getJacobianModifiedW()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 5

    .line 1312
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 1313
    .local v0, "W":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-nez v0, :cond_0

    .line 1316
    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v0, v3

    aput-object v3, v2, v1

    .line 1318
    :cond_0
    return-object v0
.end method

.method public getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 649
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getCurveCoordinateSystem()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 651
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0

    .line 654
    :cond_0
    invoke-super {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 6

    .line 1268
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1270
    return-object p0

    .line 1273
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 1274
    .local v0, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v1

    .line 1276
    .local v1, "coord":I
    if-eqz v1, :cond_1

    .line 1278
    new-instance v2, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->negate()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-direct {v2, v0, v3, v4, v5}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v2

    .line 1281
    :cond_1
    new-instance v2, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->negate()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v2
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

    .line 1243
    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public threeTimes()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 17

    .line 1088
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1090
    return-object v0

    .line 1093
    :cond_0
    iget-object v1, v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 1094
    .local v1, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1096
    return-object v0

    .line 1099
    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 1100
    .local v2, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v3

    .line 1102
    .local v3, "coord":I
    sparse-switch v3, :sswitch_data_0

    .line 1135
    move-object/from16 v16, v1

    .end local v1    # "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v16, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 1130
    .end local v16    # "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v1    # "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    :sswitch_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lorg/bouncycastle/math/ec/ECPoint$Fp;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 1106
    :sswitch_1
    iget-object v4, v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 1108
    .local v4, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1109
    .local v5, "_2Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1110
    .local v6, "X":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->three(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1111
    .local v7, "Z":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1113
    .local v8, "Y":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->three(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1114
    .local v9, "d":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1116
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v10

    invoke-virtual {v10}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    return-object v10

    .line 1119
    :cond_2
    invoke-virtual {v9, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1120
    .local v10, "D":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->invert()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1121
    .local v11, "I":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1122
    .local v12, "L1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1124
    .local v13, "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v12, v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v14, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1125
    .local v14, "X4":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v14}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1126
    .local v15, "Y4":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v16, v1

    .end local v1    # "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v16    # "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v1, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v1, v2, v14, v15}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public timesPow2(I)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 20
    .param p1, "e"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1142
    move-object/from16 v0, p0

    move/from16 v1, p1

    if-ltz v1, :cond_a

    .line 1146
    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 1150
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1152
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 1155
    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    .line 1157
    .local v3, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    iget-object v4, v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 1158
    .local v4, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1160
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 1163
    :cond_2
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v5

    .line 1165
    .local v5, "coord":I
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1166
    .local v6, "W1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v7, v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 1167
    .local v7, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v8, v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    array-length v8, v8

    const/4 v9, 0x0

    if-ge v8, v2, :cond_3

    sget-object v8, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v8}, Lorg/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    goto :goto_0

    :cond_3
    iget-object v8, v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v8, v8, v9

    .line 1169
    .local v8, "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v10

    const-string/jumbo v11, "unsupported coordinate system"

    if-nez v10, :cond_4

    .line 1171
    packed-switch v5, :pswitch_data_0

    .line 1188
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1185
    :pswitch_1
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1186
    goto :goto_1

    .line 1182
    :pswitch_2
    const/4 v10, 0x0

    invoke-virtual {v0, v8, v10}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1183
    goto :goto_1

    .line 1176
    :pswitch_3
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1177
    .local v10, "Z1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1178
    invoke-virtual {v4, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1179
    invoke-virtual {v0, v8, v10}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1180
    goto :goto_1

    .line 1174
    .end local v10    # "Z1Sq":Lorg/bouncycastle/math/ec/ECFieldElement;
    :pswitch_4
    nop

    .line 1192
    :cond_4
    :goto_1
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v1, :cond_8

    .line 1194
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1196
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 1199
    :cond_5
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1200
    .local v12, "X1Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v12}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->three(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1201
    .local v13, "M":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1202
    .local v14, "_2Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1203
    .local v15, "_2Y1Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    const/16 v16, 0x0

    invoke-virtual {v7, v15}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1204
    .local v9, "S":Lorg/bouncycastle/math/ec/ECFieldElement;
    const/16 v17, 0x1

    invoke-virtual {v15}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1205
    .local v2, "_4T":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1207
    .local v1, "_8T":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v18

    if-nez v18, :cond_6

    .line 1209
    invoke-virtual {v13, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1210
    move-object/from16 v18, v2

    .end local v2    # "_4T":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v18, "_4T":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object v6, v2

    .end local v6    # "W1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v2, "W1":Lorg/bouncycastle/math/ec/ECFieldElement;
    goto :goto_3

    .line 1207
    .end local v18    # "_4T":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v2, "_4T":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v6    # "W1":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_6
    move-object/from16 v18, v2

    .line 1213
    .end local v2    # "_4T":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v18    # "_4T":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_3
    invoke-virtual {v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move/from16 v19, v5

    .end local v5    # "coord":I
    .local v19, "coord":I
    invoke-virtual {v0, v9}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1214
    invoke-virtual {v9, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1215
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v2, v14

    goto :goto_4

    :cond_7
    invoke-virtual {v14, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    :goto_4
    move-object v8, v2

    .line 1192
    .end local v1    # "_8T":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "S":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "X1Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "M":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "_2Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "_2Y1Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "_4T":Lorg/bouncycastle/math/ec/ECFieldElement;
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    move/from16 v5, v19

    const/4 v2, 0x1

    const/4 v9, 0x0

    goto :goto_2

    .end local v19    # "coord":I
    .restart local v5    # "coord":I
    :cond_8
    move/from16 v19, v5

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 1218
    .end local v5    # "coord":I
    .end local v10    # "i":I
    .restart local v19    # "coord":I
    packed-switch v19, :pswitch_data_1

    .line 1232
    :pswitch_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1230
    :pswitch_6
    new-instance v1, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v8, v2, v16

    aput-object v6, v2, v17

    invoke-direct {v1, v3, v7, v4, v2}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v1

    .line 1228
    :pswitch_7
    new-instance v1, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v8, v2, v16

    invoke-direct {v1, v3, v7, v4, v2}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v1

    .line 1224
    :pswitch_8
    const/4 v2, 0x1

    invoke-virtual {v7, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1225
    .end local v7    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v1, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v8, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1226
    .end local v8    # "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v5, "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v7, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    new-array v2, v2, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v5, v2, v16

    invoke-direct {v7, v3, v1, v4, v2}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v7

    .line 1221
    .end local v1    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v7    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v8    # "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    :pswitch_9
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->invert()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .local v1, "zInv":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .local v2, "zInv2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1222
    .local v5, "zInv3":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v9, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    invoke-virtual {v7, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v4, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-direct {v9, v3, v10, v11}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v9

    .line 1148
    .end local v1    # "zInv":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v2    # "zInv2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v3    # "curve":Lorg/bouncycastle/math/ec/ECCurve;
    .end local v4    # "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "zInv3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "W1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "coord":I
    :cond_9
    :goto_5
    return-object v0

    .line 1144
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'e\' cannot be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public twice()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 22

    .line 879
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 881
    return-object v0

    .line 884
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 886
    .local v1, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    iget-object v2, v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 887
    .local v2, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 889
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 892
    :cond_1
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v3

    .line 894
    .local v3, "coord":I
    iget-object v4, v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 896
    .local v4, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_0

    .line 1004
    :pswitch_0
    move/from16 v17, v3

    .end local v3    # "coord":I
    .local v17, "coord":I
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "unsupported coordinate system"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 999
    .end local v17    # "coord":I
    .restart local v3    # "coord":I
    :pswitch_1
    invoke-virtual {v0, v5}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lorg/bouncycastle/math/ec/ECPoint$Fp;

    move-result-object v5

    return-object v5

    .line 940
    :pswitch_2
    iget-object v7, v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v7, v7, v6

    .line 942
    .local v7, "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v8

    .line 944
    .local v8, "Z1IsOne":Z
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 945
    .local v9, "Y1Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 947
    .local v10, "T":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 948
    .local v11, "a4":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->negate()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 951
    .local v12, "a4Neg":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v13

    const-wide/16 v14, 0x3

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 953
    if-eqz v8, :cond_2

    move-object v13, v7

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 954
    .local v13, "Z1Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    invoke-virtual {v4, v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v4, v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v0, v14}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->three(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 955
    .local v14, "M":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v0, v15}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->four(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 956
    .local v13, "S":Lorg/bouncycastle/math/ec/ECFieldElement;
    move/from16 v17, v3

    const/16 v16, 0x0

    goto :goto_2

    .line 959
    .end local v13    # "S":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "M":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_3
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 960
    .local v13, "X1Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v13}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->three(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 961
    .restart local v14    # "M":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-eqz v8, :cond_4

    .line 963
    invoke-virtual {v14, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    move/from16 v17, v3

    const/16 v16, 0x0

    goto :goto_1

    .line 965
    :cond_4
    invoke-virtual {v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v15

    if-nez v15, :cond_6

    .line 967
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 968
    .local v15, "Z1Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    const/16 v16, 0x0

    invoke-virtual {v15}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 969
    .local v6, "Z1Pow4":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v5

    move/from16 v17, v3

    .end local v3    # "coord":I
    .restart local v17    # "coord":I
    invoke-virtual {v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v3

    if-ge v5, v3, :cond_5

    .line 971
    invoke-virtual {v6, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v14, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v14, v3

    .end local v14    # "M":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v3, "M":Lorg/bouncycastle/math/ec/ECFieldElement;
    goto :goto_1

    .line 975
    .end local v3    # "M":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v14    # "M":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_5
    invoke-virtual {v6, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v14, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v14, v3

    .end local v14    # "M":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v3    # "M":Lorg/bouncycastle/math/ec/ECFieldElement;
    goto :goto_1

    .line 965
    .end local v6    # "Z1Pow4":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "Z1Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "coord":I
    .local v3, "coord":I
    .restart local v14    # "M":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_6
    move/from16 v17, v3

    const/16 v16, 0x0

    .line 979
    .end local v3    # "coord":I
    .restart local v17    # "coord":I
    :goto_1
    invoke-virtual {v4, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->four(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v13, v3

    .line 982
    .local v13, "S":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_2
    invoke-virtual {v14}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v13}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 983
    .local v3, "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v14}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v0, v10}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->eight(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 985
    .local v5, "Y3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 986
    .local v6, "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-nez v8, :cond_7

    .line 988
    invoke-virtual {v6, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 994
    :cond_7
    new-instance v15, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    move-object/from16 v18, v6

    const/4 v6, 0x1

    .end local v6    # "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v18, "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-array v6, v6, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v18, v6, v16

    invoke-direct {v15, v1, v3, v5, v6}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v15

    .line 910
    .end local v5    # "Y3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "Z1IsOne":Z
    .end local v9    # "Y1Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "T":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "a4":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "a4Neg":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "S":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "M":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "coord":I
    .end local v18    # "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v3, "coord":I
    :pswitch_3
    move/from16 v17, v3

    const/16 v16, 0x0

    .end local v3    # "coord":I
    .restart local v17    # "coord":I
    iget-object v3, v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v3, v3, v16

    .line 912
    .local v3, "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v5

    .line 915
    .local v5, "Z1IsOne":Z
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 916
    .local v6, "w":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v7

    if-nez v7, :cond_8

    if-nez v5, :cond_8

    .line 918
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 920
    :cond_8
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->three(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 922
    if-eqz v5, :cond_9

    move-object v7, v2

    goto :goto_3

    :cond_9
    invoke-virtual {v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 923
    .local v7, "s":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_3
    if-eqz v5, :cond_a

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    goto :goto_4

    :cond_a
    invoke-virtual {v7, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 924
    .local v8, "t":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_4
    invoke-virtual {v4, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 925
    .local v9, "B":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v9}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->four(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 926
    .local v10, "_4B":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v0, v10}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 928
    .local v11, "h":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v7}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 929
    .local v12, "_2s":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 930
    .local v13, "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v8}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 931
    .local v14, "_2t":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    move-object/from16 v18, v3

    .end local v3    # "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v18, "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v15, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 932
    .local v3, "Y3":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-eqz v5, :cond_b

    invoke-virtual {v0, v14}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    goto :goto_5

    :cond_b
    invoke-virtual {v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 933
    .local v15, "_4sSquared":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_5
    move/from16 v19, v5

    .end local v5    # "Z1IsOne":Z
    .local v19, "Z1IsOne":Z
    invoke-virtual {v0, v15}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 935
    .local v5, "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v20, v5

    .end local v5    # "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v20, "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v5, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    move-object/from16 v21, v6

    const/4 v6, 0x1

    .end local v6    # "w":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v21, "w":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-array v6, v6, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v20, v6, v16

    invoke-direct {v5, v1, v13, v3, v6}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v5

    .line 900
    .end local v7    # "s":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "t":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "B":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "_4B":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "h":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "_2s":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "_2t":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "_4sSquared":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "coord":I
    .end local v18    # "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "Z1IsOne":Z
    .end local v20    # "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "w":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v3, "coord":I
    :pswitch_4
    move/from16 v17, v3

    .end local v3    # "coord":I
    .restart local v17    # "coord":I
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 901
    .local v3, "X1Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v3}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->three(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v0, v2}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 902
    .local v5, "gamma":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 903
    .local v6, "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 905
    .local v7, "Y3":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v8, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v8, v1, v6, v7}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected twiceJacobianModified(Z)Lorg/bouncycastle/math/ec/ECPoint$Fp;
    .locals 19
    .param p1, "calculateW"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "calculateW"
        }
    .end annotation

    .line 1323
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v1, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v2, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v3, v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .local v3, "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1325
    .local v5, "W1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1326
    .local v6, "X1Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v6}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->three(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1327
    .local v7, "M":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1328
    .local v8, "_2Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1329
    .local v9, "_2Y1Squared":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1330
    .local v10, "S":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v0, v10}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1331
    .local v11, "X3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1332
    .local v12, "_4T":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v12}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1333
    .local v13, "_8T":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v7, v14}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v14, v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1334
    .local v14, "Y3":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-eqz p1, :cond_0

    invoke-virtual {v13, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v0, v15}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    .line 1335
    .local v15, "W3":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v16

    if-eqz v16, :cond_1

    move-object/from16 v16, v8

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1337
    .local v16, "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_1
    const/16 v17, 0x0

    new-instance v4, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    move-object/from16 v18, v1

    .end local v1    # "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v18, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v16, v1, v17

    const/16 v17, 0x1

    aput-object v15, v1, v17

    invoke-direct {v4, v0, v11, v14, v1}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v4
.end method

.method public twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 19
    .param p1, "b"    # Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1011
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 1013
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->threeTimes()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 1015
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1017
    return-object v1

    .line 1019
    :cond_1
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1021
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 1024
    :cond_2
    iget-object v2, v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 1025
    .local v2, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1027
    return-object v1

    .line 1030
    :cond_3
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    .line 1031
    .local v3, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v4

    .line 1033
    .local v4, "coord":I
    sparse-switch v4, :sswitch_data_0

    .line 1081
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 1077
    :sswitch_0
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lorg/bouncycastle/math/ec/ECPoint$Fp;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5

    .line 1037
    :sswitch_1
    iget-object v5, v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 1038
    .local v5, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v6, v1, Lorg/bouncycastle/math/ec/ECPoint;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v6, "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v7, v1, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 1040
    .local v7, "Y2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .local v8, "dx":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1042
    .local v9, "dy":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1044
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1047
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->threeTimes()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    return-object v10

    .line 1051
    :cond_4
    return-object v0

    .line 1059
    :cond_5
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .local v10, "X":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1060
    .local v11, "Y":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v5}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1061
    .local v12, "d":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1063
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    return-object v13

    .line 1066
    :cond_6
    invoke-virtual {v12, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1067
    .local v13, "D":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->invert()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1068
    .local v14, "I":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v14}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1069
    .local v15, "L1":Lorg/bouncycastle/math/ec/ECFieldElement;
    move/from16 v16, v4

    .end local v4    # "coord":I
    .local v16, "coord":I
    invoke-virtual {v0, v2}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v14}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v15}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1070
    .local v4, "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v15}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v17, v7

    .end local v7    # "Y2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v17, "Y2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1071
    .local v0, "X4":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1073
    .local v7, "Y4":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v18, v2

    .end local v2    # "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v18, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v2, v3, v0, v7}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
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

    .line 1238
    invoke-virtual {p1, p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method
