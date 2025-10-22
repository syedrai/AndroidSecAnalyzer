.class public Landroidx/constraintlayout/core/widgets/Chain;
.super Ljava/lang/Object;
.source "Chain.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final USE_CHAIN_OPTIMIZATION:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;IILandroidx/constraintlayout/core/widgets/ChainHead;)V
    .locals 41
    .param p0, "container"    # Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroidx/constraintlayout/core/LinearSystem;
    .param p2, "orientation"    # I
    .param p3, "offset"    # I
    .param p4, "chainHead"    # Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 93
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v10, p2

    move-object/from16 v11, p4

    iget-object v12, v11, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 94
    .local v12, "first":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-object v13, v11, Landroidx/constraintlayout/core/widgets/ChainHead;->mLast:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 95
    .local v13, "last":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-object v14, v11, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 96
    .local v14, "firstVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-object v15, v11, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 97
    .local v15, "lastVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-object v2, v11, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 99
    .local v2, "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move-object v3, v12

    .line 100
    .local v3, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    const/4 v4, 0x0

    .line 101
    .local v4, "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    const/4 v5, 0x0

    .line 103
    .local v5, "done":Z
    iget v6, v11, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    .line 104
    .local v6, "totalWeights":F
    iget-object v7, v11, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 106
    .local v7, "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-object v8, v11, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 109
    .local v8, "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, v10

    move-object/from16 v16, v3

    .end local v3    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v16, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v17, v4

    .end local v4    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v17, "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-ne v9, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move/from16 v19, v3

    .line 111
    .local v19, "isWrapContent":Z
    const/4 v3, 0x0

    .line 112
    .local v3, "isChainSpread":Z
    const/4 v9, 0x0

    .line 113
    .local v9, "isChainSpreadInside":Z
    const/16 v20, 0x0

    .line 115
    .local v20, "isChainPacked":Z
    if-nez v10, :cond_4

    .line 116
    iget v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 117
    .end local v3    # "isChainSpread":Z
    .local v4, "isChainSpread":Z
    :goto_1
    iget v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v23, v4

    const/4 v4, 0x1

    .end local v4    # "isChainSpread":Z
    .local v23, "isChainSpread":Z
    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 119
    .end local v9    # "isChainSpreadInside":Z
    .local v3, "isChainSpreadInside":Z
    :goto_2
    iget v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    const/4 v9, 0x2

    if-ne v4, v9, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    move-object/from16 v20, v16

    move/from16 v16, v3

    move-object/from16 v3, v20

    move/from16 v22, v5

    move-object/from16 v20, v17

    move/from16 v17, v4

    .end local v20    # "isChainPacked":Z
    .local v4, "isChainPacked":Z
    goto :goto_7

    .line 121
    .end local v4    # "isChainPacked":Z
    .end local v23    # "isChainSpread":Z
    .local v3, "isChainSpread":Z
    .restart local v9    # "isChainSpreadInside":Z
    .restart local v20    # "isChainPacked":Z
    :cond_4
    iget v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    .line 122
    .end local v3    # "isChainSpread":Z
    .local v4, "isChainSpread":Z
    :goto_4
    iget v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v23, v4

    const/4 v4, 0x1

    .end local v4    # "isChainSpread":Z
    .restart local v23    # "isChainSpread":Z
    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    .line 123
    .end local v9    # "isChainSpreadInside":Z
    .local v3, "isChainSpreadInside":Z
    :goto_5
    iget v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    const/4 v9, 0x2

    if-ne v4, v9, :cond_7

    const/4 v4, 0x1

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    :goto_6
    move-object/from16 v20, v16

    move/from16 v16, v3

    move-object/from16 v3, v20

    move/from16 v22, v5

    move-object/from16 v20, v17

    move/from16 v17, v4

    .line 140
    .end local v5    # "done":Z
    .local v3, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v16, "isChainSpreadInside":Z
    .local v17, "isChainPacked":Z
    .local v20, "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v22, "done":Z
    :goto_7
    if-nez v22, :cond_16

    .line 141
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    .line 143
    .local v4, "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    const/16 v25, 0x4

    .line 144
    .local v25, "strength":I
    if-eqz v17, :cond_8

    .line 145
    const/16 v25, 0x1

    .line 147
    :cond_8
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v26

    .line 148
    .local v26, "margin":I
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, v10

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v5, :cond_9

    iget-object v5, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v5, v5, v10

    if-nez v5, :cond_9

    const/4 v5, 0x1

    goto :goto_8

    :cond_9
    const/4 v5, 0x0

    .line 153
    .local v5, "isSpreadOnly":Z
    :goto_8
    iget-object v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v9, :cond_a

    if-eq v3, v12, :cond_a

    .line 154
    iget-object v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    add-int v26, v26, v9

    move/from16 v9, v26

    goto :goto_9

    .line 157
    :cond_a
    move/from16 v9, v26

    .end local v26    # "margin":I
    .local v9, "margin":I
    :goto_9
    if-eqz v17, :cond_b

    if-eq v3, v12, :cond_b

    if-eq v3, v14, :cond_b

    .line 158
    const/16 v25, 0x8

    .line 161
    :cond_b
    move/from16 v26, v5

    .end local v5    # "isSpreadOnly":Z
    .local v26, "isSpreadOnly":Z
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v5, :cond_f

    .line 162
    if-ne v3, v14, :cond_c

    .line 163
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move/from16 v29, v6

    .end local v6    # "totalWeights":F
    .local v29, "totalWeights":F
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v30, v7

    const/4 v7, 0x6

    .end local v7    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v30, "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-virtual {v1, v5, v6, v9, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_a

    .line 166
    .end local v29    # "totalWeights":F
    .end local v30    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v6    # "totalWeights":F
    .restart local v7    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_c
    move/from16 v29, v6

    move-object/from16 v30, v7

    .end local v6    # "totalWeights":F
    .end local v7    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v29    # "totalWeights":F
    .restart local v30    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    const/16 v7, 0x8

    invoke-virtual {v1, v5, v6, v9, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 169
    :goto_a
    if-eqz v26, :cond_d

    if-nez v17, :cond_d

    .line 170
    const/16 v25, 0x5

    .line 172
    :cond_d
    if-ne v3, v14, :cond_e

    if-eqz v17, :cond_e

    .line 173
    invoke-virtual {v3, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInBarrier(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 174
    const/4 v5, 0x5

    .end local v25    # "strength":I
    .local v5, "strength":I
    goto :goto_b

    .line 176
    .end local v5    # "strength":I
    .restart local v25    # "strength":I
    :cond_e
    move/from16 v5, v25

    .end local v25    # "strength":I
    .restart local v5    # "strength":I
    :goto_b
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1, v6, v7, v9, v5}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move/from16 v25, v5

    goto :goto_c

    .line 161
    .end local v5    # "strength":I
    .end local v29    # "totalWeights":F
    .end local v30    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v6    # "totalWeights":F
    .restart local v7    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v25    # "strength":I
    :cond_f
    move/from16 v29, v6

    move-object/from16 v30, v7

    .line 180
    .end local v6    # "totalWeights":F
    .end local v7    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v29    # "totalWeights":F
    .restart local v30    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_c
    if-eqz v19, :cond_11

    .line 181
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v5

    const/16 v7, 0x8

    if-eq v5, v7, :cond_10

    iget-object v5, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v10

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_10

    .line 184
    iget-object v5, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v6, p3, 0x1

    aget-object v5, v5, v6

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v24, v4

    const/4 v4, 0x0

    const/4 v7, 0x5

    .end local v4    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v24, "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {v1, v5, v6, v4, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_d

    .line 181
    .end local v24    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v4    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :cond_10
    move-object/from16 v24, v4

    .line 188
    .end local v4    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v24    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :goto_d
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-virtual {v1, v4, v5, v6, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_e

    .line 180
    .end local v24    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v4    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :cond_11
    move-object/from16 v24, v4

    .line 194
    .end local v4    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v24    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :goto_e
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v5, p3, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 195
    .local v4, "nextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    if-eqz v4, :cond_14

    .line 196
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 197
    .end local v20    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v5, "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v6, :cond_13

    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eq v6, v3, :cond_12

    goto :goto_f

    :cond_12
    move-object/from16 v20, v5

    goto :goto_10

    .line 199
    :cond_13
    :goto_f
    const/4 v5, 0x0

    move-object/from16 v20, v5

    goto :goto_10

    .line 202
    .end local v5    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v20    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_14
    const/4 v5, 0x0

    move-object/from16 v20, v5

    .line 204
    :goto_10
    if-eqz v20, :cond_15

    .line 205
    move-object/from16 v3, v20

    goto :goto_11

    .line 207
    :cond_15
    const/4 v5, 0x1

    move/from16 v22, v5

    .line 209
    .end local v4    # "nextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v9    # "margin":I
    .end local v24    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v25    # "strength":I
    .end local v26    # "isSpreadOnly":Z
    :goto_11
    move/from16 v6, v29

    move-object/from16 v7, v30

    goto/16 :goto_7

    .line 212
    .end local v29    # "totalWeights":F
    .end local v30    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v6    # "totalWeights":F
    .restart local v7    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_16
    move/from16 v29, v6

    move-object/from16 v30, v7

    .end local v6    # "totalWeights":F
    .end local v7    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v29    # "totalWeights":F
    .restart local v30    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-eqz v15, :cond_1a

    iget-object v5, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v6, p3, 0x1

    aget-object v5, v5, v6

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v5, :cond_1a

    .line 213
    iget-object v5, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v6, p3, 0x1

    aget-object v5, v5, v6

    .line 214
    .local v5, "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v6, v10

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_17

    iget-object v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v6, v6, v10

    if-nez v6, :cond_17

    const/4 v6, 0x1

    goto :goto_12

    :cond_17
    const/4 v6, 0x0

    .line 218
    .local v6, "isSpreadOnly":Z
    :goto_12
    if-eqz v6, :cond_18

    if-nez v17, :cond_18

    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-ne v7, v0, :cond_18

    .line 219
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 220
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    neg-int v4, v4

    .line 219
    move-object/from16 v26, v3

    const/4 v3, 0x5

    .end local v3    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v26, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-virtual {v1, v7, v9, v4, v3}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    goto :goto_13

    .line 218
    .end local v26    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v3    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_18
    move-object/from16 v26, v3

    .line 221
    .end local v3    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v26    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-eqz v17, :cond_19

    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-ne v3, v0, :cond_19

    .line 222
    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 223
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    neg-int v7, v7

    .line 222
    const/4 v9, 0x4

    invoke-virtual {v1, v3, v4, v7, v9}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 225
    :cond_19
    :goto_13
    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v4, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v7, p3, 0x1

    aget-object v4, v4, v7

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 226
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    neg-int v7, v7

    .line 225
    const/4 v9, 0x6

    invoke-virtual {v1, v3, v4, v7, v9}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_14

    .line 212
    .end local v5    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v6    # "isSpreadOnly":Z
    .end local v26    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v3    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_1a
    move-object/from16 v26, v3

    .line 231
    .end local v3    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v26    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_14
    if-eqz v19, :cond_1b

    .line 232
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v4, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v5, p3, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v5, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v6, p3, 0x1

    aget-object v5, v5, v6

    .line 234
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    .line 232
    const/16 v7, 0x8

    invoke-virtual {v1, v3, v4, v5, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 238
    :cond_1b
    iget-object v3, v11, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 240
    .local v3, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    if-eqz v3, :cond_23

    .line 241
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 242
    .local v4, "count":I
    const/4 v5, 0x1

    if-le v4, v5, :cond_22

    .line 243
    const/4 v6, 0x0

    .line 244
    .local v6, "lastMatch":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    const/4 v7, 0x0

    .line 246
    .local v7, "lastWeight":F
    iget-boolean v9, v11, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasUndefinedWeights:Z

    if-eqz v9, :cond_1c

    iget-boolean v9, v11, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-nez v9, :cond_1c

    .line 247
    iget v9, v11, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    int-to-float v9, v9

    move/from16 v33, v9

    .end local v29    # "totalWeights":F
    .local v9, "totalWeights":F
    goto :goto_15

    .line 250
    .end local v9    # "totalWeights":F
    .restart local v29    # "totalWeights":F
    :cond_1c
    move/from16 v33, v29

    .end local v29    # "totalWeights":F
    .local v33, "totalWeights":F
    :goto_15
    const/4 v9, 0x0

    move/from16 v32, v7

    .end local v7    # "lastWeight":F
    .local v9, "i":I
    .local v32, "lastWeight":F
    :goto_16
    if-ge v9, v4, :cond_21

    .line 251
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 252
    .local v7, "match":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-object v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    aget v5, v5, v10

    .line 254
    .local v5, "currentWeight":F
    const/16 v24, 0x0

    cmpg-float v28, v5, v24

    if-gez v28, :cond_1e

    .line 255
    iget-boolean v0, v11, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-eqz v0, :cond_1d

    .line 256
    iget-object v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v24, p3, 0x1

    aget-object v0, v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v28, v3

    .end local v3    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .local v28, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    iget-object v3, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move/from16 v39, v4

    move/from16 v25, v5

    const/4 v4, 0x4

    const/4 v5, 0x0

    .end local v4    # "count":I
    .end local v5    # "currentWeight":F
    .local v25, "currentWeight":F
    .local v39, "count":I
    invoke-virtual {v1, v0, v3, v5, v4}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 259
    const/4 v4, 0x0

    goto/16 :goto_18

    .line 261
    .end local v25    # "currentWeight":F
    .end local v28    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .end local v39    # "count":I
    .restart local v3    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .restart local v4    # "count":I
    .restart local v5    # "currentWeight":F
    :cond_1d
    move-object/from16 v28, v3

    move/from16 v39, v4

    move/from16 v25, v5

    const/4 v4, 0x4

    .end local v3    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .end local v4    # "count":I
    .end local v5    # "currentWeight":F
    .restart local v25    # "currentWeight":F
    .restart local v28    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .restart local v39    # "count":I
    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v34, v5

    .end local v25    # "currentWeight":F
    .restart local v5    # "currentWeight":F
    goto :goto_17

    .line 254
    .end local v28    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .end local v39    # "count":I
    .restart local v3    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .restart local v4    # "count":I
    :cond_1e
    move-object/from16 v28, v3

    move/from16 v39, v4

    move/from16 v25, v5

    const/4 v4, 0x4

    .end local v3    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .end local v4    # "count":I
    .end local v5    # "currentWeight":F
    .restart local v25    # "currentWeight":F
    .restart local v28    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .restart local v39    # "count":I
    move/from16 v34, v25

    .line 263
    .end local v25    # "currentWeight":F
    .local v34, "currentWeight":F
    :goto_17
    cmpl-float v0, v34, v24

    if-nez v0, :cond_1f

    .line 264
    iget-object v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v0, v0, v3

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v3, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-virtual {v1, v0, v3, v4, v5}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 267
    goto :goto_18

    .line 270
    :cond_1f
    const/4 v4, 0x0

    if-eqz v6, :cond_20

    .line 271
    iget-object v0, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 272
    .local v0, "begin":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v3, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v5, p3, 0x1

    aget-object v3, v3, v5

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 273
    .local v3, "end":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 274
    .local v5, "nextBegin":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v4, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v24, p3, 0x1

    aget-object v4, v4, v24

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 275
    .local v4, "nextEnd":Landroidx/constraintlayout/core/SolverVariable;
    invoke-virtual {v1}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v31

    .line 276
    .local v31, "row":Landroidx/constraintlayout/core/ArrayRow;
    move-object/from16 v35, v0

    move-object/from16 v36, v3

    move-object/from16 v38, v4

    move-object/from16 v37, v5

    .end local v0    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .end local v3    # "end":Landroidx/constraintlayout/core/SolverVariable;
    .end local v4    # "nextEnd":Landroidx/constraintlayout/core/SolverVariable;
    .end local v5    # "nextBegin":Landroidx/constraintlayout/core/SolverVariable;
    .local v35, "begin":Landroidx/constraintlayout/core/SolverVariable;
    .local v36, "end":Landroidx/constraintlayout/core/SolverVariable;
    .local v37, "nextBegin":Landroidx/constraintlayout/core/SolverVariable;
    .local v38, "nextEnd":Landroidx/constraintlayout/core/SolverVariable;
    invoke-virtual/range {v31 .. v38}, Landroidx/constraintlayout/core/ArrayRow;->createRowEqualMatchDimensions(FFFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/ArrayRow;

    .line 278
    move-object/from16 v0, v31

    .end local v31    # "row":Landroidx/constraintlayout/core/ArrayRow;
    .local v0, "row":Landroidx/constraintlayout/core/ArrayRow;
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 281
    .end local v0    # "row":Landroidx/constraintlayout/core/ArrayRow;
    .end local v35    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .end local v36    # "end":Landroidx/constraintlayout/core/SolverVariable;
    .end local v37    # "nextBegin":Landroidx/constraintlayout/core/SolverVariable;
    .end local v38    # "nextEnd":Landroidx/constraintlayout/core/SolverVariable;
    :cond_20
    move-object v0, v7

    .line 282
    .end local v6    # "lastMatch":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v0, "lastMatch":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move/from16 v3, v34

    move-object v6, v0

    move/from16 v32, v3

    .line 250
    .end local v0    # "lastMatch":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v7    # "match":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v34    # "currentWeight":F
    .restart local v6    # "lastMatch":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_18
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v28

    move/from16 v4, v39

    goto/16 :goto_16

    .end local v28    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .end local v39    # "count":I
    .local v3, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .local v4, "count":I
    :cond_21
    move-object/from16 v28, v3

    move/from16 v39, v4

    .end local v3    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .end local v4    # "count":I
    .restart local v28    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .restart local v39    # "count":I
    move/from16 v29, v33

    goto :goto_19

    .line 242
    .end local v6    # "lastMatch":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v9    # "i":I
    .end local v28    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .end local v32    # "lastWeight":F
    .end local v33    # "totalWeights":F
    .end local v39    # "count":I
    .restart local v3    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .restart local v4    # "count":I
    .restart local v29    # "totalWeights":F
    :cond_22
    move-object/from16 v28, v3

    move/from16 v39, v4

    .end local v3    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .end local v4    # "count":I
    .restart local v28    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .restart local v39    # "count":I
    goto :goto_19

    .line 240
    .end local v28    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .end local v39    # "count":I
    .restart local v3    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    :cond_23
    move-object/from16 v28, v3

    .line 301
    .end local v3    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .restart local v28    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    :goto_19
    if-eqz v14, :cond_2b

    if-eq v14, v15, :cond_25

    if-eqz v17, :cond_24

    goto :goto_1a

    :cond_24
    move-object/from16 v24, v2

    move-object/from16 v25, v8

    goto/16 :goto_1f

    .line 303
    :cond_25
    :goto_1a
    iget-object v3, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    .line 304
    .local v3, "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v4, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v5, p3, 0x1

    aget-object v4, v4, v5

    .line 305
    .local v4, "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v5, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v5, :cond_26

    .line 306
    iget-object v5, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_1b

    :cond_26
    const/4 v5, 0x0

    .line 307
    .local v5, "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    :goto_1b
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v6, :cond_27

    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_1c

    :cond_27
    const/4 v6, 0x0

    .line 308
    .local v6, "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    :goto_1c
    iget-object v7, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v3, v7, p3

    .line 309
    if-eqz v15, :cond_28

    .line 310
    iget-object v7, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v9, p3, 0x1

    aget-object v4, v7, v9

    .line 312
    :cond_28
    if-eqz v5, :cond_2a

    if-eqz v6, :cond_2a

    .line 313
    const/high16 v7, 0x3f000000    # 0.5f

    .line 314
    .local v7, "bias":F
    if-nez v10, :cond_29

    .line 315
    iget v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    goto :goto_1d

    .line 317
    :cond_29
    iget v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 319
    :goto_1d
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    .line 320
    .local v9, "beginMargin":I
    move-object/from16 v18, v8

    .end local v8    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v18, "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    .line 321
    .local v8, "endMargin":I
    move-object/from16 v21, v2

    .end local v2    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v21, "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v24, v3

    move-object v3, v5

    move v5, v7

    .end local v7    # "bias":F
    .local v3, "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v5, "bias":F
    .restart local v24    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v25, v4

    move v4, v9

    .end local v9    # "beginMargin":I
    .local v4, "beginMargin":I
    .local v25, "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    const/4 v9, 0x7

    move-object/from16 v40, v25

    move-object/from16 v25, v18

    move-object/from16 v18, v24

    move-object/from16 v24, v21

    move-object/from16 v21, v40

    .local v18, "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v21, "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v24, "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v25, "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_1e

    .line 312
    .end local v18    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v21    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v24    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v25    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v2    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v3, "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v4, "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v5, "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v8, "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_2a
    move-object/from16 v24, v2

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move-object v3, v5

    move-object/from16 v25, v8

    .line 325
    .end local v2    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v3    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v4    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v5    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local v6    # "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local v8    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v24    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v25    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_1e
    move-object/from16 v1, p1

    goto/16 :goto_36

    .line 301
    .end local v24    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v25    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v2    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v8    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_2b
    move-object/from16 v24, v2

    move-object/from16 v25, v8

    .line 325
    .end local v2    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v8    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v24    # "head":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v25    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_1f
    if-eqz v23, :cond_3e

    if-eqz v14, :cond_3e

    .line 327
    move-object v1, v14

    .line 328
    .end local v26    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v1, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move-object v2, v14

    .line 329
    .local v2, "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget v3, v11, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v3, :cond_2c

    iget v3, v11, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    iget v4, v11, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    if-ne v3, v4, :cond_2c

    const/4 v4, 0x1

    goto :goto_20

    :cond_2c
    const/4 v4, 0x0

    :goto_20
    move/from16 v18, v4

    move-object/from16 v40, v2

    move-object v2, v1

    move-object/from16 v1, v40

    .line 331
    .local v1, "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v2, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v18, "applyFixedEquality":Z
    :goto_21
    if-eqz v2, :cond_3d

    .line 332
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v3, v3, v10

    .line 333
    .end local v20    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v3, "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_22
    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    const/16 v7, 0x8

    if-ne v4, v7, :cond_2e

    .line 334
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v3, v4, v10

    goto :goto_22

    .line 333
    :cond_2d
    const/16 v7, 0x8

    .line 336
    :cond_2e
    if-nez v3, :cond_30

    if-ne v2, v15, :cond_2f

    goto :goto_23

    :cond_2f
    move-object/from16 v34, v1

    move-object/from16 v33, v2

    move-object/from16 v26, v3

    const/16 v0, 0x8

    goto/16 :goto_2a

    .line 337
    :cond_30
    :goto_23
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    .line 338
    .local v4, "beginAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 339
    .local v5, "begin":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v6, :cond_31

    .line 340
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_24

    :cond_31
    const/4 v6, 0x0

    .line 341
    .local v6, "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    :goto_24
    if-eq v1, v2, :cond_32

    .line 342
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v9, p3, 0x1

    aget-object v8, v8, v9

    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_26

    .line 344
    :cond_32
    if-ne v2, v14, :cond_34

    .line 345
    iget-object v8, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v8, :cond_33

    .line 346
    iget-object v8, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_25

    :cond_33
    const/4 v8, 0x0

    :goto_25
    move-object v6, v8

    .line 349
    :cond_34
    :goto_26
    const/4 v8, 0x0

    .line 350
    .local v8, "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    const/4 v9, 0x0

    .line 351
    .local v9, "beginNext":Landroidx/constraintlayout/core/SolverVariable;
    const/16 v20, 0x0

    .line 352
    .local v20, "beginNextTarget":Landroidx/constraintlayout/core/SolverVariable;
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v21

    .line 353
    .local v21, "beginMargin":I
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v26, p3, 0x1

    aget-object v0, v0, v26

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    .line 355
    .local v0, "nextMargin":I
    if-eqz v3, :cond_35

    .line 356
    iget-object v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    .line 357
    .end local v8    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v7, "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v31, v7

    goto :goto_27

    .line 359
    .end local v7    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v8    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :cond_35
    iget-object v7, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v31, p3, 0x1

    aget-object v7, v7, v31

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 360
    .end local v8    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v7    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    if-eqz v7, :cond_36

    .line 361
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v31, v7

    goto :goto_27

    .line 360
    :cond_36
    move-object/from16 v31, v7

    .line 364
    .end local v7    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v31, "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :goto_27
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v8, p3, 0x1

    aget-object v7, v7, v8

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 366
    .end local v20    # "beginNextTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v7, "beginNextTarget":Landroidx/constraintlayout/core/SolverVariable;
    if-eqz v31, :cond_37

    .line 367
    invoke-virtual/range {v31 .. v31}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    add-int/2addr v0, v8

    .line 369
    :cond_37
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v20, p3, 0x1

    aget-object v8, v8, v20

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    add-int v21, v21, v8

    .line 370
    if-eqz v5, :cond_3b

    if-eqz v6, :cond_3b

    if-eqz v9, :cond_3b

    if-eqz v7, :cond_3b

    .line 372
    move/from16 v8, v21

    .line 373
    .local v8, "margin1":I
    if-ne v2, v14, :cond_38

    .line 374
    move/from16 v20, v0

    .end local v0    # "nextMargin":I
    .local v20, "nextMargin":I
    iget-object v0, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    goto :goto_28

    .line 373
    .end local v20    # "nextMargin":I
    .restart local v0    # "nextMargin":I
    :cond_38
    move/from16 v20, v0

    .line 376
    .end local v0    # "nextMargin":I
    .restart local v20    # "nextMargin":I
    :goto_28
    move/from16 v0, v20

    .line 377
    .local v0, "margin2":I
    if-ne v2, v15, :cond_39

    .line 378
    move/from16 v32, v0

    .end local v0    # "margin2":I
    .local v32, "margin2":I
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v33, p3, 0x1

    aget-object v0, v0, v33

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    .end local v32    # "margin2":I
    .restart local v0    # "margin2":I
    goto :goto_29

    .line 377
    :cond_39
    move/from16 v32, v0

    .line 380
    :goto_29
    const/16 v32, 0x5

    .line 381
    .local v32, "strength":I
    if-eqz v18, :cond_3a

    .line 382
    const/16 v32, 0x8

    .line 384
    :cond_3a
    move-object/from16 v33, v2

    move-object v2, v5

    .end local v5    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .local v2, "begin":Landroidx/constraintlayout/core/SolverVariable;
    .local v33, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v34, v1

    move-object/from16 v26, v3

    move-object v3, v6

    move-object v6, v9

    move/from16 v9, v32

    move-object/from16 v1, p1

    move-object/from16 v32, v4

    move v4, v8

    move v8, v0

    const/16 v0, 0x8

    .end local v0    # "margin2":I
    .end local v1    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v3, "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v4, "margin1":I
    .local v6, "beginNext":Landroidx/constraintlayout/core/SolverVariable;
    .local v8, "margin2":I
    .local v9, "strength":I
    .local v26, "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v32, "beginAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v34, "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_2a

    .line 370
    .end local v8    # "margin2":I
    .end local v20    # "nextMargin":I
    .end local v26    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v32    # "beginAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v33    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v34    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v0, "nextMargin":I
    .restart local v1    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v2, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v3, "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v4, "beginAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v5    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .local v6, "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v9, "beginNext":Landroidx/constraintlayout/core/SolverVariable;
    :cond_3b
    move/from16 v20, v0

    move-object/from16 v34, v1

    move-object/from16 v33, v2

    move-object/from16 v26, v3

    move-object/from16 v32, v4

    move-object v2, v5

    move-object v3, v6

    move-object v6, v9

    const/16 v0, 0x8

    .line 389
    .end local v0    # "nextMargin":I
    .end local v1    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v2    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v3    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v4    # "beginAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v5    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .end local v6    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local v7    # "beginNextTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local v9    # "beginNext":Landroidx/constraintlayout/core/SolverVariable;
    .end local v21    # "beginMargin":I
    .end local v31    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v26    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v33    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v34    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_2a
    invoke-virtual/range {v33 .. v33}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_3c

    .line 390
    move-object/from16 v1, v33

    .end local v34    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v1    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    goto :goto_2b

    .line 389
    .end local v1    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v34    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_3c
    move-object/from16 v1, v34

    .line 392
    .end local v34    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v1    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_2b
    move-object/from16 v2, v26

    move-object/from16 v20, v26

    .end local v33    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v2    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    goto/16 :goto_21

    .line 331
    .end local v26    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v20, "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_3d
    move-object/from16 v34, v1

    move-object/from16 v33, v2

    .line 394
    .end local v1    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v2    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v18    # "applyFixedEquality":Z
    .restart local v33    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move-object/from16 v1, p1

    move-object/from16 v31, v33

    goto/16 :goto_37

    .line 325
    .end local v33    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v26, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_3e
    const/16 v0, 0x8

    .line 394
    if-eqz v16, :cond_4f

    if-eqz v14, :cond_4f

    .line 396
    move-object v1, v14

    .line 397
    .end local v26    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v1, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move-object v2, v14

    .line 398
    .local v2, "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget v3, v11, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v3, :cond_3f

    iget v3, v11, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    iget v4, v11, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    if-ne v3, v4, :cond_3f

    const/4 v4, 0x1

    goto :goto_2c

    :cond_3f
    const/4 v4, 0x0

    :goto_2c
    move/from16 v18, v4

    move-object/from16 v40, v2

    move-object v2, v1

    move-object/from16 v1, v40

    .line 400
    .local v1, "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v2, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v18    # "applyFixedEquality":Z
    :goto_2d
    if-eqz v2, :cond_4b

    .line 401
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v3, v3, v10

    .line 402
    .end local v20    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v3    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_2e
    if-eqz v3, :cond_40

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    if-ne v4, v0, :cond_40

    .line 403
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v3, v4, v10

    goto :goto_2e

    .line 405
    :cond_40
    if-eq v2, v14, :cond_49

    if-eq v2, v15, :cond_49

    if-eqz v3, :cond_49

    .line 406
    if-ne v3, v15, :cond_41

    .line 407
    const/4 v3, 0x0

    .line 409
    :cond_41
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    .line 410
    .restart local v4    # "beginAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 412
    .restart local v5    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v6, :cond_42

    .line 413
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_2f

    :cond_42
    const/4 v6, 0x0

    .line 414
    .restart local v6    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    :goto_2f
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v8, p3, 0x1

    aget-object v7, v7, v8

    iget-object v6, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 415
    const/4 v7, 0x0

    .line 416
    .local v7, "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    const/4 v8, 0x0

    .line 417
    .local v8, "beginNext":Landroidx/constraintlayout/core/SolverVariable;
    const/4 v9, 0x0

    .line 418
    .local v9, "beginNextTarget":Landroidx/constraintlayout/core/SolverVariable;
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v20

    .line 419
    .local v20, "beginMargin":I
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v26, p3, 0x1

    aget-object v0, v0, v26

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    .line 421
    .restart local v0    # "nextMargin":I
    if-eqz v3, :cond_44

    .line 422
    move/from16 v26, v0

    .end local v0    # "nextMargin":I
    .local v26, "nextMargin":I
    iget-object v0, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    .line 423
    .end local v7    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v0, "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 424
    .end local v8    # "beginNext":Landroidx/constraintlayout/core/SolverVariable;
    .local v7, "beginNext":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v8, :cond_43

    .line 425
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_30

    :cond_43
    const/4 v8, 0x0

    .end local v9    # "beginNextTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v8, "beginNextTarget":Landroidx/constraintlayout/core/SolverVariable;
    :goto_30
    goto :goto_31

    .line 427
    .end local v26    # "nextMargin":I
    .local v0, "nextMargin":I
    .local v7, "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v8, "beginNext":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v9    # "beginNextTarget":Landroidx/constraintlayout/core/SolverVariable;
    :cond_44
    move/from16 v26, v0

    .end local v0    # "nextMargin":I
    .restart local v26    # "nextMargin":I
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    .line 428
    .end local v7    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v0, "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    if-eqz v0, :cond_45

    .line 429
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 431
    :cond_45
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v31, p3, 0x1

    aget-object v7, v7, v31

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v40, v8

    move-object v8, v7

    move-object/from16 v7, v40

    .line 434
    .end local v9    # "beginNextTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v7, "beginNext":Landroidx/constraintlayout/core/SolverVariable;
    .local v8, "beginNextTarget":Landroidx/constraintlayout/core/SolverVariable;
    :goto_31
    if-eqz v0, :cond_46

    .line 435
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    add-int v9, v26, v9

    .end local v26    # "nextMargin":I
    .local v9, "nextMargin":I
    goto :goto_32

    .line 434
    .end local v9    # "nextMargin":I
    .restart local v26    # "nextMargin":I
    :cond_46
    move/from16 v9, v26

    .line 437
    .end local v26    # "nextMargin":I
    .restart local v9    # "nextMargin":I
    :goto_32
    move-object/from16 v26, v0

    .end local v0    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v26, "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v31, p3, 0x1

    aget-object v0, v0, v31

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    add-int v20, v20, v0

    .line 438
    const/4 v0, 0x4

    .line 439
    .local v0, "strength":I
    if-eqz v18, :cond_47

    .line 440
    const/16 v0, 0x8

    .line 442
    :cond_47
    if-eqz v5, :cond_48

    if-eqz v6, :cond_48

    if-eqz v7, :cond_48

    if-eqz v8, :cond_48

    .line 444
    move-object/from16 v31, v2

    move-object v2, v5

    .end local v5    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .local v2, "begin":Landroidx/constraintlayout/core/SolverVariable;
    .local v31, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    const/high16 v5, 0x3f000000    # 0.5f

    move/from16 v32, v20

    move-object/from16 v20, v4

    move/from16 v4, v32

    move-object/from16 v32, v3

    move-object v3, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v0

    move-object v0, v1

    move-object/from16 v1, p1

    .end local v1    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v0, "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v3, "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v4, "beginMargin":I
    .local v6, "beginNext":Landroidx/constraintlayout/core/SolverVariable;
    .local v7, "beginNextTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v8, "nextMargin":I
    .local v9, "strength":I
    .local v20, "beginAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v32, "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_33

    .line 442
    .end local v31    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v32    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v0, "strength":I
    .restart local v1    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v2, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v3, "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v4, "beginAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v5    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .local v6, "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v7, "beginNext":Landroidx/constraintlayout/core/SolverVariable;
    .local v8, "beginNextTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v9, "nextMargin":I
    .local v20, "beginMargin":I
    :cond_48
    move/from16 v31, v20

    move-object/from16 v20, v4

    move/from16 v4, v31

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object v2, v5

    move-object v3, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v0

    move-object v0, v1

    move-object/from16 v1, p1

    .line 449
    .end local v1    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v2    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v3    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v4    # "beginAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v5    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .end local v6    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local v7    # "beginNext":Landroidx/constraintlayout/core/SolverVariable;
    .end local v8    # "beginNextTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local v9    # "nextMargin":I
    .end local v20    # "beginMargin":I
    .end local v26    # "beginNextAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v0, "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v31    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v32    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_33
    move-object/from16 v20, v32

    goto :goto_34

    .line 405
    .end local v0    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v31    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v32    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v1    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v2    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v3    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_49
    move-object v0, v1

    move-object/from16 v31, v2

    move-object/from16 v1, p1

    .line 449
    .end local v1    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v2    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v0    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v31    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move-object/from16 v20, v3

    .end local v3    # "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v20, "next":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_34
    invoke-virtual/range {v31 .. v31}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    const/16 v7, 0x8

    if-eq v2, v7, :cond_4a

    .line 450
    move-object/from16 v0, v31

    .line 452
    :cond_4a
    move-object/from16 v2, v20

    move-object v1, v0

    const/16 v0, 0x8

    .end local v31    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v2    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    goto/16 :goto_2d

    .line 454
    .end local v0    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v1    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_4b
    move-object v0, v1

    move-object/from16 v31, v2

    move-object/from16 v1, p1

    .end local v1    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v2    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v0    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v31    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-object v2, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    .line 455
    .local v2, "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v3, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 456
    .local v3, "beginTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v4, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v5, p3, 0x1

    aget-object v4, v4, v5

    .line 457
    .local v4, "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v5, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v6, p3, 0x1

    aget-object v5, v5, v6

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 458
    .local v5, "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    const/4 v9, 0x5

    .line 459
    .local v9, "endPointsStrength":I
    if-eqz v3, :cond_4e

    .line 460
    if-eq v14, v15, :cond_4c

    .line 461
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 462
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    .line 461
    invoke-virtual {v1, v6, v7, v8, v9}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-object/from16 v32, v0

    move-object/from16 v21, v2

    move-object/from16 v26, v3

    move-object v0, v4

    move-object v10, v5

    goto :goto_35

    .line 463
    :cond_4c
    if-eqz v5, :cond_4d

    .line 464
    move-object v6, v2

    .end local v2    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v6, "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object v7, v3

    .end local v3    # "beginTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v7, "beginTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v3, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 465
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    move-object/from16 v21, v6

    .end local v6    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v21, "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v26, v7

    .end local v7    # "beginTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v26, "beginTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 466
    move-object/from16 v32, v4

    move v4, v8

    .end local v4    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v32, "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    .line 464
    move-object/from16 v33, v5

    .end local v5    # "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v33, "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v10, v32

    move-object/from16 v32, v0

    move-object v0, v10

    move-object/from16 v10, v33

    .end local v33    # "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v0, "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v10, "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v32, "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_35

    .line 463
    .end local v10    # "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v21    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v26    # "beginTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v32    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v0, "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v2    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v3    # "beginTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v4    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v5    # "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :cond_4d
    move-object/from16 v32, v0

    move-object/from16 v21, v2

    move-object/from16 v26, v3

    move-object v0, v4

    move-object v10, v5

    .end local v2    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v3    # "beginTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v4    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v5    # "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v0, "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v10    # "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v21    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v26    # "beginTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v32    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    goto :goto_35

    .line 459
    .end local v10    # "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v21    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v26    # "beginTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v32    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v0, "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v2    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v3    # "beginTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v4    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v5    # "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :cond_4e
    move-object/from16 v32, v0

    move-object/from16 v21, v2

    move-object/from16 v26, v3

    move-object v0, v4

    move-object v10, v5

    .line 469
    .end local v2    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v3    # "beginTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v4    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v5    # "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v0, "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v10    # "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v21    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v26    # "beginTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v32    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_35
    if-eqz v10, :cond_50

    if-eq v14, v15, :cond_50

    .line 470
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v3, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 471
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    neg-int v4, v4

    .line 470
    invoke-virtual {v1, v2, v3, v4, v9}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    goto :goto_37

    .line 394
    .end local v0    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v9    # "endPointsStrength":I
    .end local v10    # "endTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v18    # "applyFixedEquality":Z
    .end local v21    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v31    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v32    # "previousVisibleWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v26, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_4f
    move-object/from16 v1, p1

    .line 477
    :goto_36
    move-object/from16 v31, v26

    .end local v26    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v31    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_50
    :goto_37
    if-nez v23, :cond_51

    if-eqz v16, :cond_58

    :cond_51
    if-eqz v14, :cond_58

    if-eq v14, v15, :cond_58

    .line 479
    iget-object v0, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    .line 480
    .local v0, "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    if-nez v15, :cond_52

    .line 481
    move-object v15, v14

    .line 483
    :cond_52
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    .line 485
    .local v2, "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_53

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_38

    :cond_53
    const/4 v3, 0x0

    .line 486
    .local v3, "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    :goto_38
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v4, :cond_54

    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_39

    :cond_54
    const/4 v4, 0x0

    .line 487
    .local v4, "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    :goto_39
    if-eq v13, v15, :cond_56

    .line 488
    iget-object v5, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v6, p3, 0x1

    aget-object v5, v5, v6

    .line 489
    .local v5, "realEnd":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v6, :cond_55

    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v27, v6

    goto :goto_3a

    :cond_55
    const/16 v27, 0x0

    :goto_3a
    move-object/from16 v4, v27

    move-object v6, v4

    goto :goto_3b

    .line 487
    .end local v5    # "realEnd":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :cond_56
    move-object v6, v4

    .line 491
    .end local v4    # "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v6, "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    :goto_3b
    if-ne v14, v15, :cond_57

    .line 492
    iget-object v4, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v0, v4, p3

    .line 493
    iget-object v4, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v5, p3, 0x1

    aget-object v2, v4, v5

    move-object v10, v2

    goto :goto_3c

    .line 491
    :cond_57
    move-object v10, v2

    .line 495
    .end local v2    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v10, "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :goto_3c
    if-eqz v3, :cond_58

    if-eqz v6, :cond_58

    .line 496
    const/high16 v5, 0x3f000000    # 0.5f

    .line 497
    .local v5, "bias":F
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 498
    .local v4, "beginMargin":I
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v7, p3, 0x1

    aget-object v2, v2, v7

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    .line 499
    .local v8, "endMargin":I
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v7, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    const/4 v9, 0x5

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 504
    .end local v0    # "begin":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v3    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local v4    # "beginMargin":I
    .end local v5    # "bias":F
    .end local v6    # "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local v8    # "endMargin":I
    .end local v10    # "end":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :cond_58
    return-void
.end method

.method public static applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V
    .locals 6
    .param p0, "constraintWidgetContainer"    # Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroidx/constraintlayout/core/LinearSystem;
    .param p3, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;",
            "Landroidx/constraintlayout/core/LinearSystem;",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;I)V"
        }
    .end annotation

    .line 55
    .local p2, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    const/4 v0, 0x0

    .line 56
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 57
    .local v1, "chainsSize":I
    const/4 v2, 0x0

    .line 58
    .local v2, "chainsArray":[Landroidx/constraintlayout/core/widgets/ChainHead;
    if-nez p3, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 60
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 61
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    goto :goto_0

    .line 63
    :cond_0
    const/4 v0, 0x2

    .line 64
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 65
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 68
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 69
    aget-object v4, v2, v3

    .line 73
    .local v4, "first":Landroidx/constraintlayout/core/widgets/ChainHead;
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ChainHead;->define()V

    .line 74
    if-eqz p2, :cond_1

    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 75
    :cond_1
    invoke-static {p0, p1, p3, v0, v4}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;IILandroidx/constraintlayout/core/widgets/ChainHead;)V

    .line 68
    .end local v4    # "first":Landroidx/constraintlayout/core/widgets/ChainHead;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 79
    .end local v3    # "i":I
    :cond_3
    return-void
.end method
