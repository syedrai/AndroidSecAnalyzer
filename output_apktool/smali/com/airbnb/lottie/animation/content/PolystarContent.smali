.class public Lcom/airbnb/lottie/animation/content/PolystarContent;
.super Ljava/lang/Object;
.source "PolystarContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;


# static fields
.field private static final POLYGON_MAGIC_NUMBER:F = 0.25f

.field private static final POLYSTAR_MAGIC_NUMBER:F = 0.47829f


# instance fields
.field private final hidden:Z

.field private final innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private isPathValid:Z

.field private final isReversed:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

.field private final type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/PolystarShape;)V
    .locals 2
    .param p1, "lottieDrawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/model/layer/BaseLayer;
    .param p3, "polystarShape"    # Lcom/airbnb/lottie/model/content/PolystarShape;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lottieDrawable",
            "layer",
            "polystarShape"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 45
    new-instance v0, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    invoke-direct {v0}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 50
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 52
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->name:Ljava/lang/String;

    .line 53
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getType()Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 54
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->hidden:Z

    .line 55
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->isReversed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isReversed:Z

    .line 56
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getPoints()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 57
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getPosition()Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 58
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getRotation()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 59
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getOuterRadius()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 60
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getOuterRoundedness()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 61
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    sget-object v1, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->STAR:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    if-ne v0, v1, :cond_0

    .line 62
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getInnerRadius()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 63
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getInnerRoundedness()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 65
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 66
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 70
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 71
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 72
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 73
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 74
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    sget-object v1, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->STAR:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    if-ne v0, v1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 76
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 80
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 81
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 82
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 83
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 84
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    sget-object v1, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->STAR:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    if-ne v0, v1, :cond_2

    .line 85
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 86
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 88
    :cond_2
    return-void
.end method

.method private createPolygonPath()V
    .locals 32

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 255
    .local v1, "points":I
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    .line 257
    .local v2, "currentAngle":D
    :goto_0
    const-wide v4, 0x4056800000000000L    # 90.0

    sub-double/2addr v2, v4

    .line 259
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 261
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v6, v1

    div-double/2addr v4, v6

    double-to-float v4, v4

    .line 263
    .local v4, "anglePerPoint":F
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    .line 264
    .local v5, "roundedness":F
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 269
    .local v6, "radius":F
    float-to-double v7, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double v7, v7, v9

    double-to-float v7, v7

    .line 270
    .local v7, "x":F
    float-to-double v8, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v8, v8, v10

    double-to-float v8, v8

    .line 271
    .local v8, "y":F
    iget-object v9, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 272
    float-to-double v9, v4

    add-double/2addr v2, v9

    .line 274
    int-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    .line 275
    .local v9, "numPoints":D
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    int-to-double v12, v11

    cmpg-double v14, v12, v9

    if-gez v14, :cond_2

    .line 276
    move v12, v7

    .line 277
    .local v12, "previousX":F
    move v13, v8

    .line 278
    .local v13, "previousY":F
    float-to-double v14, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v7, v14

    .line 279
    float-to-double v14, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v8, v14

    .line 281
    const/4 v14, 0x0

    cmpl-float v14, v5, v14

    if-eqz v14, :cond_1

    .line 282
    float-to-double v14, v13

    move/from16 v23, v1

    move-wide/from16 v24, v2

    .end local v1    # "points":I
    .end local v2    # "currentAngle":D
    .local v23, "points":I
    .local v24, "currentAngle":D
    float-to-double v1, v12

    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v14, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v1, v14

    double-to-float v1, v1

    .line 283
    .local v1, "cp1Theta":F
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 284
    .local v2, "cp1Dx":F
    move-wide/from16 v16, v14

    float-to-double v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v3, v14

    .line 286
    .local v3, "cp1Dy":F
    float-to-double v14, v8

    move/from16 v26, v1

    move/from16 v27, v2

    .end local v1    # "cp1Theta":F
    .end local v2    # "cp1Dx":F
    .local v26, "cp1Theta":F
    .local v27, "cp1Dx":F
    float-to-double v1, v7

    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    sub-double v1, v1, v16

    double-to-float v1, v1

    .line 287
    .local v1, "cp2Theta":F
    float-to-double v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v2, v14

    .line 288
    .local v2, "cp2Dx":F
    float-to-double v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v14, v14

    .line 290
    .local v14, "cp2Dy":F
    mul-float v15, v6, v5

    const/high16 v16, 0x3e800000    # 0.25f

    mul-float v15, v15, v16

    mul-float v15, v15, v27

    .line 291
    .local v15, "cp1x":F
    mul-float v17, v6, v5

    mul-float v17, v17, v16

    mul-float v28, v17, v3

    .line 292
    .local v28, "cp1y":F
    mul-float v17, v6, v5

    mul-float v17, v17, v16

    mul-float v29, v17, v2

    .line 293
    .local v29, "cp2x":F
    mul-float v17, v6, v5

    mul-float v17, v17, v16

    mul-float v30, v17, v14

    .line 294
    .local v30, "cp2y":F
    move/from16 v31, v1

    .end local v1    # "cp2Theta":F
    .local v31, "cp2Theta":F
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    sub-float v17, v12, v15

    sub-float v18, v13, v28

    add-float v19, v7, v29

    add-float v20, v8, v30

    move-object/from16 v16, v1

    move/from16 v21, v7

    move/from16 v22, v8

    .end local v7    # "x":F
    .end local v8    # "y":F
    .local v21, "x":F
    .local v22, "y":F
    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 295
    .end local v2    # "cp2Dx":F
    .end local v3    # "cp1Dy":F
    .end local v14    # "cp2Dy":F
    .end local v15    # "cp1x":F
    .end local v21    # "x":F
    .end local v22    # "y":F
    .end local v26    # "cp1Theta":F
    .end local v27    # "cp1Dx":F
    .end local v28    # "cp1y":F
    .end local v29    # "cp2x":F
    .end local v30    # "cp2y":F
    .end local v31    # "cp2Theta":F
    .restart local v7    # "x":F
    .restart local v8    # "y":F
    goto :goto_2

    .line 296
    .end local v23    # "points":I
    .end local v24    # "currentAngle":D
    .local v1, "points":I
    .local v2, "currentAngle":D
    :cond_1
    move/from16 v23, v1

    move-wide/from16 v24, v2

    .end local v1    # "points":I
    .end local v2    # "currentAngle":D
    .restart local v23    # "points":I
    .restart local v24    # "currentAngle":D
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 299
    :goto_2
    float-to-double v1, v4

    add-double v2, v24, v1

    .line 275
    .end local v24    # "currentAngle":D
    .restart local v2    # "currentAngle":D
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v23

    goto/16 :goto_1

    .end local v12    # "previousX":F
    .end local v13    # "previousY":F
    .end local v23    # "points":I
    .restart local v1    # "points":I
    :cond_2
    move/from16 v23, v1

    move-wide/from16 v24, v2

    .line 302
    .end local v1    # "points":I
    .end local v2    # "currentAngle":D
    .end local v11    # "i":I
    .restart local v23    # "points":I
    .restart local v24    # "currentAngle":D
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 303
    .local v1, "position":Landroid/graphics/PointF;
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v11, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v11}, Landroid/graphics/Path;->offset(FF)V

    .line 304
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 305
    return-void
.end method

.method private createStarPath()V
    .locals 47

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 146
    .local v1, "points":F
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    .line 148
    .local v2, "currentAngle":D
    :goto_0
    const-wide v4, 0x4056800000000000L    # 90.0

    sub-double/2addr v2, v4

    .line 150
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 152
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v6, v1

    div-double/2addr v4, v6

    double-to-float v4, v4

    .line 153
    .local v4, "anglePerPoint":F
    iget-boolean v5, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isReversed:Z

    if-eqz v5, :cond_1

    .line 154
    const/high16 v5, -0x40800000    # -1.0f

    mul-float v4, v4, v5

    .line 156
    :cond_1
    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    .line 157
    .local v6, "halfAnglePerPoint":F
    float-to-int v7, v1

    int-to-float v7, v7

    sub-float v7, v1, v7

    .line 158
    .local v7, "partialPointAmount":F
    const/4 v8, 0x0

    cmpl-float v9, v7, v8

    if-eqz v9, :cond_2

    .line 159
    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v7

    mul-float v9, v9, v6

    float-to-double v9, v9

    add-double/2addr v2, v9

    .line 162
    :cond_2
    iget-object v9, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 164
    .local v9, "outerRadius":F
    iget-object v10, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 166
    .local v10, "innerRadius":F
    const/4 v11, 0x0

    .line 167
    .local v11, "innerRoundedness":F
    iget-object v12, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    const/high16 v13, 0x42c80000    # 100.0f

    if-eqz v12, :cond_3

    .line 168
    iget-object v12, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v12}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    div-float v11, v12, v13

    .line 170
    :cond_3
    const/4 v12, 0x0

    .line 171
    .local v12, "outerRoundedness":F
    iget-object v14, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v14, :cond_4

    .line 172
    iget-object v14, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v14}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    div-float v12, v14, v13

    .line 179
    :cond_4
    const/4 v13, 0x0

    .line 180
    .local v13, "partialPointRadius":F
    cmpl-float v14, v7, v8

    if-eqz v14, :cond_5

    .line 181
    sub-float v14, v9, v10

    mul-float v14, v14, v7

    add-float v13, v10, v14

    .line 182
    float-to-double v14, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v14, v14

    .line 183
    .local v14, "x":F
    move/from16 v16, v6

    const/high16 v15, 0x40000000    # 2.0f

    .end local v6    # "halfAnglePerPoint":F
    .local v16, "halfAnglePerPoint":F
    float-to-double v5, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v5, v5, v17

    double-to-float v5, v5

    .line 184
    .local v5, "y":F
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v6, v14, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 185
    mul-float v6, v4, v7

    div-float/2addr v6, v15

    move/from16 v18, v9

    const/16 v17, 0x0

    .end local v9    # "outerRadius":F
    .local v18, "outerRadius":F
    float-to-double v8, v6

    add-double/2addr v2, v8

    move v6, v5

    move/from16 v8, v16

    move/from16 v5, v18

    goto :goto_1

    .line 187
    .end local v5    # "y":F
    .end local v14    # "x":F
    .end local v16    # "halfAnglePerPoint":F
    .end local v18    # "outerRadius":F
    .restart local v6    # "halfAnglePerPoint":F
    .restart local v9    # "outerRadius":F
    :cond_5
    move/from16 v16, v6

    move/from16 v18, v9

    const/high16 v15, 0x40000000    # 2.0f

    const/16 v17, 0x0

    .end local v6    # "halfAnglePerPoint":F
    .end local v9    # "outerRadius":F
    .restart local v16    # "halfAnglePerPoint":F
    .restart local v18    # "outerRadius":F
    move/from16 v5, v18

    .end local v18    # "outerRadius":F
    .local v5, "outerRadius":F
    float-to-double v8, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v8, v8, v18

    double-to-float v14, v8

    .line 188
    .restart local v14    # "x":F
    float-to-double v8, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v8, v8, v18

    double-to-float v6, v8

    .line 189
    .local v6, "y":F
    iget-object v8, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v8, v14, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 190
    move-wide/from16 v18, v2

    move/from16 v8, v16

    .end local v2    # "currentAngle":D
    .end local v16    # "halfAnglePerPoint":F
    .local v8, "halfAnglePerPoint":F
    .local v18, "currentAngle":D
    float-to-double v2, v8

    add-double v2, v18, v2

    .line 194
    .end local v18    # "currentAngle":D
    .restart local v2    # "currentAngle":D
    :goto_1
    const/4 v9, 0x0

    .line 195
    .local v9, "longSegment":Z
    move-wide/from16 v18, v2

    .end local v2    # "currentAngle":D
    .restart local v18    # "currentAngle":D
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v20

    .line 196
    .local v2, "numPoints":D
    const/16 v16, 0x0

    move/from16 v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    .local v15, "i":I
    :goto_2
    move/from16 v22, v1

    move-wide/from16 v23, v2

    .end local v1    # "points":F
    .end local v2    # "numPoints":D
    .local v22, "points":F
    .local v23, "numPoints":D
    int-to-double v1, v15

    cmpg-double v3, v1, v23

    if-gez v3, :cond_14

    .line 197
    if-eqz v9, :cond_6

    move v1, v5

    goto :goto_3

    :cond_6
    move v1, v10

    .line 198
    .local v1, "radius":F
    :goto_3
    move v2, v8

    .line 199
    .local v2, "dTheta":F
    cmpl-float v3, v13, v17

    if-eqz v3, :cond_7

    move v3, v1

    move/from16 v25, v2

    .end local v1    # "radius":F
    .end local v2    # "dTheta":F
    .local v3, "radius":F
    .local v25, "dTheta":F
    int-to-double v1, v15

    sub-double v26, v23, v20

    cmpl-double v28, v1, v26

    if-nez v28, :cond_8

    .line 200
    mul-float v1, v4, v7

    div-float v2, v1, v16

    .end local v25    # "dTheta":F
    .restart local v2    # "dTheta":F
    goto :goto_4

    .line 199
    .end local v3    # "radius":F
    .restart local v1    # "radius":F
    :cond_7
    move v3, v1

    move/from16 v25, v2

    .line 202
    .end local v1    # "radius":F
    .end local v2    # "dTheta":F
    .restart local v3    # "radius":F
    .restart local v25    # "dTheta":F
    :cond_8
    move/from16 v2, v25

    .end local v25    # "dTheta":F
    .restart local v2    # "dTheta":F
    :goto_4
    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    cmpl-float v1, v13, v17

    if-eqz v1, :cond_9

    move/from16 v27, v3

    move v1, v4

    .end local v3    # "radius":F
    .end local v4    # "anglePerPoint":F
    .local v1, "anglePerPoint":F
    .local v27, "radius":F
    int-to-double v3, v15

    sub-double v28, v23, v25

    cmpl-double v30, v3, v28

    if-nez v30, :cond_a

    .line 203
    move v3, v13

    .end local v27    # "radius":F
    .restart local v3    # "radius":F
    goto :goto_5

    .line 202
    .end local v1    # "anglePerPoint":F
    .restart local v4    # "anglePerPoint":F
    :cond_9
    move/from16 v27, v3

    move v1, v4

    .line 205
    .end local v3    # "radius":F
    .end local v4    # "anglePerPoint":F
    .restart local v1    # "anglePerPoint":F
    .restart local v27    # "radius":F
    :cond_a
    move/from16 v3, v27

    .end local v27    # "radius":F
    .restart local v3    # "radius":F
    :goto_5
    move v4, v14

    .line 206
    .local v4, "previousX":F
    move/from16 v27, v6

    .line 207
    .local v27, "previousY":F
    move/from16 v28, v5

    move/from16 v29, v6

    .end local v5    # "outerRadius":F
    .end local v6    # "y":F
    .local v28, "outerRadius":F
    .local v29, "y":F
    float-to-double v5, v3

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    mul-double v5, v5, v30

    double-to-float v5, v5

    .line 208
    .end local v14    # "x":F
    .local v5, "x":F
    move/from16 v37, v7

    .end local v7    # "partialPointAmount":F
    .local v37, "partialPointAmount":F
    float-to-double v6, v3

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v6, v6, v30

    double-to-float v6, v6

    .line 210
    .end local v29    # "y":F
    .restart local v6    # "y":F
    cmpl-float v7, v11, v17

    if-nez v7, :cond_b

    cmpl-float v7, v12, v17

    if-nez v7, :cond_b

    .line 211
    iget-object v7, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v46, v1

    move/from16 v41, v4

    move/from16 v35, v5

    move/from16 v36, v6

    move/from16 v38, v9

    move/from16 v39, v10

    move/from16 v40, v11

    move/from16 v14, v27

    move v11, v3

    move/from16 v27, v8

    goto/16 :goto_b

    .line 213
    :cond_b
    move/from16 v38, v9

    move/from16 v7, v27

    move/from16 v27, v8

    .end local v8    # "halfAnglePerPoint":F
    .end local v9    # "longSegment":Z
    .local v7, "previousY":F
    .local v27, "halfAnglePerPoint":F
    .local v38, "longSegment":Z
    float-to-double v8, v7

    move/from16 v39, v10

    move/from16 v40, v11

    .end local v10    # "innerRadius":F
    .end local v11    # "innerRoundedness":F
    .local v39, "innerRadius":F
    .local v40, "innerRoundedness":F
    float-to-double v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v8, v10

    double-to-float v8, v8

    .line 214
    .local v8, "cp1Theta":F
    move-wide/from16 v29, v10

    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 215
    .local v9, "cp1Dx":F
    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    .line 217
    .local v10, "cp1Dy":F
    move v11, v3

    move/from16 v41, v4

    .end local v3    # "radius":F
    .end local v4    # "previousX":F
    .local v11, "radius":F
    .local v41, "previousX":F
    float-to-double v3, v6

    move/from16 v36, v6

    move v14, v7

    .end local v6    # "y":F
    .end local v7    # "previousY":F
    .local v14, "previousY":F
    .local v36, "y":F
    float-to-double v6, v5

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    sub-double v3, v3, v29

    double-to-float v3, v3

    .line 218
    .local v3, "cp2Theta":F
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v4, v6

    .line 219
    .local v4, "cp2Dx":F
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 221
    .local v6, "cp2Dy":F
    if-eqz v38, :cond_c

    move/from16 v7, v40

    goto :goto_6

    :cond_c
    move v7, v12

    .line 222
    .local v7, "cp1Roundedness":F
    :goto_6
    if-eqz v38, :cond_d

    move/from16 v29, v12

    goto :goto_7

    :cond_d
    move/from16 v29, v40

    .line 223
    .local v29, "cp2Roundedness":F
    :goto_7
    if-eqz v38, :cond_e

    move/from16 v30, v39

    goto :goto_8

    :cond_e
    move/from16 v30, v28

    :goto_8
    move/from16 v42, v30

    .line 224
    .local v42, "cp1Radius":F
    if-eqz v38, :cond_f

    move/from16 v30, v28

    goto :goto_9

    :cond_f
    move/from16 v30, v39

    :goto_9
    move/from16 v43, v30

    .line 226
    .local v43, "cp2Radius":F
    mul-float v30, v42, v7

    const v31, 0x3ef4e26d    # 0.47829f

    mul-float v30, v30, v31

    mul-float v30, v30, v9

    .line 227
    .local v30, "cp1x":F
    mul-float v32, v42, v7

    mul-float v32, v32, v31

    mul-float v32, v32, v10

    .line 228
    .local v32, "cp1y":F
    mul-float v33, v43, v29

    mul-float v33, v33, v31

    mul-float v33, v33, v4

    .line 229
    .local v33, "cp2x":F
    mul-float v34, v43, v29

    mul-float v34, v34, v31

    mul-float v34, v34, v6

    .line 230
    .local v34, "cp2y":F
    cmpl-float v31, v37, v17

    if-eqz v31, :cond_11

    .line 231
    if-nez v15, :cond_10

    .line 232
    mul-float v30, v30, v37

    .line 233
    mul-float v32, v32, v37

    move/from16 v44, v3

    move/from16 v45, v4

    move/from16 v3, v30

    move/from16 v4, v32

    move/from16 v25, v33

    move/from16 v26, v34

    goto :goto_a

    .line 234
    :cond_10
    move/from16 v44, v3

    move/from16 v45, v4

    .end local v3    # "cp2Theta":F
    .end local v4    # "cp2Dx":F
    .local v44, "cp2Theta":F
    .local v45, "cp2Dx":F
    int-to-double v3, v15

    sub-double v25, v23, v25

    cmpl-double v31, v3, v25

    if-nez v31, :cond_12

    .line 235
    mul-float v33, v33, v37

    .line 236
    mul-float v34, v34, v37

    move/from16 v3, v30

    move/from16 v4, v32

    move/from16 v25, v33

    move/from16 v26, v34

    goto :goto_a

    .line 230
    .end local v44    # "cp2Theta":F
    .end local v45    # "cp2Dx":F
    .restart local v3    # "cp2Theta":F
    .restart local v4    # "cp2Dx":F
    :cond_11
    move/from16 v44, v3

    move/from16 v45, v4

    .line 240
    .end local v3    # "cp2Theta":F
    .end local v4    # "cp2Dx":F
    .restart local v44    # "cp2Theta":F
    .restart local v45    # "cp2Dx":F
    :cond_12
    move/from16 v3, v30

    move/from16 v4, v32

    move/from16 v25, v33

    move/from16 v26, v34

    .end local v30    # "cp1x":F
    .end local v32    # "cp1y":F
    .end local v33    # "cp2x":F
    .end local v34    # "cp2y":F
    .local v3, "cp1x":F
    .local v4, "cp1y":F
    .local v25, "cp2x":F
    .local v26, "cp2y":F
    :goto_a
    move/from16 v46, v1

    .end local v1    # "anglePerPoint":F
    .local v46, "anglePerPoint":F
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    sub-float v31, v41, v3

    sub-float v32, v14, v4

    add-float v33, v5, v25

    add-float v34, v36, v26

    move-object/from16 v30, v1

    move/from16 v35, v5

    .end local v5    # "x":F
    .local v35, "x":F
    invoke-virtual/range {v30 .. v36}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 243
    .end local v3    # "cp1x":F
    .end local v4    # "cp1y":F
    .end local v6    # "cp2Dy":F
    .end local v7    # "cp1Roundedness":F
    .end local v8    # "cp1Theta":F
    .end local v9    # "cp1Dx":F
    .end local v10    # "cp1Dy":F
    .end local v25    # "cp2x":F
    .end local v26    # "cp2y":F
    .end local v29    # "cp2Roundedness":F
    .end local v42    # "cp1Radius":F
    .end local v43    # "cp2Radius":F
    .end local v44    # "cp2Theta":F
    .end local v45    # "cp2Dx":F
    :goto_b
    float-to-double v3, v2

    add-double v18, v18, v3

    .line 244
    if-nez v38, :cond_13

    const/4 v1, 0x1

    goto :goto_c

    :cond_13
    const/4 v1, 0x0

    :goto_c
    move v9, v1

    .line 196
    .end local v2    # "dTheta":F
    .end local v11    # "radius":F
    .end local v38    # "longSegment":Z
    .local v9, "longSegment":Z
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v22

    move-wide/from16 v2, v23

    move/from16 v8, v27

    move/from16 v5, v28

    move/from16 v14, v35

    move/from16 v6, v36

    move/from16 v7, v37

    move/from16 v10, v39

    move/from16 v11, v40

    move/from16 v4, v46

    goto/16 :goto_2

    .end local v27    # "halfAnglePerPoint":F
    .end local v28    # "outerRadius":F
    .end local v35    # "x":F
    .end local v36    # "y":F
    .end local v37    # "partialPointAmount":F
    .end local v39    # "innerRadius":F
    .end local v40    # "innerRoundedness":F
    .end local v41    # "previousX":F
    .end local v46    # "anglePerPoint":F
    .local v4, "anglePerPoint":F
    .local v5, "outerRadius":F
    .local v6, "y":F
    .local v7, "partialPointAmount":F
    .local v8, "halfAnglePerPoint":F
    .local v10, "innerRadius":F
    .local v11, "innerRoundedness":F
    .local v14, "x":F
    :cond_14
    move/from16 v46, v4

    .line 248
    .end local v4    # "anglePerPoint":F
    .end local v15    # "i":I
    .restart local v46    # "anglePerPoint":F
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 249
    .local v1, "position":Landroid/graphics/PointF;
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->offset(FF)V

    .line 250
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 251
    return-void
.end method

.method private invalidate()V
    .locals 1

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 96
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 97
    return-void
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "property",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 315
    .local p1, "property":Ljava/lang/Object;, "TT;"
    .local p2, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_POINTS:Ljava/lang/Float;

    if-ne p1, v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 317
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_ROTATION:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 319
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POSITION:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 321
    :cond_2
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_INNER_RADIUS:Ljava/lang/Float;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_3

    .line 322
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 323
    :cond_3
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_OUTER_RADIUS:Ljava/lang/Float;

    if-ne p1, v0, :cond_4

    .line 324
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 325
    :cond_4
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_INNER_ROUNDEDNESS:Ljava/lang/Float;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_5

    .line 326
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 327
    :cond_5
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_OUTER_ROUNDEDNESS:Ljava/lang/Float;

    if-ne p1, v0, :cond_6

    .line 328
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 330
    :cond_6
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 3

    .line 112
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    return-object v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 118
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->hidden:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 119
    iput-boolean v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 120
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    return-object v0

    .line 123
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/animation/content/PolystarContent$1;->$SwitchMap$com$airbnb$lottie$model$content$PolystarShape$Type:[I

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 128
    :pswitch_0
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/PolystarContent;->createPolygonPath()V

    goto :goto_0

    .line 125
    :pswitch_1
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/PolystarContent;->createStarPath()V

    .line 126
    nop

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 134
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    .line 136
    iput-boolean v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 137
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onValueChanged()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/PolystarContent;->invalidate()V

    .line 92
    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 0
    .param p1, "keyPath"    # Lcom/airbnb/lottie/model/KeyPath;
    .param p2, "depth"    # I
    .param p4, "currentPartialKeyPath"    # Lcom/airbnb/lottie/model/KeyPath;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyPath",
            "depth",
            "accumulator",
            "currentPartialKeyPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "I",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ">;",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ")V"
        }
    .end annotation

    .line 309
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/KeyPath;>;"
    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/utils/MiscUtils;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V

    .line 310
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contentsBefore",
            "contentsAfter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 101
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/content/Content;

    .line 102
    .local v1, "content":Lcom/airbnb/lottie/animation/content/Content;
    instance-of v2, v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 103
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v2, v3, :cond_0

    .line 104
    move-object v2, v1

    check-cast v2, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 105
    .local v2, "trimPath":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->addTrimPath(Lcom/airbnb/lottie/animation/content/TrimPathContent;)V

    .line 106
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 100
    .end local v1    # "content":Lcom/airbnb/lottie/animation/content/Content;
    .end local v2    # "trimPath":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
