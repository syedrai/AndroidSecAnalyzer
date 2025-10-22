.class public Landroidx/constraintlayout/core/state/TransitionParser;
.super Ljava/lang/Object;
.source "TransitionParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs map(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p0, "val"    # Ljava/lang/String;
    .param p1, "types"    # [Ljava/lang/String;

    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 155
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    return v0

    .line 154
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static varargs map(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p0, "bundle"    # Landroidx/constraintlayout/core/motion/utils/TypedBundle;
    .param p1, "type"    # I
    .param p2, "val"    # Ljava/lang/String;
    .param p3, "types"    # [Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 164
    aget-object v1, p3, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 163
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static parse(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V
    .locals 11
    .param p0, "json"    # Landroidx/constraintlayout/core/parser/CLObject;
    .param p1, "transition"    # Landroidx/constraintlayout/core/state/Transition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    .line 61
    invoke-virtual {p1}, Landroidx/constraintlayout/core/state/Transition;->resetProperties()V

    .line 62
    const-string v0, "pathMotionArc"

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "pathMotionArc":Ljava/lang/String;
    new-instance v1, Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;-><init>()V

    .line 64
    .local v1, "bundle":Landroidx/constraintlayout/core/motion/utils/TypedBundle;
    const/4 v2, 0x0

    .line 65
    .local v2, "setBundle":Z
    if-eqz v0, :cond_1

    .line 66
    const/4 v2, 0x1

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v3, "below"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_1
    const-string v3, "above"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_2
    const-string v3, "none"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_3
    const-string v3, "flip"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v3, "startHorizontal"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_5
    const-string/jumbo v3, "startVertical"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :goto_0
    const/4 v3, -0x1

    :goto_1
    const/16 v10, 0x1fd

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 85
    :pswitch_0
    invoke-virtual {v1, v10, v4}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    goto :goto_2

    .line 82
    :pswitch_1
    invoke-virtual {v1, v10, v5}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 83
    goto :goto_2

    .line 79
    :pswitch_2
    invoke-virtual {v1, v10, v6}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 80
    goto :goto_2

    .line 76
    :pswitch_3
    invoke-virtual {v1, v10, v7}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 77
    goto :goto_2

    .line 73
    :pswitch_4
    invoke-virtual {v1, v10, v8}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 74
    goto :goto_2

    .line 70
    :pswitch_5
    invoke-virtual {v1, v10, v9}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 71
    nop

    .line 90
    :cond_1
    :goto_2
    const-string v3, "interpolator"

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "interpolator":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 92
    const/4 v2, 0x1

    .line 93
    const/16 v4, 0x2c1

    invoke-virtual {v1, v4, v3}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    .line 96
    :cond_2
    const-string/jumbo v4, "staggered"

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLObject;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v4

    .line 97
    .local v4, "staggered":F
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_3

    .line 98
    const/4 v2, 0x1

    .line 99
    const/16 v5, 0x2c2

    invoke-virtual {v1, v5, v4}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    .line 101
    :cond_3
    if-eqz v2, :cond_4

    .line 102
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/state/Transition;->setTransitionProperties(Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V

    .line 105
    :cond_4
    const-string v5, "onSwipe"

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLObject;->getObjectOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object v5

    .line 107
    .local v5, "onSwipe":Landroidx/constraintlayout/core/parser/CLContainer;
    if-eqz v5, :cond_5

    .line 108
    invoke-static {v5, p1}, Landroidx/constraintlayout/core/state/TransitionParser;->parseOnSwipe(Landroidx/constraintlayout/core/parser/CLContainer;Landroidx/constraintlayout/core/state/Transition;)V

    .line 110
    :cond_5
    invoke-static {p0, p1}, Landroidx/constraintlayout/core/state/TransitionParser;->parseKeyFrames(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V

    .line 111
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6eaff208 -> :sswitch_5
        -0x3c0665da -> :sswitch_4
        0x30006d -> :sswitch_3
        0x33af38 -> :sswitch_2
        0x585239d -> :sswitch_1
        0x5948c31 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parse(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;Landroidx/constraintlayout/core/state/CorePixelDp;)V
    .locals 0
    .param p0, "json"    # Landroidx/constraintlayout/core/parser/CLObject;
    .param p1, "transition"    # Landroidx/constraintlayout/core/state/Transition;
    .param p2, "dpToPixel"    # Landroidx/constraintlayout/core/state/CorePixelDp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    invoke-static {p0, p1}, Landroidx/constraintlayout/core/state/TransitionParser;->parse(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V

    .line 50
    return-void
.end method

.method private static parseKeyAttribute(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V
    .locals 31
    .param p0, "keyAttribute"    # Landroidx/constraintlayout/core/parser/CLObject;
    .param p1, "transition"    # Landroidx/constraintlayout/core/state/Transition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    .line 270
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "target"

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/parser/CLObject;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v2

    .line 271
    .local v2, "targets":Landroidx/constraintlayout/core/parser/CLArray;
    if-nez v2, :cond_0

    .line 272
    return-void

    .line 274
    :cond_0
    const-string v3, "frames"

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/parser/CLObject;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v3

    .line 275
    .local v3, "frames":Landroidx/constraintlayout/core/parser/CLArray;
    if-nez v3, :cond_1

    .line 276
    return-void

    .line 278
    :cond_1
    const-string/jumbo v4, "transitionEasing"

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, "transitionEasing":Ljava/lang/String;
    const/16 v5, 0x9

    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "scaleX"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "scaleY"

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-string/jumbo v7, "translationX"

    const/4 v10, 0x2

    aput-object v7, v6, v10

    const/4 v7, 0x3

    const-string/jumbo v11, "translationY"

    aput-object v11, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v11, "translationZ"

    aput-object v11, v6, v7

    const/4 v7, 0x5

    const-string v11, "rotationX"

    aput-object v11, v6, v7

    const/4 v7, 0x6

    const-string v11, "rotationY"

    aput-object v11, v6, v7

    const/4 v7, 0x7

    const-string v11, "rotationZ"

    aput-object v11, v6, v7

    const/16 v7, 0x8

    const-string v11, "alpha"

    aput-object v11, v6, v7

    .line 291
    .local v6, "attrNames":[Ljava/lang/String;
    new-array v7, v5, [I

    fill-array-data v7, :array_0

    .line 303
    .local v7, "attrIds":[I
    new-array v5, v5, [Z

    fill-array-data v5, :array_1

    .line 314
    .local v5, "scaleTypes":[Z
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v11

    new-array v11, v11, [Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    .line 315
    .local v11, "bundles":[Landroidx/constraintlayout/core/motion/utils/TypedBundle;
    const/4 v12, 0x0

    .line 317
    .local v12, "customVars":[[Landroidx/constraintlayout/core/motion/CustomVariable;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v14

    if-ge v13, v14, :cond_2

    .line 318
    new-instance v14, Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    invoke-direct {v14}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;-><init>()V

    aput-object v14, v11, v13

    .line 317
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 321
    .end local v13    # "i":I
    :cond_2
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_1
    array-length v14, v6

    if-ge v13, v14, :cond_a

    .line 323
    aget-object v14, v6, v13

    .line 324
    .local v14, "attrName":Ljava/lang/String;
    aget v15, v7, v13

    .line 325
    .local v15, "attrId":I
    aget-boolean v16, v5, v13

    .line 326
    .local v16, "scale":Z
    const/16 v17, 0x1

    invoke-virtual {v0, v14}, Landroidx/constraintlayout/core/parser/CLObject;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v9

    .line 328
    .local v9, "arrayValues":Landroidx/constraintlayout/core/parser/CLArray;
    if-eqz v9, :cond_4

    const/16 v18, 0x0

    invoke-virtual {v9}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v8

    array-length v10, v11

    if-ne v8, v10, :cond_3

    move-object/from16 v19, v5

    goto :goto_2

    .line 329
    :cond_3
    new-instance v8, Landroidx/constraintlayout/core/parser/CLParsingException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v5

    .end local v5    # "scaleTypes":[Z
    .local v19, "scaleTypes":[Z
    const-string v5, "incorrect size for "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " array, not matching targets array!"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5, v0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v8

    .line 328
    .end local v19    # "scaleTypes":[Z
    .restart local v5    # "scaleTypes":[Z
    :cond_4
    move-object/from16 v19, v5

    const/16 v18, 0x0

    .line 333
    .end local v5    # "scaleTypes":[Z
    .restart local v19    # "scaleTypes":[Z
    :goto_2
    if-eqz v9, :cond_7

    .line 334
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    array-length v8, v11

    if-ge v5, v8, :cond_6

    .line 335
    invoke-virtual {v9, v5}, Landroidx/constraintlayout/core/parser/CLArray;->getFloat(I)F

    move-result v8

    .line 336
    .local v8, "value":F
    if-eqz v16, :cond_5

    .line 337
    iget-object v10, v1, Landroidx/constraintlayout/core/state/Transition;->mToPixel:Landroidx/constraintlayout/core/state/CorePixelDp;

    invoke-interface {v10, v8}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    move-result v8

    .line 339
    :cond_5
    aget-object v10, v11, v5

    invoke-virtual {v10, v15, v8}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    .line 334
    .end local v8    # "value":F
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .end local v5    # "i":I
    :cond_6
    goto :goto_5

    .line 342
    :cond_7
    invoke-virtual {v0, v14}, Landroidx/constraintlayout/core/parser/CLObject;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v5

    .line 343
    .local v5, "value":F
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_9

    .line 344
    if-eqz v16, :cond_8

    .line 345
    iget-object v8, v1, Landroidx/constraintlayout/core/state/Transition;->mToPixel:Landroidx/constraintlayout/core/state/CorePixelDp;

    invoke-interface {v8, v5}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    move-result v5

    .line 347
    :cond_8
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    array-length v10, v11

    if-ge v8, v10, :cond_9

    .line 348
    aget-object v10, v11, v8

    invoke-virtual {v10, v15, v5}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    .line 347
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 321
    .end local v5    # "value":F
    .end local v8    # "i":I
    .end local v9    # "arrayValues":Landroidx/constraintlayout/core/parser/CLArray;
    .end local v14    # "attrName":Ljava/lang/String;
    .end local v15    # "attrId":I
    .end local v16    # "scale":Z
    :cond_9
    :goto_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, v19

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    goto/16 :goto_1

    .end local v19    # "scaleTypes":[Z
    .local v5, "scaleTypes":[Z
    :cond_a
    move-object/from16 v19, v5

    const/16 v17, 0x1

    const/16 v18, 0x0

    .line 354
    .end local v5    # "scaleTypes":[Z
    .end local v13    # "k":I
    .restart local v19    # "scaleTypes":[Z
    const-string v5, "custom"

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/parser/CLObject;->getOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v5

    .line 355
    .local v5, "customElement":Landroidx/constraintlayout/core/parser/CLElement;
    if-eqz v5, :cond_16

    instance-of v8, v5, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz v8, :cond_16

    .line 356
    move-object v8, v5

    check-cast v8, Landroidx/constraintlayout/core/parser/CLObject;

    .line 357
    .local v8, "customObj":Landroidx/constraintlayout/core/parser/CLObject;
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLObject;->size()I

    move-result v9

    .line 358
    .local v9, "n":I
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v10

    const/4 v13, 0x2

    new-array v14, v13, [I

    aput v9, v14, v17

    aput v10, v14, v18

    const-class v10, Landroidx/constraintlayout/core/motion/CustomVariable;

    invoke-static {v10, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, [[Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 359
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6
    if-ge v10, v9, :cond_15

    .line 360
    invoke-virtual {v8, v10}, Landroidx/constraintlayout/core/parser/CLObject;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/core/parser/CLKey;

    .line 361
    .local v13, "key":Landroidx/constraintlayout/core/parser/CLKey;
    invoke-virtual {v13}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    move-result-object v14

    .line 362
    .local v14, "customName":Ljava/lang/String;
    invoke-virtual {v13}, Landroidx/constraintlayout/core/parser/CLKey;->getValue()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v15

    instance-of v15, v15, Landroidx/constraintlayout/core/parser/CLArray;

    move-object/from16 v16, v5

    .end local v5    # "customElement":Landroidx/constraintlayout/core/parser/CLElement;
    .local v16, "customElement":Landroidx/constraintlayout/core/parser/CLElement;
    const-wide/16 v21, -0x1

    if-eqz v15, :cond_10

    .line 363
    invoke-virtual {v13}, Landroidx/constraintlayout/core/parser/CLKey;->getValue()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/core/parser/CLArray;

    .line 364
    .local v15, "arrayValues":Landroidx/constraintlayout/core/parser/CLArray;
    invoke-virtual {v15}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v5

    .line 365
    .local v5, "vSize":I
    move-object/from16 v24, v6

    .end local v6    # "attrNames":[Ljava/lang/String;
    .local v24, "attrNames":[Ljava/lang/String;
    array-length v6, v11

    if-ne v5, v6, :cond_f

    if-lez v5, :cond_f

    .line 366
    move/from16 v25, v5

    const/4 v6, 0x0

    .end local v5    # "vSize":I
    .local v25, "vSize":I
    invoke-virtual {v15, v6}, Landroidx/constraintlayout/core/parser/CLArray;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v5

    instance-of v5, v5, Landroidx/constraintlayout/core/parser/CLNumber;

    if-eqz v5, :cond_c

    .line 367
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_7
    array-length v6, v11

    if-ge v5, v6, :cond_b

    .line 368
    aget-object v6, v12, v5

    move-object/from16 v20, v6

    new-instance v6, Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 370
    invoke-virtual {v15, v5}, Landroidx/constraintlayout/core/parser/CLArray;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v21

    move/from16 v22, v5

    .end local v5    # "j":I
    .local v22, "j":I
    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    move-result v5

    move-object/from16 v26, v7

    const/16 v7, 0x385

    .end local v7    # "attrIds":[I
    .local v26, "attrIds":[I
    invoke-direct {v6, v14, v7, v5}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;IF)V

    aput-object v6, v20, v10

    .line 367
    add-int/lit8 v5, v22, 0x1

    move-object/from16 v7, v26

    .end local v22    # "j":I
    .restart local v5    # "j":I
    goto :goto_7

    .end local v26    # "attrIds":[I
    .restart local v7    # "attrIds":[I
    :cond_b
    move/from16 v22, v5

    move-object/from16 v26, v7

    .end local v5    # "j":I
    .end local v7    # "attrIds":[I
    .restart local v22    # "j":I
    .restart local v26    # "attrIds":[I
    move-object/from16 v28, v8

    .end local v22    # "j":I
    goto :goto_a

    .line 373
    .end local v26    # "attrIds":[I
    .restart local v7    # "attrIds":[I
    :cond_c
    move-object/from16 v26, v7

    .end local v7    # "attrIds":[I
    .restart local v26    # "attrIds":[I
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_8
    array-length v6, v11

    if-ge v5, v6, :cond_e

    .line 374
    invoke-virtual {v15, v5}, Landroidx/constraintlayout/core/parser/CLArray;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseColorString(Ljava/lang/String;)J

    move-result-wide v6

    .line 375
    .local v6, "color":J
    cmp-long v23, v6, v21

    if-eqz v23, :cond_d

    .line 376
    aget-object v23, v12, v5

    move/from16 v27, v5

    .end local v5    # "j":I
    .local v27, "j":I
    new-instance v5, Landroidx/constraintlayout/core/motion/CustomVariable;

    move-object/from16 v28, v8

    .end local v8    # "customObj":Landroidx/constraintlayout/core/parser/CLObject;
    .local v28, "customObj":Landroidx/constraintlayout/core/parser/CLObject;
    long-to-int v8, v6

    move-wide/from16 v29, v6

    const/16 v6, 0x386

    .end local v6    # "color":J
    .local v29, "color":J
    invoke-direct {v5, v14, v6, v8}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;II)V

    aput-object v5, v23, v10

    goto :goto_9

    .line 375
    .end local v27    # "j":I
    .end local v28    # "customObj":Landroidx/constraintlayout/core/parser/CLObject;
    .end local v29    # "color":J
    .restart local v5    # "j":I
    .restart local v6    # "color":J
    .restart local v8    # "customObj":Landroidx/constraintlayout/core/parser/CLObject;
    :cond_d
    move/from16 v27, v5

    move-wide/from16 v29, v6

    move-object/from16 v28, v8

    .line 373
    .end local v5    # "j":I
    .end local v6    # "color":J
    .end local v8    # "customObj":Landroidx/constraintlayout/core/parser/CLObject;
    .restart local v27    # "j":I
    .restart local v28    # "customObj":Landroidx/constraintlayout/core/parser/CLObject;
    :goto_9
    add-int/lit8 v5, v27, 0x1

    move-object/from16 v8, v28

    .end local v27    # "j":I
    .restart local v5    # "j":I
    goto :goto_8

    .end local v28    # "customObj":Landroidx/constraintlayout/core/parser/CLObject;
    .restart local v8    # "customObj":Landroidx/constraintlayout/core/parser/CLObject;
    :cond_e
    move/from16 v27, v5

    move-object/from16 v28, v8

    .end local v5    # "j":I
    .end local v8    # "customObj":Landroidx/constraintlayout/core/parser/CLObject;
    .restart local v27    # "j":I
    .restart local v28    # "customObj":Landroidx/constraintlayout/core/parser/CLObject;
    goto :goto_a

    .line 365
    .end local v25    # "vSize":I
    .end local v26    # "attrIds":[I
    .end local v27    # "j":I
    .end local v28    # "customObj":Landroidx/constraintlayout/core/parser/CLObject;
    .local v5, "vSize":I
    .restart local v7    # "attrIds":[I
    .restart local v8    # "customObj":Landroidx/constraintlayout/core/parser/CLObject;
    :cond_f
    move/from16 v25, v5

    move-object/from16 v26, v7

    move-object/from16 v28, v8

    .line 383
    .end local v5    # "vSize":I
    .end local v7    # "attrIds":[I
    .end local v8    # "customObj":Landroidx/constraintlayout/core/parser/CLObject;
    .end local v15    # "arrayValues":Landroidx/constraintlayout/core/parser/CLArray;
    .restart local v26    # "attrIds":[I
    .restart local v28    # "customObj":Landroidx/constraintlayout/core/parser/CLObject;
    :goto_a
    goto :goto_d

    .line 384
    .end local v24    # "attrNames":[Ljava/lang/String;
    .end local v26    # "attrIds":[I
    .end local v28    # "customObj":Landroidx/constraintlayout/core/parser/CLObject;
    .local v6, "attrNames":[Ljava/lang/String;
    .restart local v7    # "attrIds":[I
    .restart local v8    # "customObj":Landroidx/constraintlayout/core/parser/CLObject;
    :cond_10
    move-object/from16 v24, v6

    move-object/from16 v26, v7

    move-object/from16 v28, v8

    .end local v6    # "attrNames":[Ljava/lang/String;
    .end local v7    # "attrIds":[I
    .end local v8    # "customObj":Landroidx/constraintlayout/core/parser/CLObject;
    .restart local v24    # "attrNames":[Ljava/lang/String;
    .restart local v26    # "attrIds":[I
    .restart local v28    # "customObj":Landroidx/constraintlayout/core/parser/CLObject;
    invoke-virtual {v13}, Landroidx/constraintlayout/core/parser/CLKey;->getValue()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v5

    .line 385
    .local v5, "value":Landroidx/constraintlayout/core/parser/CLElement;
    instance-of v6, v5, Landroidx/constraintlayout/core/parser/CLNumber;

    if-eqz v6, :cond_12

    .line 386
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    move-result v6

    .line 387
    .local v6, "fValue":F
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_b
    array-length v8, v11

    if-ge v7, v8, :cond_11

    .line 388
    aget-object v8, v12, v7

    new-instance v15, Landroidx/constraintlayout/core/motion/CustomVariable;

    move-object/from16 v25, v5

    const/16 v5, 0x385

    .end local v5    # "value":Landroidx/constraintlayout/core/parser/CLElement;
    .local v25, "value":Landroidx/constraintlayout/core/parser/CLElement;
    invoke-direct {v15, v14, v5, v6}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;IF)V

    aput-object v15, v8, v10

    .line 387
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v25

    goto :goto_b

    .end local v25    # "value":Landroidx/constraintlayout/core/parser/CLElement;
    .restart local v5    # "value":Landroidx/constraintlayout/core/parser/CLElement;
    :cond_11
    move-object/from16 v25, v5

    .line 392
    .end local v5    # "value":Landroidx/constraintlayout/core/parser/CLElement;
    .end local v6    # "fValue":F
    .end local v7    # "j":I
    .restart local v25    # "value":Landroidx/constraintlayout/core/parser/CLElement;
    goto :goto_d

    .line 393
    .end local v25    # "value":Landroidx/constraintlayout/core/parser/CLElement;
    .restart local v5    # "value":Landroidx/constraintlayout/core/parser/CLElement;
    :cond_12
    move-object/from16 v25, v5

    .end local v5    # "value":Landroidx/constraintlayout/core/parser/CLElement;
    .restart local v25    # "value":Landroidx/constraintlayout/core/parser/CLElement;
    invoke-virtual/range {v25 .. v25}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseColorString(Ljava/lang/String;)J

    move-result-wide v5

    .line 394
    .local v5, "cValue":J
    cmp-long v7, v5, v21

    if-eqz v7, :cond_14

    .line 395
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_c
    array-length v8, v11

    if-ge v7, v8, :cond_13

    .line 396
    aget-object v8, v12, v7

    new-instance v15, Landroidx/constraintlayout/core/motion/CustomVariable;

    move/from16 v21, v7

    .end local v7    # "j":I
    .local v21, "j":I
    long-to-int v7, v5

    move-wide/from16 v22, v5

    const/16 v5, 0x386

    .end local v5    # "cValue":J
    .local v22, "cValue":J
    invoke-direct {v15, v14, v5, v7}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;II)V

    aput-object v15, v8, v10

    .line 395
    add-int/lit8 v7, v21, 0x1

    move-wide/from16 v5, v22

    .end local v21    # "j":I
    .restart local v7    # "j":I
    goto :goto_c

    .end local v22    # "cValue":J
    .restart local v5    # "cValue":J
    :cond_13
    move-wide/from16 v22, v5

    move/from16 v21, v7

    .end local v5    # "cValue":J
    .end local v7    # "j":I
    .restart local v21    # "j":I
    .restart local v22    # "cValue":J
    goto :goto_d

    .line 394
    .end local v21    # "j":I
    .end local v22    # "cValue":J
    .restart local v5    # "cValue":J
    :cond_14
    move-wide/from16 v22, v5

    .line 359
    .end local v5    # "cValue":J
    .end local v13    # "key":Landroidx/constraintlayout/core/parser/CLKey;
    .end local v14    # "customName":Ljava/lang/String;
    .end local v25    # "value":Landroidx/constraintlayout/core/parser/CLElement;
    :goto_d
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v5, v16

    move-object/from16 v6, v24

    move-object/from16 v7, v26

    move-object/from16 v8, v28

    const/16 v18, 0x0

    goto/16 :goto_6

    .end local v16    # "customElement":Landroidx/constraintlayout/core/parser/CLElement;
    .end local v24    # "attrNames":[Ljava/lang/String;
    .end local v26    # "attrIds":[I
    .end local v28    # "customObj":Landroidx/constraintlayout/core/parser/CLObject;
    .local v5, "customElement":Landroidx/constraintlayout/core/parser/CLElement;
    .local v6, "attrNames":[Ljava/lang/String;
    .local v7, "attrIds":[I
    .restart local v8    # "customObj":Landroidx/constraintlayout/core/parser/CLObject;
    :cond_15
    move-object/from16 v16, v5

    move-object/from16 v24, v6

    move-object/from16 v26, v7

    move-object/from16 v28, v8

    .end local v5    # "customElement":Landroidx/constraintlayout/core/parser/CLElement;
    .end local v6    # "attrNames":[Ljava/lang/String;
    .end local v7    # "attrIds":[I
    .end local v8    # "customObj":Landroidx/constraintlayout/core/parser/CLObject;
    .restart local v16    # "customElement":Landroidx/constraintlayout/core/parser/CLElement;
    .restart local v24    # "attrNames":[Ljava/lang/String;
    .restart local v26    # "attrIds":[I
    .restart local v28    # "customObj":Landroidx/constraintlayout/core/parser/CLObject;
    goto :goto_e

    .line 355
    .end local v9    # "n":I
    .end local v10    # "i":I
    .end local v16    # "customElement":Landroidx/constraintlayout/core/parser/CLElement;
    .end local v24    # "attrNames":[Ljava/lang/String;
    .end local v26    # "attrIds":[I
    .end local v28    # "customObj":Landroidx/constraintlayout/core/parser/CLObject;
    .restart local v5    # "customElement":Landroidx/constraintlayout/core/parser/CLElement;
    .restart local v6    # "attrNames":[Ljava/lang/String;
    .restart local v7    # "attrIds":[I
    :cond_16
    move-object/from16 v16, v5

    move-object/from16 v24, v6

    move-object/from16 v26, v7

    .line 407
    .end local v5    # "customElement":Landroidx/constraintlayout/core/parser/CLElement;
    .end local v6    # "attrNames":[Ljava/lang/String;
    .end local v7    # "attrIds":[I
    .restart local v16    # "customElement":Landroidx/constraintlayout/core/parser/CLElement;
    .restart local v24    # "attrNames":[Ljava/lang/String;
    .restart local v26    # "attrIds":[I
    :goto_e
    const-string v5, "curveFit"

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 408
    .local v5, "curveFit":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_f
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_1a

    .line 409
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_10
    array-length v8, v11

    if-ge v7, v8, :cond_19

    .line 410
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/core/parser/CLArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 411
    .local v8, "target":Ljava/lang/String;
    aget-object v9, v11, v7

    .line 412
    .local v9, "bundle":Landroidx/constraintlayout/core/motion/utils/TypedBundle;
    if-eqz v5, :cond_17

    .line 413
    const/4 v13, 0x2

    new-array v10, v13, [Ljava/lang/String;

    const-string/jumbo v14, "spline"

    const/16 v18, 0x0

    aput-object v14, v10, v18

    const-string v14, "linear"

    aput-object v14, v10, v17

    .line 414
    invoke-static {v5, v10}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 413
    const/16 v14, 0x1fc

    invoke-virtual {v9, v14, v10}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    goto :goto_11

    .line 412
    :cond_17
    const/4 v13, 0x2

    const/16 v18, 0x0

    .line 416
    :goto_11
    const/16 v10, 0x1f5

    invoke-virtual {v9, v10, v4}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->addIfNotNull(ILjava/lang/String;)V

    .line 418
    invoke-virtual {v3, v7}, Landroidx/constraintlayout/core/parser/CLArray;->getInt(I)I

    move-result v10

    .line 419
    .local v10, "frame":I
    const/16 v14, 0x64

    invoke-virtual {v9, v14, v10}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 420
    if-eqz v12, :cond_18

    aget-object v14, v12, v7

    goto :goto_12

    .line 421
    :cond_18
    const/4 v14, 0x0

    .line 420
    :goto_12
    invoke-virtual {v1, v8, v9, v14}, Landroidx/constraintlayout/core/state/Transition;->addKeyAttribute(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/TypedBundle;[Landroidx/constraintlayout/core/motion/CustomVariable;)V

    .line 409
    .end local v8    # "target":Ljava/lang/String;
    .end local v9    # "bundle":Landroidx/constraintlayout/core/motion/utils/TypedBundle;
    .end local v10    # "frame":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_19
    const/4 v13, 0x2

    const/16 v18, 0x0

    .line 408
    .end local v7    # "j":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 424
    .end local v6    # "i":I
    :cond_1a
    return-void

    :array_0
    .array-data 4
        0x137
        0x138
        0x130
        0x131
        0x132
        0x134
        0x135
        0x136
        0x12f
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static parseKeyCycle(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V
    .locals 19
    .param p0, "keyCycleData"    # Landroidx/constraintlayout/core/parser/CLObject;
    .param p1, "transition"    # Landroidx/constraintlayout/core/state/Transition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    .line 428
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "target"

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/parser/CLObject;->getArray(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v2

    .line 429
    .local v2, "targets":Landroidx/constraintlayout/core/parser/CLArray;
    const-string v3, "frames"

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/parser/CLObject;->getArray(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v3

    .line 430
    .local v3, "frames":Landroidx/constraintlayout/core/parser/CLArray;
    const-string/jumbo v4, "transitionEasing"

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 432
    .local v4, "transitionEasing":Ljava/lang/String;
    const/16 v5, 0xc

    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "scaleX"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "scaleY"

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-string/jumbo v7, "translationX"

    const/4 v10, 0x2

    aput-object v7, v6, v10

    const/4 v7, 0x3

    const-string/jumbo v11, "translationY"

    aput-object v11, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v11, "translationZ"

    aput-object v11, v6, v7

    const/4 v7, 0x5

    const-string v11, "rotationX"

    aput-object v11, v6, v7

    const/4 v7, 0x6

    const-string v11, "rotationY"

    aput-object v11, v6, v7

    const/4 v7, 0x7

    const-string v11, "rotationZ"

    aput-object v11, v6, v7

    const/16 v7, 0x8

    const-string v11, "alpha"

    aput-object v11, v6, v7

    const/16 v7, 0x9

    const-string v11, "period"

    aput-object v11, v6, v7

    const/16 v7, 0xa

    const-string v11, "offset"

    aput-object v11, v6, v7

    const/16 v7, 0xb

    const-string v11, "phase"

    aput-object v11, v6, v7

    .line 446
    .local v6, "attrNames":[Ljava/lang/String;
    new-array v7, v5, [I

    fill-array-data v7, :array_0

    .line 463
    .local v7, "attrIds":[I
    new-array v5, v5, [I

    fill-array-data v5, :array_1

    .line 479
    .local v5, "scaleTypes":[I
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v11

    new-array v11, v11, [Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    .line 480
    .local v11, "bundles":[Landroidx/constraintlayout/core/motion/utils/TypedBundle;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v13, v11

    if-ge v12, v13, :cond_0

    .line 481
    new-instance v13, Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    invoke-direct {v13}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;-><init>()V

    aput-object v13, v11, v12

    .line 480
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 483
    .end local v12    # "i":I
    :cond_0
    const/4 v12, 0x0

    .line 484
    .local v12, "scaleOffset":Z
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_1
    array-length v14, v6

    if-ge v13, v14, :cond_2

    .line 485
    aget-object v14, v6, v13

    invoke-virtual {v0, v14}, Landroidx/constraintlayout/core/parser/CLObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    aget v14, v5, v13

    if-ne v14, v9, :cond_1

    .line 486
    const/4 v12, 0x1

    .line 484
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 489
    .end local v13    # "k":I
    :cond_2
    const/4 v13, 0x0

    .restart local v13    # "k":I
    :goto_2
    array-length v14, v6

    if-ge v13, v14, :cond_d

    .line 490
    aget-object v14, v6, v13

    .line 491
    .local v14, "attrName":Ljava/lang/String;
    aget v15, v7, v13

    .line 492
    .local v15, "attrId":I
    aget v8, v5, v13

    .line 493
    .local v8, "scale":I
    invoke-virtual {v0, v14}, Landroidx/constraintlayout/core/parser/CLObject;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v10

    .line 495
    .local v10, "arrayValues":Landroidx/constraintlayout/core/parser/CLArray;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v9

    move-object/from16 v17, v5

    .end local v5    # "scaleTypes":[I
    .local v17, "scaleTypes":[I
    array-length v5, v11

    if-ne v9, v5, :cond_3

    goto :goto_3

    .line 496
    :cond_3
    new-instance v5, Landroidx/constraintlayout/core/parser/CLParsingException;

    const-string v9, "incorrect size for $attrName array, not matching targets array!"

    invoke-direct {v5, v9, v0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v5

    .line 495
    .end local v17    # "scaleTypes":[I
    .restart local v5    # "scaleTypes":[I
    :cond_4
    move-object/from16 v17, v5

    .line 501
    .end local v5    # "scaleTypes":[I
    .restart local v17    # "scaleTypes":[I
    :goto_3
    if-eqz v10, :cond_8

    .line 502
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    array-length v9, v11

    if-ge v5, v9, :cond_7

    .line 503
    invoke-virtual {v10, v5}, Landroidx/constraintlayout/core/parser/CLArray;->getFloat(I)F

    move-result v9

    .line 504
    .local v9, "value":F
    move/from16 v18, v5

    const/4 v5, 0x1

    .end local v5    # "i":I
    .local v18, "i":I
    if-ne v8, v5, :cond_5

    .line 505
    iget-object v5, v1, Landroidx/constraintlayout/core/state/Transition;->mToPixel:Landroidx/constraintlayout/core/state/CorePixelDp;

    invoke-interface {v5, v9}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    move-result v9

    goto :goto_5

    .line 506
    :cond_5
    const/4 v5, 0x2

    if-ne v8, v5, :cond_6

    if-eqz v12, :cond_6

    .line 507
    iget-object v5, v1, Landroidx/constraintlayout/core/state/Transition;->mToPixel:Landroidx/constraintlayout/core/state/CorePixelDp;

    invoke-interface {v5, v9}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    move-result v9

    .line 509
    :cond_6
    :goto_5
    aget-object v5, v11, v18

    invoke-virtual {v5, v15, v9}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    .line 502
    .end local v9    # "value":F
    add-int/lit8 v5, v18, 0x1

    .end local v18    # "i":I
    .restart local v5    # "i":I
    goto :goto_4

    :cond_7
    move/from16 v18, v5

    .end local v5    # "i":I
    .restart local v18    # "i":I
    move-object/from16 v18, v6

    .end local v18    # "i":I
    goto :goto_8

    .line 512
    :cond_8
    invoke-virtual {v0, v14}, Landroidx/constraintlayout/core/parser/CLObject;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v5

    .line 513
    .local v5, "value":F
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_b

    .line 514
    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    .line 515
    iget-object v9, v1, Landroidx/constraintlayout/core/state/Transition;->mToPixel:Landroidx/constraintlayout/core/state/CorePixelDp;

    invoke-interface {v9, v5}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    move-result v5

    goto :goto_6

    .line 516
    :cond_9
    const/4 v9, 0x2

    if-ne v8, v9, :cond_a

    if-eqz v12, :cond_a

    .line 517
    iget-object v9, v1, Landroidx/constraintlayout/core/state/Transition;->mToPixel:Landroidx/constraintlayout/core/state/CorePixelDp;

    invoke-interface {v9, v5}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    move-result v5

    .line 519
    :cond_a
    :goto_6
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_7
    move-object/from16 v18, v6

    .end local v6    # "attrNames":[Ljava/lang/String;
    .local v18, "attrNames":[Ljava/lang/String;
    array-length v6, v11

    if-ge v9, v6, :cond_c

    .line 520
    aget-object v6, v11, v9

    invoke-virtual {v6, v15, v5}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    .line 519
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, v18

    goto :goto_7

    .line 513
    .end local v9    # "i":I
    .end local v18    # "attrNames":[Ljava/lang/String;
    .restart local v6    # "attrNames":[Ljava/lang/String;
    :cond_b
    move-object/from16 v18, v6

    .line 489
    .end local v5    # "value":F
    .end local v6    # "attrNames":[Ljava/lang/String;
    .end local v8    # "scale":I
    .end local v10    # "arrayValues":Landroidx/constraintlayout/core/parser/CLArray;
    .end local v14    # "attrName":Ljava/lang/String;
    .end local v15    # "attrId":I
    .restart local v18    # "attrNames":[Ljava/lang/String;
    :cond_c
    :goto_8
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    goto/16 :goto_2

    .end local v17    # "scaleTypes":[I
    .end local v18    # "attrNames":[Ljava/lang/String;
    .local v5, "scaleTypes":[I
    .restart local v6    # "attrNames":[Ljava/lang/String;
    :cond_d
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 525
    .end local v5    # "scaleTypes":[I
    .end local v6    # "attrNames":[Ljava/lang/String;
    .end local v13    # "k":I
    .restart local v17    # "scaleTypes":[I
    .restart local v18    # "attrNames":[Ljava/lang/String;
    const-string v5, "curveFit"

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 526
    .local v5, "curveFit":Ljava/lang/String;
    const-string v6, "easing"

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 527
    .local v6, "easing":Ljava/lang/String;
    const-string/jumbo v8, "waveShape"

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 528
    .local v8, "waveShape":Ljava/lang/String;
    const-string v9, "customWave"

    invoke-virtual {v0, v9}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 529
    .local v9, "customWave":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_9
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v13

    if-ge v10, v13, :cond_14

    .line 530
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_a
    array-length v14, v11

    if-ge v13, v14, :cond_13

    .line 531
    invoke-virtual {v2, v10}, Landroidx/constraintlayout/core/parser/CLArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 532
    .local v14, "target":Ljava/lang/String;
    aget-object v15, v11, v13

    .line 535
    .local v15, "bundle":Landroidx/constraintlayout/core/motion/utils/TypedBundle;
    if-eqz v5, :cond_f

    .line 536
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :cond_e
    goto :goto_b

    :sswitch_0
    const-string/jumbo v0, "spline"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_c

    :sswitch_1
    const-string v0, "linear"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_c

    :goto_b
    const/4 v0, -0x1

    :goto_c
    move/from16 v16, v0

    const/16 v0, 0x191

    packed-switch v16, :pswitch_data_0

    move-object/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "targets":Landroidx/constraintlayout/core/parser/CLArray;
    .local v16, "targets":Landroidx/constraintlayout/core/parser/CLArray;
    goto :goto_d

    .line 541
    .end local v16    # "targets":Landroidx/constraintlayout/core/parser/CLArray;
    .restart local v2    # "targets":Landroidx/constraintlayout/core/parser/CLArray;
    :pswitch_0
    move-object/from16 v16, v2

    const/4 v2, 0x1

    .end local v2    # "targets":Landroidx/constraintlayout/core/parser/CLArray;
    .restart local v16    # "targets":Landroidx/constraintlayout/core/parser/CLArray;
    invoke-virtual {v15, v0, v2}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    const/4 v2, 0x0

    goto :goto_d

    .line 538
    .end local v16    # "targets":Landroidx/constraintlayout/core/parser/CLArray;
    .restart local v2    # "targets":Landroidx/constraintlayout/core/parser/CLArray;
    :pswitch_1
    move-object/from16 v16, v2

    const/4 v2, 0x1

    .end local v2    # "targets":Landroidx/constraintlayout/core/parser/CLArray;
    .restart local v16    # "targets":Landroidx/constraintlayout/core/parser/CLArray;
    const/4 v2, 0x0

    invoke-virtual {v15, v0, v2}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 539
    goto :goto_d

    .line 535
    .end local v16    # "targets":Landroidx/constraintlayout/core/parser/CLArray;
    .restart local v2    # "targets":Landroidx/constraintlayout/core/parser/CLArray;
    :cond_f
    move-object/from16 v16, v2

    const/4 v2, 0x0

    .line 545
    .end local v2    # "targets":Landroidx/constraintlayout/core/parser/CLArray;
    .restart local v16    # "targets":Landroidx/constraintlayout/core/parser/CLArray;
    :goto_d
    const/16 v0, 0x1f5

    invoke-virtual {v15, v0, v4}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->addIfNotNull(ILjava/lang/String;)V

    .line 547
    if-eqz v6, :cond_10

    .line 548
    const/16 v0, 0x1a4

    invoke-virtual {v15, v0, v6}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    .line 550
    :cond_10
    if-eqz v8, :cond_11

    .line 551
    const/16 v0, 0x1a5

    invoke-virtual {v15, v0, v8}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    .line 553
    :cond_11
    if-eqz v9, :cond_12

    .line 554
    const/16 v0, 0x1a6

    invoke-virtual {v15, v0, v9}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    .line 557
    :cond_12
    invoke-virtual {v3, v13}, Landroidx/constraintlayout/core/parser/CLArray;->getInt(I)I

    move-result v0

    .line 558
    .local v0, "frame":I
    const/16 v2, 0x64

    invoke-virtual {v15, v2, v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 559
    invoke-virtual {v1, v14, v15}, Landroidx/constraintlayout/core/state/Transition;->addKeyCycle(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V

    .line 530
    .end local v0    # "frame":I
    .end local v14    # "target":Ljava/lang/String;
    .end local v15    # "bundle":Landroidx/constraintlayout/core/motion/utils/TypedBundle;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    goto :goto_a

    .end local v16    # "targets":Landroidx/constraintlayout/core/parser/CLArray;
    .restart local v2    # "targets":Landroidx/constraintlayout/core/parser/CLArray;
    :cond_13
    move-object/from16 v16, v2

    .line 529
    .end local v2    # "targets":Landroidx/constraintlayout/core/parser/CLArray;
    .end local v13    # "j":I
    .restart local v16    # "targets":Landroidx/constraintlayout/core/parser/CLArray;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_9

    .line 563
    .end local v10    # "i":I
    .end local v16    # "targets":Landroidx/constraintlayout/core/parser/CLArray;
    .restart local v2    # "targets":Landroidx/constraintlayout/core/parser/CLArray;
    :cond_14
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x41b970db -> :sswitch_1
        -0x3565b82f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x137
        0x138
        0x130
        0x131
        0x132
        0x134
        0x135
        0x136
        0x193
        0x1a7
        0x1a8
        0x1a9
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
    .end array-data
.end method

.method public static parseKeyFrames(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V
    .locals 7
    .param p0, "transitionCLObject"    # Landroidx/constraintlayout/core/parser/CLObject;
    .param p1, "transition"    # Landroidx/constraintlayout/core/state/Transition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    .line 178
    const-string v0, "KeyFrames"

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLObject;->getObjectOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object v0

    .line 179
    .local v0, "keyframes":Landroidx/constraintlayout/core/parser/CLContainer;
    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    const-string v1, "KeyPositions"

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v1

    .line 181
    .local v1, "keyPositions":Landroidx/constraintlayout/core/parser/CLArray;
    if-eqz v1, :cond_2

    .line 182
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 183
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/parser/CLArray;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v3

    .line 184
    .local v3, "keyPosition":Landroidx/constraintlayout/core/parser/CLElement;
    instance-of v4, v3, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz v4, :cond_1

    .line 185
    move-object v4, v3

    check-cast v4, Landroidx/constraintlayout/core/parser/CLObject;

    invoke-static {v4, p1}, Landroidx/constraintlayout/core/state/TransitionParser;->parseKeyPosition(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V

    .line 182
    .end local v3    # "keyPosition":Landroidx/constraintlayout/core/parser/CLElement;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    .end local v2    # "i":I
    :cond_2
    const-string v2, "KeyAttributes"

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v2

    .line 190
    .local v2, "keyAttributes":Landroidx/constraintlayout/core/parser/CLArray;
    if-eqz v2, :cond_4

    .line 191
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 192
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/parser/CLArray;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v4

    .line 193
    .local v4, "keyAttribute":Landroidx/constraintlayout/core/parser/CLElement;
    instance-of v5, v4, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz v5, :cond_3

    .line 194
    move-object v5, v4

    check-cast v5, Landroidx/constraintlayout/core/parser/CLObject;

    invoke-static {v5, p1}, Landroidx/constraintlayout/core/state/TransitionParser;->parseKeyAttribute(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V

    .line 191
    .end local v4    # "keyAttribute":Landroidx/constraintlayout/core/parser/CLElement;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 198
    .end local v3    # "i":I
    :cond_4
    const-string v3, "KeyCycles"

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v3

    .line 199
    .local v3, "keyCycles":Landroidx/constraintlayout/core/parser/CLArray;
    if-eqz v3, :cond_6

    .line 200
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 201
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/parser/CLArray;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v5

    .line 202
    .local v5, "keyCycle":Landroidx/constraintlayout/core/parser/CLElement;
    instance-of v6, v5, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz v6, :cond_5

    .line 203
    move-object v6, v5

    check-cast v6, Landroidx/constraintlayout/core/parser/CLObject;

    invoke-static {v6, p1}, Landroidx/constraintlayout/core/state/TransitionParser;->parseKeyCycle(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V

    .line 200
    .end local v5    # "keyCycle":Landroidx/constraintlayout/core/parser/CLElement;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 207
    .end local v4    # "i":I
    :cond_6
    return-void
.end method

.method private static parseKeyPosition(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V
    .locals 20
    .param p0, "keyPosition"    # Landroidx/constraintlayout/core/parser/CLObject;
    .param p1, "transition"    # Landroidx/constraintlayout/core/state/Transition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    .line 212
    move-object/from16 v0, p0

    new-instance v1, Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;-><init>()V

    .line 213
    .local v1, "bundle":Landroidx/constraintlayout/core/motion/utils/TypedBundle;
    const-string/jumbo v2, "target"

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/parser/CLObject;->getArray(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v2

    .line 214
    .local v2, "targets":Landroidx/constraintlayout/core/parser/CLArray;
    const-string v3, "frames"

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/parser/CLObject;->getArray(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v3

    .line 215
    .local v3, "frames":Landroidx/constraintlayout/core/parser/CLArray;
    const-string v4, "percentX"

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLObject;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v4

    .line 216
    .local v4, "percentX":Landroidx/constraintlayout/core/parser/CLArray;
    const-string v5, "percentY"

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/parser/CLObject;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v5

    .line 217
    .local v5, "percentY":Landroidx/constraintlayout/core/parser/CLArray;
    const-string v6, "percentWidth"

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/core/parser/CLObject;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v6

    .line 218
    .local v6, "percentWidth":Landroidx/constraintlayout/core/parser/CLArray;
    const-string v7, "percentHeight"

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/core/parser/CLObject;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v7

    .line 219
    .local v7, "percentHeight":Landroidx/constraintlayout/core/parser/CLArray;
    const-string v8, "pathMotionArc"

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 220
    .local v8, "pathMotionArc":Ljava/lang/String;
    const-string/jumbo v9, "transitionEasing"

    invoke-virtual {v0, v9}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 221
    .local v9, "transitionEasing":Ljava/lang/String;
    const-string v10, "curveFit"

    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 222
    .local v10, "curveFit":Ljava/lang/String;
    const-string/jumbo v11, "type"

    invoke-virtual {v0, v11}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 223
    .local v11, "type":Ljava/lang/String;
    if-nez v11, :cond_0

    .line 224
    const-string v11, "parentRelative"

    .line 226
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v12

    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v13

    if-eq v12, v13, :cond_1

    .line 227
    return-void

    .line 229
    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v12

    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v13

    if-eq v12, v13, :cond_2

    .line 230
    return-void

    .line 232
    :cond_2
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v13

    if-ge v12, v13, :cond_6

    .line 233
    invoke-virtual {v2, v12}, Landroidx/constraintlayout/core/parser/CLArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 234
    .local v13, "target":Ljava/lang/String;
    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/String;

    const-string v16, "deltaRelative"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    const-string v16, "pathRelative"

    const/16 v18, 0x1

    aput-object v16, v15, v18

    const-string v16, "parentRelative"

    const/16 v19, 0x3

    const/4 v14, 0x2

    aput-object v16, v15, v14

    invoke-static {v11, v15}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 235
    .local v15, "pos_type":I
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->clear()V

    .line 236
    const/16 v14, 0x1fe

    invoke-virtual {v1, v14, v15}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 237
    if-eqz v10, :cond_3

    .line 238
    const/4 v14, 0x2

    new-array v0, v14, [Ljava/lang/String;

    const-string/jumbo v14, "spline"

    aput-object v14, v0, v17

    const-string v14, "linear"

    aput-object v14, v0, v18

    const/16 v14, 0x1fc

    invoke-static {v1, v14, v10, v0}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILjava/lang/String;[Ljava/lang/String;)V

    .line 241
    :cond_3
    const/16 v0, 0x1f5

    invoke-virtual {v1, v0, v9}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->addIfNotNull(ILjava/lang/String;)V

    .line 243
    if-eqz v8, :cond_4

    .line 244
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v14, "none"

    aput-object v14, v0, v17

    const-string/jumbo v14, "startVertical"

    aput-object v14, v0, v18

    const-string/jumbo v14, "startHorizontal"

    const/16 v16, 0x2

    aput-object v14, v0, v16

    const-string v14, "flip"

    aput-object v14, v0, v19

    const/4 v14, 0x4

    const-string v16, "below"

    aput-object v16, v0, v14

    const/4 v14, 0x5

    const-string v16, "above"

    aput-object v16, v0, v14

    const/16 v14, 0x1fd

    invoke-static {v1, v14, v8, v0}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILjava/lang/String;[Ljava/lang/String;)V

    .line 248
    :cond_4
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v14

    if-ge v0, v14, :cond_5

    .line 249
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/core/parser/CLArray;->getInt(I)I

    move-result v14

    .line 250
    .local v14, "frame":I
    move-object/from16 v16, v2

    .end local v2    # "targets":Landroidx/constraintlayout/core/parser/CLArray;
    .local v16, "targets":Landroidx/constraintlayout/core/parser/CLArray;
    const/16 v2, 0x64

    invoke-virtual {v1, v2, v14}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 251
    const/16 v2, 0x1fa

    invoke-static {v1, v2, v4, v0}, Landroidx/constraintlayout/core/state/TransitionParser;->set(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILandroidx/constraintlayout/core/parser/CLArray;I)V

    .line 252
    const/16 v2, 0x1fb

    invoke-static {v1, v2, v5, v0}, Landroidx/constraintlayout/core/state/TransitionParser;->set(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILandroidx/constraintlayout/core/parser/CLArray;I)V

    .line 253
    const/16 v2, 0x1f7

    invoke-static {v1, v2, v6, v0}, Landroidx/constraintlayout/core/state/TransitionParser;->set(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILandroidx/constraintlayout/core/parser/CLArray;I)V

    .line 254
    const/16 v2, 0x1f8

    invoke-static {v1, v2, v7, v0}, Landroidx/constraintlayout/core/state/TransitionParser;->set(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILandroidx/constraintlayout/core/parser/CLArray;I)V

    .line 256
    move-object/from16 v2, p1

    invoke-virtual {v2, v13, v1}, Landroidx/constraintlayout/core/state/Transition;->addKeyPosition(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V

    .line 248
    .end local v14    # "frame":I
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v16

    goto :goto_1

    .end local v16    # "targets":Landroidx/constraintlayout/core/parser/CLArray;
    .restart local v2    # "targets":Landroidx/constraintlayout/core/parser/CLArray;
    :cond_5
    move-object/from16 v16, v2

    move-object/from16 v2, p1

    .line 232
    .end local v0    # "j":I
    .end local v2    # "targets":Landroidx/constraintlayout/core/parser/CLArray;
    .end local v13    # "target":Ljava/lang/String;
    .end local v15    # "pos_type":I
    .restart local v16    # "targets":Landroidx/constraintlayout/core/parser/CLArray;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 259
    .end local v12    # "i":I
    .end local v16    # "targets":Landroidx/constraintlayout/core/parser/CLArray;
    .restart local v2    # "targets":Landroidx/constraintlayout/core/parser/CLArray;
    :cond_6
    return-void
.end method

.method private static parseOnSwipe(Landroidx/constraintlayout/core/parser/CLContainer;Landroidx/constraintlayout/core/state/Transition;)V
    .locals 18
    .param p0, "onSwipe"    # Landroidx/constraintlayout/core/parser/CLContainer;
    .param p1, "transition"    # Landroidx/constraintlayout/core/state/Transition;

    .line 114
    move-object/from16 v0, p0

    const-string v1, "anchor"

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "anchor":Ljava/lang/String;
    const-string/jumbo v2, "side"

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->SIDES:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 116
    .local v2, "side":I
    const-string v3, "direction"

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->DIRECTIONS:[Ljava/lang/String;

    invoke-static {v3, v4}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 118
    .local v3, "direction":I
    const-string v4, "scale"

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v4

    .line 119
    .local v4, "scale":F
    const-string/jumbo v5, "threshold"

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v5

    .line 120
    .local v5, "threshold":F
    const-string v6, "maxVelocity"

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v6

    .line 121
    .local v6, "maxVelocity":F
    const-string v7, "maxAccel"

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v7

    .line 122
    .local v7, "maxAccel":F
    const-string v8, "limitBounds"

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 123
    .local v8, "limitBounds":Ljava/lang/String;
    const-string v9, "mode"

    invoke-virtual {v0, v9}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->MODE:[Ljava/lang/String;

    invoke-static {v9, v10}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 124
    .local v9, "autoCompleteMode":I
    const-string/jumbo v10, "touchUp"

    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->TOUCH_UP:[Ljava/lang/String;

    invoke-static {v10, v11}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 125
    .local v10, "touchUp":I
    const-string/jumbo v11, "springMass"

    invoke-virtual {v0, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v11

    .line 126
    .local v11, "springMass":F
    const-string/jumbo v12, "springStiffness"

    invoke-virtual {v0, v12}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v12

    .line 127
    .local v12, "springStiffness":F
    const-string/jumbo v13, "springDamping"

    invoke-virtual {v0, v13}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v13

    .line 128
    .local v13, "springDamping":F
    const-string/jumbo v14, "stopThreshold"

    invoke-virtual {v0, v14}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v14

    .line 129
    .local v14, "stopThreshold":F
    const-string/jumbo v15, "springBoundary"

    invoke-virtual {v0, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v14

    .end local v14    # "stopThreshold":F
    .local v16, "stopThreshold":F
    sget-object v14, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->BOUNDARY:[Ljava/lang/String;

    invoke-static {v15, v14}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 131
    .local v14, "springBoundary":I
    const-string v15, "around"

    invoke-virtual {v0, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 133
    .local v15, "around":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/state/Transition;->createOnSwipe()Landroidx/constraintlayout/core/state/Transition$OnSwipe;

    move-result-object v0

    .line 134
    .local v0, "swipe":Landroidx/constraintlayout/core/state/Transition$OnSwipe;
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setAnchorId(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setAnchorSide(I)V

    .line 136
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setDragDirection(I)V

    .line 137
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setDragScale(F)V

    .line 138
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setDragThreshold(F)V

    .line 139
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setMaxVelocity(F)V

    .line 140
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setMaxAcceleration(F)V

    .line 141
    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setLimitBoundsTo(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setAutoCompleteMode(I)V

    .line 143
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setOnTouchUp(I)V

    .line 144
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setSpringMass(F)V

    .line 145
    invoke-virtual {v0, v12}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setSpringStiffness(F)V

    .line 146
    invoke-virtual {v0, v13}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setSpringDamping(F)V

    .line 147
    move-object/from16 v17, v1

    move/from16 v1, v16

    .end local v16    # "stopThreshold":F
    .local v1, "stopThreshold":F
    .local v17, "anchor":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setSpringStopThreshold(F)V

    .line 148
    invoke-virtual {v0, v14}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setSpringBoundary(I)V

    .line 149
    invoke-virtual {v0, v15}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setRotationCenterId(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method private static set(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILandroidx/constraintlayout/core/parser/CLArray;I)V
    .locals 1
    .param p0, "bundle"    # Landroidx/constraintlayout/core/motion/utils/TypedBundle;
    .param p1, "type"    # I
    .param p2, "array"    # Landroidx/constraintlayout/core/parser/CLArray;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    .line 263
    if-eqz p2, :cond_0

    .line 264
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/parser/CLArray;->getFloat(I)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    .line 266
    :cond_0
    return-void
.end method
