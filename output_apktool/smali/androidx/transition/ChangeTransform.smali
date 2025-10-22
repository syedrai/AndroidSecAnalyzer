.class public Landroidx/transition/ChangeTransform;
.super Landroidx/transition/Transition;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ChangeTransform$Transforms;,
        Landroidx/transition/ChangeTransform$PathAnimatorMatrix;,
        Landroidx/transition/ChangeTransform$Listener;,
        Landroidx/transition/ChangeTransform$GhostListener;
    }
.end annotation


# static fields
.field private static final NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/transition/ChangeTransform$PathAnimatorMatrix;",
            "[F>;"
        }
    .end annotation
.end field

.field private static final PROPNAME_INTERMEDIATE_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateMatrix"

.field private static final PROPNAME_INTERMEDIATE_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateParentMatrix"

.field private static final PROPNAME_MATRIX:Ljava/lang/String; = "android:changeTransform:matrix"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeTransform:parent"

.field private static final PROPNAME_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:parentMatrix"

.field private static final PROPNAME_TRANSFORMS:Ljava/lang/String; = "android:changeTransform:transforms"

.field private static final SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

.field private static final TRANSLATIONS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/transition/ChangeTransform$PathAnimatorMatrix;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mReparent:Z

.field private mTempMatrix:Landroid/graphics/Matrix;

.field mUseOverlay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:changeTransform:matrix"

    aput-object v2, v0, v1

    const-string v1, "android:changeTransform:transforms"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v3, "android:changeTransform:parentMatrix"

    aput-object v3, v0, v1

    sput-object v0, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 69
    new-instance v0, Landroidx/transition/ChangeTransform$1;

    const-class v1, [F

    const-string v3, "nonTranslations"

    invoke-direct {v0, v1, v3}, Landroidx/transition/ChangeTransform$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;

    .line 85
    new-instance v0, Landroidx/transition/ChangeTransform$2;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v3, "translations"

    invoke-direct {v0, v1, v3}, Landroidx/transition/ChangeTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroid/util/Property;

    .line 101
    sput-boolean v2, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 105
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 106
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 112
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 105
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 106
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 113
    sget-object v1, Landroidx/transition/Styleable;->CHANGE_TRANSFORM:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 114
    .local v1, "a":Landroid/content/res/TypedArray;
    move-object v2, p2

    check-cast v2, Lorg/xmlpull/v1/XmlPullParser;

    const-string v3, "reparentWithOverlay"

    invoke-static {v1, v2, v3, v0, v0}, Landroidx/core/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 116
    move-object v2, p2

    check-cast v2, Lorg/xmlpull/v1/XmlPullParser;

    const-string v3, "reparent"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Landroidx/core/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 118
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 8
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 195
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 196
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 197
    return-void

    .line 199
    :cond_0
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:parent"

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v1, Landroidx/transition/ChangeTransform$Transforms;

    invoke-direct {v1, v0}, Landroidx/transition/ChangeTransform$Transforms;-><init>(Landroid/view/View;)V

    .line 201
    .local v1, "transforms":Landroidx/transition/ChangeTransform$Transforms;
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:transforms"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 203
    .local v2, "matrix":Landroid/graphics/Matrix;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 206
    :cond_1
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .end local v2    # "matrix":Landroid/graphics/Matrix;
    .local v3, "matrix":Landroid/graphics/Matrix;
    goto :goto_1

    .line 204
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    .restart local v2    # "matrix":Landroid/graphics/Matrix;
    :cond_2
    :goto_0
    const/4 v3, 0x0

    .line 208
    .end local v2    # "matrix":Landroid/graphics/Matrix;
    .restart local v3    # "matrix":Landroid/graphics/Matrix;
    :goto_1
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeTransform:matrix"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-boolean v2, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    if-eqz v2, :cond_3

    .line 210
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 211
    .local v2, "parentMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 212
    .local v4, "parent":Landroid/view/ViewGroup;
    invoke-static {v4, v2}, Landroidx/transition/ViewUtils;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 213
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 214
    iget-object v5, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:changeTransform:parentMatrix"

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v5, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget v6, Landroidx/transition/R$id;->transition_transform:I

    .line 216
    invoke-virtual {v0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    .line 215
    const-string v7, "android:changeTransform:intermediateMatrix"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v5, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget v6, Landroidx/transition/R$id;->parent_matrix:I

    .line 218
    invoke-virtual {v0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    .line 217
    const-string v7, "android:changeTransform:intermediateParentMatrix"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .end local v2    # "parentMatrix":Landroid/graphics/Matrix;
    .end local v4    # "parent":Landroid/view/ViewGroup;
    :cond_3
    return-void
.end method

.method private createGhostView(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V
    .locals 8
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroidx/transition/TransitionValues;
    .param p3, "endValues"    # Landroidx/transition/TransitionValues;

    .line 347
    iget-object v0, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 349
    .local v0, "view":Landroid/view/View;
    iget-object v1, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:parentMatrix"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    .line 350
    .local v1, "endMatrix":Landroid/graphics/Matrix;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 351
    .local v2, "localEndMatrix":Landroid/graphics/Matrix;
    invoke-static {p1, v2}, Landroidx/transition/ViewUtils;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 353
    invoke-static {v0, p1, v2}, Landroidx/transition/GhostViewUtils;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostView;

    move-result-object v3

    .line 354
    .local v3, "ghostView":Landroidx/transition/GhostView;
    if-nez v3, :cond_0

    .line 355
    return-void

    .line 358
    :cond_0
    iget-object v4, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeTransform:parent"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-interface {v3, v4, v5}, Landroidx/transition/GhostView;->reserveEndViewTransition(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 361
    move-object v4, p0

    .line 362
    .local v4, "outerTransition":Landroidx/transition/Transition;
    :goto_0
    iget-object v5, v4, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    if-eqz v5, :cond_1

    .line 363
    iget-object v4, v4, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    goto :goto_0

    .line 366
    :cond_1
    new-instance v5, Landroidx/transition/ChangeTransform$GhostListener;

    invoke-direct {v5, v0, v3}, Landroidx/transition/ChangeTransform$GhostListener;-><init>(Landroid/view/View;Landroidx/transition/GhostView;)V

    .line 367
    .local v5, "listener":Landroidx/transition/ChangeTransform$GhostListener;
    invoke-virtual {v4, v5}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 371
    sget-boolean v6, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-eqz v6, :cond_3

    .line 372
    iget-object v6, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v7, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-eq v6, v7, :cond_2

    .line 373
    iget-object v6, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 375
    :cond_2
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v0, v6}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 377
    :cond_3
    return-void
.end method

.method private createTransformAnimator(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;
    .locals 19
    .param p1, "startValues"    # Landroidx/transition/TransitionValues;
    .param p2, "endValues"    # Landroidx/transition/TransitionValues;
    .param p3, "handleParentChange"    # Z

    .line 285
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iget-object v2, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:matrix"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    .line 286
    .local v2, "startMatrix":Landroid/graphics/Matrix;
    iget-object v4, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Matrix;

    .line 288
    .local v3, "endMatrix":Landroid/graphics/Matrix;
    if-nez v2, :cond_0

    .line 289
    sget-object v2, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 292
    :cond_0
    if-nez v3, :cond_1

    .line 293
    sget-object v3, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    move-object v8, v3

    goto :goto_0

    .line 292
    :cond_1
    move-object v8, v3

    .line 296
    .end local v3    # "endMatrix":Landroid/graphics/Matrix;
    .local v8, "endMatrix":Landroid/graphics/Matrix;
    :goto_0
    invoke-virtual {v2, v8}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 297
    const/4 v3, 0x0

    return-object v3

    .line 300
    :cond_2
    iget-object v3, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeTransform:transforms"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroidx/transition/ChangeTransform$Transforms;

    .line 303
    .local v6, "transforms":Landroidx/transition/ChangeTransform$Transforms;
    iget-object v5, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 304
    .local v5, "view":Landroid/view/View;
    invoke-static {v5}, Landroidx/transition/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V

    .line 306
    const/16 v3, 0x9

    new-array v11, v3, [F

    .line 307
    .local v11, "startMatrixValues":[F
    invoke-virtual {v2, v11}, Landroid/graphics/Matrix;->getValues([F)V

    .line 308
    new-array v12, v3, [F

    .line 309
    .local v12, "endMatrixValues":[F
    invoke-virtual {v8, v12}, Landroid/graphics/Matrix;->getValues([F)V

    .line 310
    new-instance v7, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-direct {v7, v5, v11}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;-><init>(Landroid/view/View;[F)V

    .line 313
    .local v7, "pathAnimatorMatrix":Landroidx/transition/ChangeTransform$PathAnimatorMatrix;
    sget-object v4, Landroidx/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;

    new-instance v9, Landroidx/transition/FloatArrayEvaluator;

    new-array v3, v3, [F

    invoke-direct {v9, v3}, Landroidx/transition/FloatArrayEvaluator;-><init>([F)V

    const/4 v3, 0x2

    new-array v10, v3, [[F

    const/4 v13, 0x0

    aput-object v11, v10, v13

    const/4 v14, 0x1

    aput-object v12, v10, v14

    invoke-static {v4, v9, v10}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 316
    .local v15, "valuesProperty":Landroid/animation/PropertyValuesHolder;
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/ChangeTransform;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v4

    aget v9, v11, v3

    const/16 v16, 0x5

    aget v10, v11, v16

    const/16 v17, 0x0

    aget v13, v12, v3

    const/16 v18, 0x1

    aget v14, v12, v16

    invoke-virtual {v4, v9, v10, v13, v14}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v13

    .line 319
    .local v13, "path":Landroid/graphics/Path;
    sget-object v4, Landroidx/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroid/util/Property;

    invoke-static {v4, v13}, Landroidx/transition/PropertyValuesHolderUtils;->ofPointF(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 321
    .local v14, "translationProperty":Landroid/animation/PropertyValuesHolder;
    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v15, v3, v17

    aput-object v14, v3, v18

    invoke-static {v7, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 324
    .local v3, "animator":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroidx/transition/ChangeTransform$Listener;

    move-object/from16 v9, p0

    iget-boolean v10, v9, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    move/from16 v9, p3

    invoke-direct/range {v4 .. v10}, Landroidx/transition/ChangeTransform$Listener;-><init>(Landroid/view/View;Landroidx/transition/ChangeTransform$Transforms;Landroidx/transition/ChangeTransform$PathAnimatorMatrix;Landroid/graphics/Matrix;ZZ)V

    .line 327
    .local v4, "listener":Landroidx/transition/ChangeTransform$Listener;
    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 328
    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 329
    return-object v3
.end method

.method private parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z
    .locals 5
    .param p1, "startParent"    # Landroid/view/ViewGroup;
    .param p2, "endParent"    # Landroid/view/ViewGroup;

    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, "parentsMatch":Z
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p2}, Landroidx/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {p0, p1, v3}, Landroidx/transition/ChangeTransform;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v1

    .line 338
    .local v1, "endValues":Landroidx/transition/TransitionValues;
    if-eqz v1, :cond_4

    .line 339
    iget-object v4, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-ne p2, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    move v0, v2

    goto :goto_1

    .line 335
    .end local v1    # "endValues":Landroidx/transition/TransitionValues;
    :cond_2
    :goto_0
    if-ne p1, p2, :cond_3

    const/4 v2, 0x1

    :cond_3
    move v0, v2

    .line 342
    :cond_4
    :goto_1
    return v0
.end method

.method static setIdentityTransforms(Landroid/view/View;)V
    .locals 9
    .param p0, "view"    # Landroid/view/View;

    .line 400
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    .end local p0    # "view":Landroid/view/View;
    .local v0, "view":Landroid/view/View;
    invoke-static/range {v0 .. v8}, Landroidx/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    .line 401
    return-void
.end method

.method private setMatricesForParent(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V
    .locals 6
    .param p1, "startValues"    # Landroidx/transition/TransitionValues;
    .param p2, "endValues"    # Landroidx/transition/TransitionValues;

    .line 380
    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:parentMatrix"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    .line 381
    .local v0, "endParentMatrix":Landroid/graphics/Matrix;
    iget-object v2, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget v3, Landroidx/transition/R$id;->parent_matrix:I

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 383
    iget-object v2, p0, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 384
    .local v2, "toLocal":Landroid/graphics/Matrix;
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 385
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 387
    iget-object v3, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeTransform:matrix"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Matrix;

    .line 388
    .local v3, "startLocal":Landroid/graphics/Matrix;
    if-nez v3, :cond_0

    .line 389
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    move-object v3, v5

    .line 390
    iget-object v5, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_0
    iget-object v4, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    .line 394
    .local v1, "startParentMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 395
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 396
    return-void
.end method

.method static setTransforms(Landroid/view/View;FFFFFFFF)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "translationX"    # F
    .param p2, "translationY"    # F
    .param p3, "translationZ"    # F
    .param p4, "scaleX"    # F
    .param p5, "scaleY"    # F
    .param p6, "rotationX"    # F
    .param p7, "rotationY"    # F
    .param p8, "rotationZ"    # F

    .line 407
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 408
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 409
    invoke-static {p0, p3}, Landroidx/core/view/ViewCompat;->setTranslationZ(Landroid/view/View;F)V

    .line 410
    invoke-virtual {p0, p4}, Landroid/view/View;->setScaleX(F)V

    .line 411
    invoke-virtual {p0, p5}, Landroid/view/View;->setScaleY(F)V

    .line 412
    invoke-virtual {p0, p6}, Landroid/view/View;->setRotationX(F)V

    .line 413
    invoke-virtual {p0, p7}, Landroid/view/View;->setRotationY(F)V

    .line 414
    invoke-virtual {p0, p8}, Landroid/view/View;->setRotation(F)V

    .line 415
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 236
    invoke-direct {p0, p1}, Landroidx/transition/ChangeTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 237
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 2
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 224
    invoke-direct {p0, p1}, Landroidx/transition/ChangeTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 225
    sget-boolean v0, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 232
    :cond_0
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroidx/transition/TransitionValues;
    .param p3, "endValues"    # Landroidx/transition/TransitionValues;

    .line 243
    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 244
    const-string v1, "android:changeTransform:parent"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 245
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 249
    :cond_0
    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 250
    .local v0, "startParent":Landroid/view/ViewGroup;
    iget-object v2, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 251
    .local v1, "endParent":Landroid/view/ViewGroup;
    iget-boolean v2, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, v1}, Landroidx/transition/ChangeTransform;->parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 253
    .local v2, "handleParentChange":Z
    :goto_0
    iget-object v3, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeTransform:intermediateMatrix"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Matrix;

    .line 254
    .local v3, "startMatrix":Landroid/graphics/Matrix;
    if-eqz v3, :cond_2

    .line 255
    iget-object v4, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeTransform:matrix"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_2
    iget-object v4, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 259
    const-string v5, "android:changeTransform:intermediateParentMatrix"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Matrix;

    .line 260
    .local v4, "startParentMatrix":Landroid/graphics/Matrix;
    if-eqz v4, :cond_3

    .line 261
    iget-object v5, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:changeTransform:parentMatrix"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :cond_3
    if-eqz v2, :cond_4

    .line 266
    invoke-direct {p0, p2, p3}, Landroidx/transition/ChangeTransform;->setMatricesForParent(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V

    .line 270
    :cond_4
    invoke-direct {p0, p2, p3, v2}, Landroidx/transition/ChangeTransform;->createTransformAnimator(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 273
    .local v5, "transformAnimator":Landroid/animation/ObjectAnimator;
    if-eqz v2, :cond_5

    if-eqz v5, :cond_5

    iget-boolean v6, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    if-eqz v6, :cond_5

    .line 274
    invoke-direct {p0, p1, p2, p3}, Landroidx/transition/ChangeTransform;->createGhostView(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V

    goto :goto_1

    .line 275
    :cond_5
    sget-boolean v6, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-nez v6, :cond_6

    .line 277
    iget-object v6, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 280
    :cond_6
    :goto_1
    return-object v5

    .line 246
    .end local v0    # "startParent":Landroid/view/ViewGroup;
    .end local v1    # "endParent":Landroid/view/ViewGroup;
    .end local v2    # "handleParentChange":Z
    .end local v3    # "startMatrix":Landroid/graphics/Matrix;
    .end local v4    # "startParentMatrix":Landroid/graphics/Matrix;
    .end local v5    # "transformAnimator":Landroid/animation/ObjectAnimator;
    :cond_7
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReparent()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    return v0
.end method

.method public getReparentWithOverlay()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 191
    sget-object v0, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setReparent(Z)V
    .locals 0
    .param p1, "reparent"    # Z

    .line 186
    iput-boolean p1, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 187
    return-void
.end method

.method public setReparentWithOverlay(Z)V
    .locals 0
    .param p1, "reparentWithOverlay"    # Z

    .line 161
    iput-boolean p1, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 162
    return-void
.end method
