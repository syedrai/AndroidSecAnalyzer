.class public Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;
.super Ljava/lang/Object;
.source "AnimatorInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;
    }
.end annotation


# static fields
.field private static final MAX_NUM_POINTS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x3

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1

.field private static final VALUE_TYPE_PATH:I = 0x2

.field private static final VALUE_TYPE_UNDEFINED:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 888
    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v7, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "res":Landroid/content/res/Resources;
    .end local p2    # "theme":Landroid/content/res/Resources$Theme;
    .end local p3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p4    # "pixelSize":F
    .local v0, "context":Landroid/content/Context;
    .local v1, "res":Landroid/content/res/Resources;
    .local v2, "theme":Landroid/content/res/Resources$Theme;
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v7, "pixelSize":F
    invoke-static/range {v0 .. v7}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "parent"    # Landroid/animation/AnimatorSet;
    .param p6, "sequenceOrdering"    # I
    .param p7, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    move-object/from16 v8, p5

    const/4 v0, 0x0

    .line 490
    .local v0, "anim":Landroid/animation/Animator;
    const/4 v1, 0x0

    .line 494
    .local v1, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    move-object v7, v0

    move-object v10, v1

    .line 496
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .local v7, "anim":Landroid/animation/Animator;
    .local v9, "depth":I
    .local v10, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v11, v0

    .local v11, "type":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v9, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v4, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto/16 :goto_3

    :cond_1
    :goto_1
    const/4 v0, 0x1

    if-eq v11, v0, :cond_a

    .line 499
    const/4 v0, 0x2

    if-eq v11, v0, :cond_2

    .line 500
    goto :goto_0

    .line 503
    :cond_2
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 504
    .local v12, "name":Ljava/lang/String;
    const/4 v13, 0x0

    .line 506
    .local v13, "gotValues":Z
    const-string v0, "objectAnimator"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 507
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move-object/from16 v3, p4

    move/from16 v4, p7

    invoke-static/range {v0 .. v5}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadObjectAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    move-object/from16 v4, p0

    move-object/from16 v3, p3

    move-object v7, v6

    .end local v7    # "anim":Landroid/animation/Animator;
    .local v6, "anim":Landroid/animation/Animator;
    goto/16 :goto_2

    .line 508
    .end local v6    # "anim":Landroid/animation/Animator;
    .restart local v7    # "anim":Landroid/animation/Animator;
    :cond_3
    const-string v0, "animator"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 509
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    move-object/from16 v3, p4

    move/from16 v5, p7

    invoke-static/range {v0 .. v6}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    move-result-object v4

    move-object v7, v4

    move-object v3, v6

    move-object/from16 v4, p0

    .end local v7    # "anim":Landroid/animation/Animator;
    .local v4, "anim":Landroid/animation/Animator;
    goto :goto_2

    .line 510
    .end local v4    # "anim":Landroid/animation/Animator;
    .restart local v7    # "anim":Landroid/animation/Animator;
    :cond_4
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v0, "set"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 511
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v14, v0

    .line 512
    .end local v7    # "anim":Landroid/animation/Animator;
    .local v14, "anim":Landroid/animation/Animator;
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATOR_SET:[I

    move-object/from16 v4, p4

    invoke-static {v1, v2, v4, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 515
    .local v15, "a":Landroid/content/res/TypedArray;
    const-string v0, "ordering"

    const/4 v5, 0x0

    invoke-static {v15, v3, v0, v5, v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v6

    .line 518
    .local v6, "ordering":I
    move-object v5, v14

    check-cast v5, Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    move/from16 v7, p7

    invoke-static/range {v0 .. v7}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    .line 520
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 521
    .end local v6    # "ordering":I
    .end local v15    # "a":Landroid/content/res/TypedArray;
    move-object/from16 v4, p0

    move-object v7, v14

    goto :goto_2

    .end local v14    # "anim":Landroid/animation/Animator;
    .restart local v7    # "anim":Landroid/animation/Animator;
    :cond_5
    const-string v0, "propertyValuesHolder"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 522
    nop

    .line 523
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 522
    move-object/from16 v4, p0

    invoke-static {v4, v1, v2, v3, v0}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadValues(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 524
    .local v0, "values":[Landroid/animation/PropertyValuesHolder;
    if-eqz v0, :cond_6

    instance-of v5, v7, Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_6

    .line 525
    move-object v5, v7

    check-cast v5, Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 527
    :cond_6
    const/4 v13, 0x1

    .line 528
    .end local v0    # "values":[Landroid/animation/PropertyValuesHolder;
    nop

    .line 532
    :goto_2
    if-eqz v8, :cond_8

    if-nez v13, :cond_8

    .line 533
    if-nez v10, :cond_7

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 536
    :cond_7
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "gotValues":Z
    :cond_8
    goto/16 :goto_0

    .line 529
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "gotValues":Z
    :cond_9
    move-object/from16 v4, p0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown animator name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "gotValues":Z
    :cond_a
    move-object/from16 v4, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 539
    :goto_3
    if-eqz v8, :cond_d

    if-eqz v10, :cond_d

    .line 540
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/animation/Animator;

    .line 541
    .local v0, "animsArray":[Landroid/animation/Animator;
    const/4 v5, 0x0

    .line 542
    .local v5, "index":I
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/Animator;

    .line 543
    .local v12, "a":Landroid/animation/Animator;
    add-int/lit8 v13, v5, 0x1

    .end local v5    # "index":I
    .local v13, "index":I
    aput-object v12, v0, v5

    .line 544
    .end local v12    # "a":Landroid/animation/Animator;
    move v5, v13

    goto :goto_4

    .line 545
    .end local v13    # "index":I
    .restart local v5    # "index":I
    :cond_b
    if-nez p6, :cond_c

    .line 546
    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_5

    .line 548
    :cond_c
    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 551
    .end local v0    # "animsArray":[Landroid/animation/Animator;
    .end local v5    # "index":I
    :cond_d
    :goto_5
    return-object v7
.end method

.method private static createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .locals 2
    .param p0, "sampleKeyframe"    # Landroid/animation/Keyframe;
    .param p1, "fraction"    # F

    .line 745
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 746
    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_0

    .line 747
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 748
    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_0

    .line 749
    :cond_1
    invoke-static {p1}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object v0

    .line 745
    :goto_0
    return-object v0
.end method

.method private static distributeKeyframes([Landroid/animation/Keyframe;FII)V
    .locals 5
    .param p0, "keyframes"    # [Landroid/animation/Keyframe;
    .param p1, "gap"    # F
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 772
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x2

    .line 773
    .local v0, "count":I
    int-to-float v1, v0

    div-float v1, p1, v1

    .line 774
    .local v1, "increment":F
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-gt v2, p3, :cond_0

    .line 775
    aget-object v3, p0, v2

    add-int/lit8 v4, v2, -0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    add-float/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 774
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 777
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private static getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .locals 23
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "valueType"    # I
    .param p2, "valueFromId"    # I
    .param p3, "valueToId"    # I
    .param p4, "propertyName"    # Ljava/lang/String;

    .line 191
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 192
    .local v4, "tvFrom":Landroid/util/TypedValue;
    if-eqz v4, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 193
    .local v7, "hasFrom":Z
    :goto_0
    if-eqz v7, :cond_1

    iget v8, v4, Landroid/util/TypedValue;->type:I

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 194
    .local v8, "fromType":I
    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    .line 195
    .local v9, "tvTo":Landroid/util/TypedValue;
    if-eqz v9, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 196
    .local v10, "hasTo":Z
    :goto_2
    if-eqz v10, :cond_3

    iget v11, v9, Landroid/util/TypedValue;->type:I

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    .line 198
    .local v11, "toType":I
    :goto_3
    const/4 v12, 0x4

    move/from16 v13, p1

    if-ne v13, v12, :cond_7

    .line 200
    if-eqz v7, :cond_4

    invoke-static {v8}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v12

    if-nez v12, :cond_5

    :cond_4
    if-eqz v10, :cond_6

    invoke-static {v11}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 201
    :cond_5
    const/4 v12, 0x3

    .end local p1    # "valueType":I
    .local v12, "valueType":I
    goto :goto_4

    .line 203
    .end local v12    # "valueType":I
    .restart local p1    # "valueType":I
    :cond_6
    const/4 v12, 0x0

    .end local p1    # "valueType":I
    .restart local v12    # "valueType":I
    goto :goto_4

    .line 198
    .end local v12    # "valueType":I
    .restart local p1    # "valueType":I
    :cond_7
    move v12, v13

    .line 207
    .end local p1    # "valueType":I
    .restart local v12    # "valueType":I
    :goto_4
    if-nez v12, :cond_8

    const/4 v13, 0x1

    goto :goto_5

    :cond_8
    const/4 v13, 0x0

    .line 209
    .local v13, "getFloats":Z
    :goto_5
    const/4 v14, 0x0

    .line 211
    .local v14, "returnValue":Landroid/animation/PropertyValuesHolder;
    const/4 v15, 0x2

    if-ne v12, v15, :cond_f

    .line 212
    const/16 v16, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 213
    .local v6, "fromString":Ljava/lang/String;
    const/16 v17, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, "toString":Ljava/lang/String;
    nop

    .line 216
    invoke-static {v6}, Landroidx/core/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;

    move-result-object v15

    .line 217
    .local v15, "nodesFrom":[Landroidx/core/graphics/PathParser$PathDataNode;
    nop

    .line 218
    move-object/from16 v18, v4

    .end local v4    # "tvFrom":Landroid/util/TypedValue;
    .local v18, "tvFrom":Landroid/util/TypedValue;
    invoke-static {v5}, Landroidx/core/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;

    move-result-object v4

    .line 219
    .local v4, "nodesTo":[Landroidx/core/graphics/PathParser$PathDataNode;
    if-nez v15, :cond_a

    if-eqz v4, :cond_9

    goto :goto_6

    :cond_9
    move/from16 v21, v7

    move-object/from16 v20, v9

    move/from16 v22, v10

    goto/16 :goto_8

    .line 220
    :cond_a
    :goto_6
    if-eqz v15, :cond_e

    .line 221
    new-instance v19, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;

    invoke-direct/range {v19 .. v19}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;-><init>()V

    move-object/from16 v20, v19

    .line 222
    .local v20, "evaluator":Landroid/animation/TypeEvaluator;
    if-eqz v4, :cond_c

    .line 223
    invoke-static {v15, v4}, Landroidx/core/graphics/PathParser;->canMorph([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 227
    move-object/from16 v19, v4

    const/4 v4, 0x2

    .end local v4    # "nodesTo":[Landroidx/core/graphics/PathParser$PathDataNode;
    .local v19, "nodesTo":[Landroidx/core/graphics/PathParser$PathDataNode;
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v15, v4, v16

    aput-object v19, v4, v17

    move/from16 v21, v7

    move-object/from16 v7, v20

    .end local v20    # "evaluator":Landroid/animation/TypeEvaluator;
    .local v7, "evaluator":Landroid/animation/TypeEvaluator;
    .local v21, "hasFrom":Z
    invoke-static {v3, v7, v4}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    move-object/from16 v20, v9

    move/from16 v22, v10

    move-object v14, v4

    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .local v4, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_7

    .line 224
    .end local v19    # "nodesTo":[Landroidx/core/graphics/PathParser$PathDataNode;
    .end local v21    # "hasFrom":Z
    .local v4, "nodesTo":[Landroidx/core/graphics/PathParser$PathDataNode;
    .local v7, "hasFrom":Z
    .restart local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v20    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_b
    move-object/from16 v19, v4

    move/from16 v21, v7

    move-object/from16 v7, v20

    .end local v4    # "nodesTo":[Landroidx/core/graphics/PathParser$PathDataNode;
    .end local v20    # "evaluator":Landroid/animation/TypeEvaluator;
    .local v7, "evaluator":Landroid/animation/TypeEvaluator;
    .restart local v19    # "nodesTo":[Landroidx/core/graphics/PathParser$PathDataNode;
    .restart local v21    # "hasFrom":Z
    new-instance v4, Landroid/view/InflateException;

    move-object/from16 v20, v9

    .end local v9    # "tvTo":Landroid/util/TypedValue;
    .local v20, "tvTo":Landroid/util/TypedValue;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v10

    .end local v10    # "hasTo":Z
    .local v22, "hasTo":Z
    const-string v10, " Can\'t morph from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 230
    .end local v19    # "nodesTo":[Landroidx/core/graphics/PathParser$PathDataNode;
    .end local v21    # "hasFrom":Z
    .end local v22    # "hasTo":Z
    .restart local v4    # "nodesTo":[Landroidx/core/graphics/PathParser$PathDataNode;
    .local v7, "hasFrom":Z
    .restart local v9    # "tvTo":Landroid/util/TypedValue;
    .restart local v10    # "hasTo":Z
    .local v20, "evaluator":Landroid/animation/TypeEvaluator;
    :cond_c
    move-object/from16 v19, v4

    move/from16 v21, v7

    move/from16 v22, v10

    move-object/from16 v7, v20

    move-object/from16 v20, v9

    .end local v4    # "nodesTo":[Landroidx/core/graphics/PathParser$PathDataNode;
    .end local v9    # "tvTo":Landroid/util/TypedValue;
    .end local v10    # "hasTo":Z
    .local v7, "evaluator":Landroid/animation/TypeEvaluator;
    .restart local v19    # "nodesTo":[Landroidx/core/graphics/PathParser$PathDataNode;
    .local v20, "tvTo":Landroid/util/TypedValue;
    .restart local v21    # "hasFrom":Z
    .restart local v22    # "hasTo":Z
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v15, v4, v16

    invoke-static {v3, v7, v4}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    move-object v14, v4

    .line 233
    .end local v7    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_d
    :goto_7
    goto :goto_8

    .end local v19    # "nodesTo":[Landroidx/core/graphics/PathParser$PathDataNode;
    .end local v20    # "tvTo":Landroid/util/TypedValue;
    .end local v21    # "hasFrom":Z
    .end local v22    # "hasTo":Z
    .restart local v4    # "nodesTo":[Landroidx/core/graphics/PathParser$PathDataNode;
    .local v7, "hasFrom":Z
    .restart local v9    # "tvTo":Landroid/util/TypedValue;
    .restart local v10    # "hasTo":Z
    :cond_e
    move-object/from16 v19, v4

    move/from16 v21, v7

    move-object/from16 v20, v9

    move/from16 v22, v10

    .end local v4    # "nodesTo":[Landroidx/core/graphics/PathParser$PathDataNode;
    .end local v7    # "hasFrom":Z
    .end local v9    # "tvTo":Landroid/util/TypedValue;
    .end local v10    # "hasTo":Z
    .restart local v19    # "nodesTo":[Landroidx/core/graphics/PathParser$PathDataNode;
    .restart local v20    # "tvTo":Landroid/util/TypedValue;
    .restart local v21    # "hasFrom":Z
    .restart local v22    # "hasTo":Z
    if-eqz v19, :cond_d

    .line 234
    new-instance v4, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;

    invoke-direct {v4}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;-><init>()V

    .line 235
    .local v4, "evaluator":Landroid/animation/TypeEvaluator;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v19, v7, v16

    invoke-static {v3, v4, v7}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 239
    .end local v4    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v5    # "toString":Ljava/lang/String;
    .end local v6    # "fromString":Ljava/lang/String;
    .end local v15    # "nodesFrom":[Landroidx/core/graphics/PathParser$PathDataNode;
    .end local v19    # "nodesTo":[Landroidx/core/graphics/PathParser$PathDataNode;
    :goto_8
    goto/16 :goto_11

    .line 240
    .end local v18    # "tvFrom":Landroid/util/TypedValue;
    .end local v20    # "tvTo":Landroid/util/TypedValue;
    .end local v21    # "hasFrom":Z
    .end local v22    # "hasTo":Z
    .local v4, "tvFrom":Landroid/util/TypedValue;
    .restart local v7    # "hasFrom":Z
    .restart local v9    # "tvTo":Landroid/util/TypedValue;
    .restart local v10    # "hasTo":Z
    :cond_f
    move-object/from16 v18, v4

    move/from16 v21, v7

    move-object/from16 v20, v9

    move/from16 v22, v10

    const/16 v16, 0x0

    .end local v4    # "tvFrom":Landroid/util/TypedValue;
    .end local v7    # "hasFrom":Z
    .end local v9    # "tvTo":Landroid/util/TypedValue;
    .end local v10    # "hasTo":Z
    .restart local v18    # "tvFrom":Landroid/util/TypedValue;
    .restart local v20    # "tvTo":Landroid/util/TypedValue;
    .restart local v21    # "hasFrom":Z
    .restart local v22    # "hasTo":Z
    const/4 v4, 0x0

    .line 242
    .local v4, "evaluator":Landroid/animation/TypeEvaluator;
    const/4 v5, 0x3

    if-ne v12, v5, :cond_10

    .line 244
    invoke-static {}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->getInstance()Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    move-result-object v4

    .line 246
    :cond_10
    const/4 v5, 0x5

    const/4 v6, 0x0

    if-eqz v13, :cond_16

    .line 249
    if-eqz v21, :cond_14

    .line 250
    if-ne v8, v5, :cond_11

    .line 251
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .local v7, "valueFrom":F
    goto :goto_9

    .line 253
    .end local v7    # "valueFrom":F
    :cond_11
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 255
    .restart local v7    # "valueFrom":F
    :goto_9
    if-eqz v22, :cond_13

    .line 256
    if-ne v11, v5, :cond_12

    .line 257
    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .local v5, "valueTo":F
    goto :goto_a

    .line 259
    .end local v5    # "valueTo":F
    :cond_12
    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 261
    .restart local v5    # "valueTo":F
    :goto_a
    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v7, v6, v16

    const/4 v9, 0x1

    aput v5, v6, v9

    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    move-object v14, v6

    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .local v6, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_c

    .line 264
    .end local v5    # "valueTo":F
    .end local v6    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_13
    const/4 v9, 0x1

    new-array v5, v9, [F

    aput v7, v5, v16

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    move-object v14, v5

    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .local v5, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_c

    .line 267
    .end local v5    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v7    # "valueFrom":F
    .restart local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_14
    if-ne v11, v5, :cond_15

    .line 268
    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .local v5, "valueTo":F
    goto :goto_b

    .line 270
    .end local v5    # "valueTo":F
    :cond_15
    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 272
    .restart local v5    # "valueTo":F
    :goto_b
    const/4 v7, 0x1

    new-array v6, v7, [F

    aput v5, v6, v16

    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    move-object v14, v6

    .line 274
    .end local v5    # "valueTo":F
    :goto_c
    goto/16 :goto_10

    .line 277
    :cond_16
    if-eqz v21, :cond_1c

    .line 278
    if-ne v8, v5, :cond_17

    .line 279
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    float-to-int v7, v7

    .local v7, "valueFrom":I
    goto :goto_d

    .line 280
    .end local v7    # "valueFrom":I
    :cond_17
    invoke-static {v8}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 281
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    move v7, v9

    .local v9, "valueFrom":I
    goto :goto_d

    .line 283
    .end local v9    # "valueFrom":I
    :cond_18
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    move v7, v9

    .line 285
    .restart local v7    # "valueFrom":I
    :goto_d
    if-eqz v22, :cond_1b

    .line 286
    if-ne v11, v5, :cond_19

    .line 287
    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    .local v5, "valueTo":I
    goto :goto_e

    .line 288
    .end local v5    # "valueTo":I
    :cond_19
    invoke-static {v11}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 289
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .restart local v5    # "valueTo":I
    goto :goto_e

    .line 291
    .end local v5    # "valueTo":I
    :cond_1a
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 293
    .restart local v5    # "valueTo":I
    :goto_e
    filled-new-array {v7, v5}, [I

    move-result-object v6

    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    goto :goto_10

    .line 295
    .end local v5    # "valueTo":I
    :cond_1b
    filled-new-array {v7}, [I

    move-result-object v5

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    goto :goto_10

    .line 298
    .end local v7    # "valueFrom":I
    :cond_1c
    if-eqz v22, :cond_1f

    .line 299
    if-ne v11, v5, :cond_1d

    .line 300
    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    .restart local v5    # "valueTo":I
    goto :goto_f

    .line 301
    .end local v5    # "valueTo":I
    :cond_1d
    invoke-static {v11}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 302
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .restart local v5    # "valueTo":I
    goto :goto_f

    .line 304
    .end local v5    # "valueTo":I
    :cond_1e
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 306
    .restart local v5    # "valueTo":I
    :goto_f
    filled-new-array {v5}, [I

    move-result-object v6

    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 310
    .end local v5    # "valueTo":I
    :cond_1f
    :goto_10
    if-eqz v14, :cond_20

    if-eqz v4, :cond_20

    .line 311
    invoke-virtual {v14, v4}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 315
    .end local v4    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_20
    :goto_11
    return-object v14
.end method

.method private static inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I
    .locals 7
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "valueFromId"    # I
    .param p2, "valueToId"    # I

    .line 635
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 636
    .local v0, "tvFrom":Landroid/util/TypedValue;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 637
    .local v3, "hasFrom":Z
    :goto_0
    if-eqz v3, :cond_1

    iget v4, v0, Landroid/util/TypedValue;->type:I

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 638
    .local v4, "fromType":I
    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 639
    .local v5, "tvTo":Landroid/util/TypedValue;
    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 640
    .local v1, "hasTo":Z
    :goto_2
    if-eqz v1, :cond_3

    iget v2, v5, Landroid/util/TypedValue;->type:I

    .line 644
    .local v2, "toType":I
    :cond_3
    if-eqz v3, :cond_4

    invoke-static {v4}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    if-eqz v1, :cond_6

    invoke-static {v2}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 645
    :cond_5
    const/4 v6, 0x3

    .local v6, "valueType":I
    goto :goto_3

    .line 647
    .end local v6    # "valueType":I
    :cond_6
    const/4 v6, 0x0

    .line 649
    .restart local v6    # "valueType":I
    :goto_3
    return v6
.end method

.method private static inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 616
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_KEYFRAME:[I

    invoke-static {p0, p1, p2, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 619
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string/jumbo v1, "value"

    const/4 v2, 0x0

    invoke-static {v0, p3, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->peekNamedValue(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    move-result-object v1

    .line 621
    .local v1, "keyframeValue":Landroid/util/TypedValue;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 624
    .local v2, "hasValue":Z
    :cond_0
    if-eqz v2, :cond_1

    iget v3, v1, Landroid/util/TypedValue;->type:I

    invoke-static {v3}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 625
    const/4 v3, 0x3

    .local v3, "valueType":I
    goto :goto_0

    .line 627
    .end local v3    # "valueType":I
    :cond_1
    const/4 v3, 0x0

    .line 629
    .restart local v3    # "valueType":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 630
    return v3
.end method

.method private static isColorType(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 883
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 97
    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .local v0, "objectAnimator":Landroid/animation/Animator;
    goto :goto_0

    .line 99
    .end local v0    # "objectAnimator":Landroid/animation/Animator;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;

    move-result-object v0

    .line 101
    .restart local v0    # "objectAnimator":Landroid/animation/Animator;
    :goto_0
    return-object v0
.end method

.method public static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 115
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, p3, v0}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "id"    # I
    .param p4, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 125
    const-string v0, "Can\'t load animation resource ID #0x"

    const/4 v1, 0x0

    .line 127
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    move-object v1, v2

    .line 128
    invoke-static {p0, p1, p2, v1, p4}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .local v0, "animator":Landroid/animation/Animator;
    nop

    .line 143
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 129
    :cond_0
    return-object v0

    .line 143
    .end local v0    # "animator":Landroid/animation/Animator;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v2

    .line 137
    .local v2, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 139
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 140
    .local v3, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 141
    nop

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "resources":Landroid/content/res/Resources;
    .end local p2    # "theme":Landroid/content/res/Resources$Theme;
    .end local p3    # "id":I
    .end local p4    # "pathErrorScale":F
    throw v3

    .line 130
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "resources":Landroid/content/res/Resources;
    .restart local p2    # "theme":Landroid/content/res/Resources$Theme;
    .restart local p3    # "id":I
    .restart local p4    # "pathErrorScale":F
    :catch_1
    move-exception v2

    .line 131
    .local v2, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 134
    .restart local v3    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 135
    nop

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "resources":Landroid/content/res/Resources;
    .end local p2    # "theme":Landroid/content/res/Resources$Theme;
    .end local p3    # "id":I
    .end local p4    # "pathErrorScale":F
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    .end local v2    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "resources":Landroid/content/res/Resources;
    .restart local p2    # "theme":Landroid/content/res/Resources$Theme;
    .restart local p3    # "id":I
    .restart local p4    # "pathErrorScale":F
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 144
    :cond_1
    throw v0
.end method

.method private static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "anim"    # Landroid/animation/ValueAnimator;
    .param p5, "pathErrorScale"    # F
    .param p6, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 856
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATOR:[I

    invoke-static {p1, p2, p3, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 858
    .local v0, "arrayAnimator":Landroid/content/res/TypedArray;
    sget-object v1, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_PROPERTY_ANIMATOR:[I

    invoke-static {p1, p2, p3, v1}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 861
    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    if-nez p4, :cond_0

    .line 862
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    move-object p4, v2

    .line 865
    :cond_0
    invoke-static {p4, v0, v1, p5, p6}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V

    .line 868
    const-string v2, "interpolator"

    const/4 v3, 0x0

    invoke-static {v0, p6, v2, v3, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    .line 870
    .local v2, "resID":I
    if-lez v2, :cond_1

    .line 871
    invoke-static {p0, v2}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 872
    .local v3, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {p4, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 875
    .end local v3    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 876
    if-eqz v1, :cond_2

    .line 877
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 879
    :cond_2
    return-object p4
.end method

.method private static loadKeyframe(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;ILorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Keyframe;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "valueType"    # I
    .param p5, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 784
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_KEYFRAME:[I

    invoke-static {p1, p2, p3, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 787
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 789
    .local v1, "keyframe":Landroid/animation/Keyframe;
    const/4 v2, 0x3

    const/high16 v3, -0x40800000    # -1.0f

    const-string v4, "fraction"

    invoke-static {v0, p5, v4, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    .line 792
    .local v2, "fraction":F
    const-string/jumbo v3, "value"

    const/4 v4, 0x0

    invoke-static {v0, p5, v3, v4}, Landroidx/core/content/res/TypedArrayUtils;->peekNamedValue(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    move-result-object v5

    .line 794
    .local v5, "keyframeValue":Landroid/util/TypedValue;
    const/4 v6, 0x1

    if-eqz v5, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 795
    .local v7, "hasValue":Z
    :goto_0
    const/4 v8, 0x4

    if-ne p4, v8, :cond_2

    .line 798
    if-eqz v7, :cond_1

    iget v8, v5, Landroid/util/TypedValue;->type:I

    invoke-static {v8}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 799
    const/4 p4, 0x3

    goto :goto_1

    .line 801
    :cond_1
    const/4 p4, 0x0

    .line 805
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 806
    packed-switch p4, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 814
    :pswitch_1
    invoke-static {v0, p5, v3, v4, v4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 816
    .local v3, "intValue":I
    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v1

    goto :goto_2

    .line 808
    .end local v3    # "intValue":I
    :pswitch_2
    const/4 v8, 0x0

    invoke-static {v0, p5, v3, v4, v8}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    .line 810
    .local v3, "value":F
    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    .line 811
    nop

    .line 817
    .end local v3    # "value":F
    :goto_2
    goto :goto_4

    .line 820
    :cond_3
    if-nez p4, :cond_4

    invoke-static {v2}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v3

    goto :goto_3

    .line 821
    :cond_4
    invoke-static {v2}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v3

    :goto_3
    move-object v1, v3

    .line 824
    :goto_4
    const-string v3, "interpolator"

    invoke-static {v0, p5, v3, v6, v4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 826
    .local v3, "resID":I
    if-lez v3, :cond_5

    .line 827
    invoke-static {p0, v3}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 828
    .local v4, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v1, v4}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 830
    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 832
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static loadObjectAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ObjectAnimator;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "pathErrorScale"    # F
    .param p5, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 838
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    move-object v5, v0

    .line 840
    .local v5, "anim":Landroid/animation/ObjectAnimator;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    move-object v7, p5

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "res":Landroid/content/res/Resources;
    .end local p2    # "theme":Landroid/content/res/Resources$Theme;
    .end local p3    # "attrs":Landroid/util/AttributeSet;
    .end local p4    # "pathErrorScale":F
    .end local p5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v1, "context":Landroid/content/Context;
    .local v2, "res":Landroid/content/res/Resources;
    .local v3, "theme":Landroid/content/res/Resources$Theme;
    .local v4, "attrs":Landroid/util/AttributeSet;
    .local v6, "pathErrorScale":F
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static/range {v1 .. v7}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    .line 842
    return-object v5
.end method

.method private static loadPvh(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "propertyName"    # Ljava/lang/String;
    .param p5, "valueType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 658
    const/4 v0, 0x0

    .line 659
    .local v0, "value":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x0

    move-object v2, v1

    move/from16 v1, p5

    .line 662
    .end local p5    # "valueType":I
    .local v1, "valueType":I
    .local v2, "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x3

    if-eq v3, v5, :cond_4

    const/4 v3, 0x1

    if-eq v4, v3, :cond_4

    .line 664
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 665
    .local v3, "name":Ljava/lang/String;
    const-string v5, "keyframe"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 666
    const/4 v5, 0x4

    if-ne v1, v5, :cond_0

    .line 667
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v11, p3

    invoke-static {v7, v8, v5, v11}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    move v10, v1

    goto :goto_1

    .line 666
    :cond_0
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v11, p3

    move v10, v1

    .line 670
    .end local v1    # "valueType":I
    .local v10, "valueType":I
    :goto_1
    invoke-static {v11}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadKeyframe(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;ILorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Keyframe;

    move-result-object v1

    .line 672
    .local v1, "keyframe":Landroid/animation/Keyframe;
    if-eqz v1, :cond_2

    .line 673
    if-nez v2, :cond_1

    .line 674
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 676
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    :cond_2
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move v1, v10

    .line 680
    .end local v3    # "name":Ljava/lang/String;
    .end local v10    # "valueType":I
    .local v1, "valueType":I
    :cond_3
    goto :goto_0

    .line 683
    :cond_4
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v3

    .local v6, "count":I
    if-lez v3, :cond_f

    .line 689
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Keyframe;

    .line 690
    .local v7, "firstKeyframe":Landroid/animation/Keyframe;
    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/Keyframe;

    .line 691
    .local v8, "lastKeyframe":Landroid/animation/Keyframe;
    invoke-virtual {v8}, Landroid/animation/Keyframe;->getFraction()F

    move-result v9

    .line 692
    .local v9, "endFraction":F
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    cmpg-float v12, v9, v10

    if-gez v12, :cond_6

    .line 693
    cmpg-float v12, v9, v11

    if-gez v12, :cond_5

    .line 694
    invoke-virtual {v8, v10}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_2

    .line 696
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v8, v10}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 697
    add-int/lit8 v6, v6, 0x1

    .line 700
    :cond_6
    :goto_2
    invoke-virtual {v7}, Landroid/animation/Keyframe;->getFraction()F

    move-result v12

    .line 701
    .local v12, "startFraction":F
    cmpl-float v13, v12, v11

    if-eqz v13, :cond_8

    .line 702
    cmpg-float v13, v12, v11

    if-gez v13, :cond_7

    .line 703
    invoke-virtual {v7, v11}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_3

    .line 705
    :cond_7
    invoke-static {v7, v11}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v13

    invoke-virtual {v2, v3, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 706
    add-int/lit8 v6, v6, 0x1

    .line 709
    :cond_8
    :goto_3
    new-array v3, v6, [Landroid/animation/Keyframe;

    .line 710
    .local v3, "keyframeArray":[Landroid/animation/Keyframe;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 711
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    if-ge v13, v6, :cond_e

    .line 712
    aget-object v14, v3, v13

    .line 713
    .local v14, "keyframe":Landroid/animation/Keyframe;
    invoke-virtual {v14}, Landroid/animation/Keyframe;->getFraction()F

    move-result v15

    cmpg-float v15, v15, v11

    if-gez v15, :cond_d

    .line 714
    if-nez v13, :cond_9

    .line 715
    invoke-virtual {v14, v11}, Landroid/animation/Keyframe;->setFraction(F)V

    const/16 v16, 0x0

    goto :goto_7

    .line 716
    :cond_9
    add-int/lit8 v15, v6, -0x1

    if-ne v13, v15, :cond_a

    .line 717
    invoke-virtual {v14, v10}, Landroid/animation/Keyframe;->setFraction(F)V

    const/16 v16, 0x0

    goto :goto_7

    .line 721
    :cond_a
    move v15, v13

    .line 722
    .local v15, "startIndex":I
    move/from16 v16, v13

    .line 723
    .local v16, "endIndex":I
    add-int/lit8 v17, v15, 0x1

    move/from16 v10, v16

    move/from16 v11, v17

    const/16 v16, 0x0

    .end local v16    # "endIndex":I
    .local v10, "endIndex":I
    .local v11, "j":I
    :goto_5
    add-int/lit8 v5, v6, -0x1

    if-ge v11, v5, :cond_c

    .line 724
    aget-object v5, v3, v11

    invoke-virtual {v5}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    cmpl-float v5, v5, v16

    if-ltz v5, :cond_b

    .line 725
    goto :goto_6

    .line 727
    :cond_b
    move v10, v11

    .line 723
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x3

    goto :goto_5

    .line 729
    .end local v11    # "j":I
    :cond_c
    :goto_6
    add-int/lit8 v5, v10, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    add-int/lit8 v11, v15, -0x1

    aget-object v11, v3, v11

    .line 730
    invoke-virtual {v11}, Landroid/animation/Keyframe;->getFraction()F

    move-result v11

    sub-float/2addr v5, v11

    .line 731
    .local v5, "gap":F
    invoke-static {v3, v5, v15, v10}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->distributeKeyframes([Landroid/animation/Keyframe;FII)V

    goto :goto_7

    .line 713
    .end local v5    # "gap":F
    .end local v10    # "endIndex":I
    .end local v15    # "startIndex":I
    :cond_d
    const/16 v16, 0x0

    .line 711
    .end local v14    # "keyframe":Landroid/animation/Keyframe;
    :goto_7
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x3

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    goto :goto_4

    .line 735
    .end local v13    # "i":I
    :cond_e
    move-object/from16 v5, p4

    invoke-static {v5, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 736
    const/4 v10, 0x3

    if-ne v1, v10, :cond_11

    .line 737
    invoke-static {}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->getInstance()Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto :goto_8

    .line 683
    .end local v3    # "keyframeArray":[Landroid/animation/Keyframe;
    .end local v7    # "firstKeyframe":Landroid/animation/Keyframe;
    .end local v8    # "lastKeyframe":Landroid/animation/Keyframe;
    .end local v9    # "endFraction":F
    .end local v12    # "startFraction":F
    :cond_f
    move-object/from16 v5, p4

    goto :goto_8

    .end local v6    # "count":I
    :cond_10
    move-object/from16 v5, p4

    .line 741
    :cond_11
    :goto_8
    return-object v0
.end method

.method private static loadValues(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    move-object/from16 v3, p3

    const/4 v0, 0x0

    move-object v6, v0

    .line 559
    .local v6, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v7, v0

    .local v7, "type":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    .line 562
    const/4 v0, 0x2

    if-eq v7, v0, :cond_0

    .line 563
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 564
    goto :goto_0

    .line 567
    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 569
    .local v9, "name":Ljava/lang/String;
    const-string v2, "propertyValuesHolder"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 570
    sget-object v2, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_PROPERTY_VALUES_HOLDER:[I

    move-object/from16 v10, p4

    invoke-static {p1, p2, v10, v2}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 573
    .local v11, "a":Landroid/content/res/TypedArray;
    const-string v2, "propertyName"

    invoke-static {v11, v3, v2, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 575
    .local v4, "propertyName":Ljava/lang/String;
    const-string/jumbo v1, "valueType"

    const/4 v2, 0x4

    invoke-static {v11, v3, v1, v0, v2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    .line 579
    .local v5, "valueType":I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadPvh(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 581
    .local v12, "pvh":Landroid/animation/PropertyValuesHolder;
    if-nez v12, :cond_1

    .line 582
    const/4 v0, 0x0

    invoke-static {v11, v5, v0, v8, v4}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 587
    :cond_1
    if-eqz v12, :cond_3

    .line 588
    if-nez v6, :cond_2

    .line 589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 591
    :cond_2
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    :cond_3
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 569
    .end local v4    # "propertyName":Ljava/lang/String;
    .end local v5    # "valueType":I
    .end local v11    # "a":Landroid/content/res/TypedArray;
    .end local v12    # "pvh":Landroid/animation/PropertyValuesHolder;
    :cond_4
    move-object/from16 v10, p4

    .line 596
    :goto_1
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 597
    .end local v9    # "name":Ljava/lang/String;
    move-object/from16 v3, p3

    goto :goto_0

    .line 559
    :cond_5
    move-object/from16 v10, p4

    .line 599
    const/4 v0, 0x0

    .line 600
    .local v0, "valuesArray":[Landroid/animation/PropertyValuesHolder;
    if-eqz v6, :cond_6

    .line 601
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 602
    .local v1, "count":I
    new-array v0, v1, [Landroid/animation/PropertyValuesHolder;

    .line 603
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_6

    .line 604
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/PropertyValuesHolder;

    aput-object v3, v0, v2

    .line 603
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 607
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_6
    return-object v0
.end method

.method private static parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p3, "pixelSize"    # F
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 329
    const/16 v0, 0x12c

    const-string v1, "duration"

    const/4 v2, 0x1

    invoke-static {p1, p4, v1, v2, v0}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    int-to-long v0, v0

    .line 331
    .local v0, "duration":J
    const-string/jumbo v3, "startOffset"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p1, p4, v3, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    int-to-long v3, v3

    .line 333
    .local v3, "startDelay":J
    const-string/jumbo v6, "valueType"

    const/4 v7, 0x7

    const/4 v8, 0x4

    invoke-static {p1, p4, v6, v7, v8}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v6

    .line 337
    .local v6, "valueType":I
    const-string/jumbo v7, "valueFrom"

    invoke-static {p4, v7}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 338
    const-string/jumbo v7, "valueTo"

    invoke-static {p4, v7}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 339
    const/4 v7, 0x6

    const/4 v9, 0x5

    if-ne v6, v8, :cond_0

    .line 340
    invoke-static {p1, v9, v7}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I

    move-result v6

    .line 344
    :cond_0
    const-string v10, ""

    invoke-static {p1, v6, v9, v7, v10}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 347
    .local v7, "pvh":Landroid/animation/PropertyValuesHolder;
    if-eqz v7, :cond_1

    .line 348
    new-array v9, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v9, v5

    invoke-virtual {p0, v9}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 351
    .end local v7    # "pvh":Landroid/animation/PropertyValuesHolder;
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 352
    invoke-virtual {p0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 354
    const-string v7, "repeatCount"

    const/4 v9, 0x3

    invoke-static {p1, p4, v7, v9, v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 356
    const-string v5, "repeatMode"

    invoke-static {p1, p4, v5, v8, v2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 359
    if-eqz p2, :cond_2

    .line 360
    invoke-static {p0, p2, v6, p3, p4}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IFLorg/xmlpull/v1/XmlPullParser;)V

    .line 362
    :cond_2
    return-void
.end method

.method private static setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IFLorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "valueType"    # I
    .param p3, "pixelSize"    # F
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 374
    move-object v0, p0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 375
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    const-string v1, "pathData"

    const/4 v2, 0x1

    invoke-static {p1, p4, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "pathData":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 387
    const-string v2, "propertyXName"

    const/4 v3, 0x2

    invoke-static {p1, p4, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, "propertyXName":Ljava/lang/String;
    const-string v4, "propertyYName"

    const/4 v5, 0x3

    invoke-static {p1, p4, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 393
    .local v4, "propertyYName":Ljava/lang/String;
    if-eq p2, v3, :cond_0

    const/4 v3, 0x4

    if-ne p2, v3, :cond_1

    .line 396
    :cond_0
    const/4 p2, 0x0

    .line 398
    :cond_1
    if-nez v2, :cond_3

    if-eqz v4, :cond_2

    goto :goto_0

    .line 399
    :cond_2
    new-instance v3, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " propertyXName or propertyYName is needed for PathData"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 402
    :cond_3
    :goto_0
    invoke-static {v1}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v3

    .line 403
    .local v3, "path":Landroid/graphics/Path;
    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v5, v5, p3

    invoke-static {v3, v0, v5, v2, v4}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->setupPathMotion(Landroid/graphics/Path;Landroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V

    .line 405
    .end local v2    # "propertyXName":Ljava/lang/String;
    .end local v3    # "path":Landroid/graphics/Path;
    .end local v4    # "propertyYName":Ljava/lang/String;
    goto :goto_1

    .line 406
    :cond_4
    nop

    .line 407
    const-string v2, "propertyName"

    const/4 v3, 0x0

    invoke-static {p1, p4, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, "propertyName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 411
    .end local v2    # "propertyName":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method private static setupPathMotion(Landroid/graphics/Path;Landroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "oa"    # Landroid/animation/ObjectAnimator;
    .param p2, "precision"    # F
    .param p3, "propertyXName"    # Ljava/lang/String;
    .param p4, "propertyYName"    # Ljava/lang/String;

    .line 416
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    new-instance v4, Landroid/graphics/PathMeasure;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 417
    .local v4, "measureForTotalLength":Landroid/graphics/PathMeasure;
    const/4 v6, 0x0

    .line 420
    .local v6, "totalLength":F
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v7, "contourLengths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v8

    .line 424
    .local v8, "pathLength":F
    add-float/2addr v6, v8

    .line 425
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    .end local v8    # "pathLength":F
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v8

    if-nez v8, :cond_6

    .line 430
    new-instance v8, Landroid/graphics/PathMeasure;

    invoke-direct {v8, v0, v5}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 432
    .local v8, "pathMeasure":Landroid/graphics/PathMeasure;
    div-float v9, v6, p2

    float-to-int v9, v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    const/16 v11, 0x64

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 434
    .local v9, "numPoints":I
    new-array v11, v9, [F

    .line 435
    .local v11, "mX":[F
    new-array v12, v9, [F

    .line 436
    .local v12, "mY":[F
    const/4 v13, 0x2

    new-array v14, v13, [F

    .line 438
    .local v14, "position":[F
    const/4 v15, 0x0

    .line 439
    .local v15, "contourIndex":I
    const/16 v16, 0x0

    add-int/lit8 v5, v9, -0x1

    int-to-float v5, v5

    div-float v5, v6, v5

    .line 440
    .local v5, "step":F
    const/16 v17, 0x0

    .line 445
    .local v17, "currentDistance":F
    const/16 v18, 0x0

    move/from16 v13, v18

    .local v13, "i":I
    :goto_1
    if-ge v13, v9, :cond_1

    .line 446
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    const/16 v20, 0x1

    sub-float v10, v17, v19

    const/4 v0, 0x0

    invoke-virtual {v8, v10, v14, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 449
    aget v0, v14, v16

    aput v0, v11, v13

    .line 450
    aget v0, v14, v20

    aput v0, v12, v13

    .line 451
    add-float v17, v17, v5

    .line 452
    add-int/lit8 v0, v15, 0x1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_0

    add-int/lit8 v0, v15, 0x1

    .line 453
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v17, v0

    if-lez v0, :cond_0

    .line 454
    add-int/lit8 v15, v15, 0x1

    .line 455
    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->nextContour()Z

    .line 445
    :cond_0
    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    :cond_1
    const/16 v20, 0x1

    .line 460
    .end local v13    # "i":I
    const/4 v0, 0x0

    .line 461
    .local v0, "x":Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x0

    .line 462
    .local v10, "y":Landroid/animation/PropertyValuesHolder;
    if-eqz v2, :cond_2

    .line 463
    invoke-static {v2, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 465
    :cond_2
    if-eqz v3, :cond_3

    .line 466
    invoke-static {v3, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 468
    :cond_3
    if-nez v0, :cond_4

    .line 469
    const/4 v13, 0x1

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    aput-object v10, v13, v16

    invoke-virtual {v1, v13}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_2

    .line 470
    :cond_4
    const/4 v13, 0x1

    if-nez v10, :cond_5

    .line 471
    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v13, v16

    invoke-virtual {v1, v13}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_2

    .line 473
    :cond_5
    const/4 v13, 0x2

    const/16 v20, 0x1

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v13, v16

    aput-object v10, v13, v20

    invoke-virtual {v1, v13}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 475
    :goto_2
    return-void

    .line 427
    .end local v0    # "x":Landroid/animation/PropertyValuesHolder;
    .end local v5    # "step":F
    .end local v8    # "pathMeasure":Landroid/graphics/PathMeasure;
    .end local v9    # "numPoints":I
    .end local v10    # "y":Landroid/animation/PropertyValuesHolder;
    .end local v11    # "mX":[F
    .end local v12    # "mY":[F
    .end local v14    # "position":[F
    .end local v15    # "contourIndex":I
    .end local v17    # "currentDistance":F
    :cond_6
    const/16 v16, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_0
.end method
