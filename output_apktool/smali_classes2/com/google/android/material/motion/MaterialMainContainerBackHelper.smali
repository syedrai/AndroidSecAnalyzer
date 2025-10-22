.class public Lcom/google/android/material/motion/MaterialMainContainerBackHelper;
.super Lcom/google/android/material/motion/MaterialBackAnimationHelper;
.source "MaterialMainContainerBackHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/motion/MaterialBackAnimationHelper<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final MIN_SCALE:F = 0.9f


# instance fields
.field private expandedCornerRadii:[F

.field private initialHideFromClipBounds:Landroid/graphics/Rect;

.field private initialHideToClipBounds:Landroid/graphics/Rect;

.field private initialTouchY:F

.field private final maxTranslationY:F

.field private final minEdgeGap:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;-><init>(Landroid/view/View;)V

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 69
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/google/android/material/motion/R$dimen;->m3_back_progress_main_container_min_edge_gap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->minEdgeGap:F

    .line 70
    sget v1, Lcom/google/android/material/motion/R$dimen;->m3_back_progress_main_container_max_translation_y:I

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->maxTranslationY:F

    .line 72
    return-void
.end method

.method private calculateExpandedCornerRadii()[F
    .locals 26

    .line 255
    move-object/from16 v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_5

    .line 256
    iget-object v1, v0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    .line 257
    .local v1, "insets":Landroid/view/WindowInsets;
    if-eqz v1, :cond_5

    .line 258
    iget-object v2, v0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 259
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 260
    .local v4, "screenWidth":I
    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 262
    .local v5, "screenHeight":I
    const/4 v6, 0x2

    new-array v7, v6, [I

    .line 263
    .local v7, "location":[I
    iget-object v8, v0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 264
    const/4 v8, 0x0

    aget v9, v7, v8

    .line 265
    .local v9, "x":I
    const/4 v10, 0x1

    aget v11, v7, v10

    .line 267
    .local v11, "y":I
    iget-object v12, v0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    .line 268
    .local v12, "width":I
    iget-object v13, v0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 271
    .local v13, "height":I
    if-nez v9, :cond_0

    if-nez v11, :cond_0

    invoke-direct {v0, v1, v8}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getRoundedCornerRadius(Landroid/view/WindowInsets;I)I

    move-result v14

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    .line 273
    .local v14, "topLeft":I
    :goto_0
    add-int v15, v9, v12

    if-lt v15, v4, :cond_1

    if-nez v11, :cond_1

    .line 274
    invoke-direct {v0, v1, v10}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getRoundedCornerRadius(Landroid/view/WindowInsets;I)I

    move-result v15

    goto :goto_1

    .line 275
    :cond_1
    const/4 v15, 0x0

    :goto_1
    nop

    .line 277
    .local v15, "topRight":I
    const/16 v16, 0x0

    add-int v8, v9, v12

    if-lt v8, v4, :cond_2

    add-int v8, v11, v13

    if-lt v8, v5, :cond_2

    .line 278
    invoke-direct {v0, v1, v6}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getRoundedCornerRadius(Landroid/view/WindowInsets;I)I

    move-result v8

    goto :goto_2

    .line 279
    :cond_2
    const/4 v8, 0x0

    :goto_2
    nop

    .line 281
    .local v8, "bottomRight":I
    const/16 v17, 0x2

    const/4 v6, 0x3

    if-nez v9, :cond_3

    const/16 v18, 0x1

    add-int v10, v11, v13

    if-lt v10, v5, :cond_4

    .line 282
    invoke-direct {v0, v1, v6}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getRoundedCornerRadius(Landroid/view/WindowInsets;I)I

    move-result v10

    goto :goto_3

    .line 281
    :cond_3
    const/16 v18, 0x1

    .line 283
    :cond_4
    const/4 v10, 0x0

    :goto_3
    nop

    .line 285
    .local v10, "bottomLeft":I
    const/16 v19, 0x3

    int-to-float v6, v14

    int-to-float v3, v14

    int-to-float v0, v15

    move/from16 v20, v0

    int-to-float v0, v15

    move/from16 v21, v0

    int-to-float v0, v8

    move/from16 v22, v0

    int-to-float v0, v8

    move/from16 v23, v0

    int-to-float v0, v10

    move/from16 v24, v0

    int-to-float v0, v10

    move/from16 v25, v0

    const/16 v0, 0x8

    new-array v0, v0, [F

    aput v6, v0, v16

    aput v3, v0, v18

    aput v20, v0, v17

    aput v21, v0, v19

    const/4 v3, 0x4

    aput v22, v0, v3

    const/4 v3, 0x5

    aput v23, v0, v3

    const/4 v3, 0x6

    aput v24, v0, v3

    const/4 v3, 0x7

    aput v25, v0, v3

    return-object v0

    .line 290
    .end local v1    # "insets":Landroid/view/WindowInsets;
    .end local v2    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v4    # "screenWidth":I
    .end local v5    # "screenHeight":I
    .end local v7    # "location":[I
    .end local v8    # "bottomRight":I
    .end local v9    # "x":I
    .end local v10    # "bottomLeft":I
    .end local v11    # "y":I
    .end local v12    # "width":I
    .end local v13    # "height":I
    .end local v14    # "topLeft":I
    .end local v15    # "topRight":I
    :cond_5
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private createCornerAnimator(Lcom/google/android/material/internal/ClippableRoundedCornerLayout;)Landroid/animation/ValueAnimator;
    .locals 5
    .param p1, "clippableRoundedCornerLayout"    # Lcom/google/android/material/internal/ClippableRoundedCornerLayout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clippableRoundedCornerLayout"
        }
    .end annotation

    .line 204
    new-instance v0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$$ExternalSyntheticLambda0;-><init>()V

    .line 208
    invoke-virtual {p1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->getCornerRadii()[F

    move-result-object v1

    .line 209
    invoke-virtual {p0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getExpandedCornerRadii()[F

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    .line 205
    invoke-static {v0, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 210
    .local v0, "cornerAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/internal/ClippableRoundedCornerLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 213
    return-object v0
.end method

.method private createResetScaleAndTranslationAnimator(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 8
    .param p1, "collapsedView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collapsedView"
        }
    .end annotation

    .line 183
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 184
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v5, v6

    .line 185
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v4, [F

    aput v7, v5, v6

    .line 186
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v4, [F

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 187
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    aput v7, v4, v6

    .line 188
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 184
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 189
    new-instance v1, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$1;-><init>(Lcom/google/android/material/motion/MaterialMainContainerBackHelper;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 198
    return-object v0
.end method

.method private getRoundedCornerRadius(Landroid/view/WindowInsets;I)I
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "insets",
            "position"
        }
    .end annotation

    .line 295
    invoke-virtual {p1, p2}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v0

    .line 296
    .local v0, "roundedCorner":Landroid/view/RoundedCorner;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$createCornerAnimator$0(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "fraction"    # F
    .param p1, "startValue"    # Ljava/lang/Object;
    .param p2, "endValue"    # Ljava/lang/Object;

    .line 207
    move-object v0, p1

    check-cast v0, [F

    move-object v1, p2

    check-cast v1, [F

    invoke-static {v0, v1, p0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->lerpCornerRadii([F[FF)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$createCornerAnimator$1(Lcom/google/android/material/internal/ClippableRoundedCornerLayout;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p0, "clippableRoundedCornerLayout"    # Lcom/google/android/material/internal/ClippableRoundedCornerLayout;
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 212
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->updateCornerRadii([F)V

    return-void
.end method

.method private static lerpCornerRadii([FFF)[F
    .locals 19
    .param p0, "startValue"    # [F
    .param p1, "endValue"    # F
    .param p2, "fraction"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startValue",
            "endValue",
            "fraction"
        }
    .end annotation

    .line 230
    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    aget v3, p0, v2

    .line 231
    invoke-static {v3, v0, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v3

    const/4 v4, 0x1

    aget v5, p0, v4

    .line 232
    invoke-static {v5, v0, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v5

    const/4 v6, 0x2

    aget v7, p0, v6

    .line 233
    invoke-static {v7, v0, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v7

    const/4 v8, 0x3

    aget v9, p0, v8

    .line 234
    invoke-static {v9, v0, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v9

    const/4 v10, 0x4

    aget v11, p0, v10

    .line 235
    invoke-static {v11, v0, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v11

    const/4 v12, 0x5

    aget v13, p0, v12

    .line 236
    invoke-static {v13, v0, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v13

    const/4 v14, 0x6

    aget v15, p0, v14

    .line 237
    invoke-static {v15, v0, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v15

    const/16 v16, 0x7

    const/16 v17, 0x0

    aget v2, p0, v16

    .line 238
    invoke-static {v2, v0, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v2

    const/16 v18, 0x1

    const/16 v4, 0x8

    new-array v4, v4, [F

    aput v3, v4, v17

    aput v5, v4, v18

    aput v7, v4, v6

    aput v9, v4, v8

    aput v11, v4, v10

    aput v13, v4, v12

    aput v15, v4, v14

    aput v2, v4, v16

    .line 230
    return-object v4
.end method

.method private static lerpCornerRadii([F[FF)[F
    .locals 18
    .param p0, "startValue"    # [F
    .param p1, "endValue"    # [F
    .param p2, "fraction"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startValue",
            "endValue",
            "fraction"
        }
    .end annotation

    .line 217
    move/from16 v0, p2

    const/4 v1, 0x0

    aget v2, p0, v1

    aget v3, p1, v1

    .line 218
    invoke-static {v2, v3, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v2

    const/4 v3, 0x1

    aget v4, p0, v3

    aget v5, p1, v3

    .line 219
    invoke-static {v4, v5, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v4

    const/4 v5, 0x2

    aget v6, p0, v5

    aget v7, p1, v5

    .line 220
    invoke-static {v6, v7, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v6

    const/4 v7, 0x3

    aget v8, p0, v7

    aget v9, p1, v7

    .line 221
    invoke-static {v8, v9, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v8

    const/4 v9, 0x4

    aget v10, p0, v9

    aget v11, p1, v9

    .line 222
    invoke-static {v10, v11, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v10

    const/4 v11, 0x5

    aget v12, p0, v11

    aget v13, p1, v11

    .line 223
    invoke-static {v12, v13, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v12

    const/4 v13, 0x6

    aget v14, p0, v13

    aget v15, p1, v13

    .line 224
    invoke-static {v14, v15, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v14

    const/4 v15, 0x7

    const/16 v16, 0x0

    aget v1, p0, v15

    const/16 v17, 0x1

    aget v3, p1, v15

    .line 225
    invoke-static {v1, v3, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v1

    const/16 v3, 0x8

    new-array v3, v3, [F

    aput v2, v3, v16

    aput v4, v3, v17

    aput v6, v3, v5

    aput v8, v3, v7

    aput v10, v3, v9

    aput v12, v3, v11

    aput v14, v3, v13

    aput v1, v3, v15

    .line 217
    return-object v3
.end method

.method private resetInitialValues()V
    .locals 1

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialTouchY:F

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialHideToClipBounds:Landroid/graphics/Rect;

    .line 178
    iput-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialHideFromClipBounds:Landroid/graphics/Rect;

    .line 179
    return-void
.end method


# virtual methods
.method public cancelBackProgress(Landroid/view/View;)V
    .locals 4
    .param p1, "collapsedView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collapsedView"
        }
    .end annotation

    .line 161
    invoke-super {p0}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->onCancelBackProgress()Landroidx/activity/BackEventCompat;

    move-result-object v0

    if-nez v0, :cond_0

    .line 162
    return-void

    .line 165
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->createResetScaleAndTranslationAnimator(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 166
    .local v0, "cancelAnimatorSet":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    instance-of v1, v1, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    if-eqz v1, :cond_1

    .line 167
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    check-cast v2, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    invoke-direct {p0, v2}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->createCornerAnimator(Lcom/google/android/material/internal/ClippableRoundedCornerLayout;)Landroid/animation/ValueAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 169
    :cond_1
    iget v1, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->cancelDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 170
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 172
    invoke-direct {p0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->resetInitialValues()V

    .line 173
    return-void
.end method

.method public clearExpandedCornerRadii()V
    .locals 1

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->expandedCornerRadii:[F

    .line 252
    return-void
.end method

.method public finishBackProgress(JLandroid/view/View;)V
    .locals 1
    .param p1, "duration"    # J
    .param p3, "collapsedView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "duration",
            "collapsedView"
        }
    .end annotation

    .line 153
    invoke-direct {p0, p3}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->createResetScaleAndTranslationAnimator(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 154
    .local v0, "resetAnimator":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 155
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 157
    invoke-direct {p0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->resetInitialValues()V

    .line 158
    return-void
.end method

.method public getExpandedCornerRadii()[F
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->expandedCornerRadii:[F

    if-nez v0, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->calculateExpandedCornerRadii()[F

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->expandedCornerRadii:[F

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->expandedCornerRadii:[F

    return-object v0
.end method

.method public getInitialHideFromClipBounds()Landroid/graphics/Rect;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialHideFromClipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getInitialHideToClipBounds()Landroid/graphics/Rect;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialHideToClipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public startBackProgress(FLandroid/view/View;)V
    .locals 1
    .param p1, "touchY"    # F
    .param p2, "collapsedView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "touchY",
            "collapsedView"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/internal/ViewUtils;->calculateRectFromBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialHideToClipBounds:Landroid/graphics/Rect;

    .line 93
    if-eqz p2, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/google/android/material/internal/ViewUtils;->calculateOffsetRectFromBounds(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialHideFromClipBounds:Landroid/graphics/Rect;

    .line 96
    :cond_0
    iput p1, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialTouchY:F

    .line 97
    return-void
.end method

.method public startBackProgress(Landroidx/activity/BackEventCompat;Landroid/view/View;)V
    .locals 1
    .param p1, "backEvent"    # Landroidx/activity/BackEventCompat;
    .param p2, "collapsedView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "backEvent",
            "collapsedView"
        }
    .end annotation

    .line 85
    invoke-super {p0, p1}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->onStartBackProgress(Landroidx/activity/BackEventCompat;)V

    .line 87
    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getTouchY()F

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->startBackProgress(FLandroid/view/View;)V

    .line 88
    return-void
.end method

.method public updateBackProgress(FZFF)V
    .locals 16
    .param p1, "progress"    # F
    .param p2, "leftSwipeEdge"    # Z
    .param p3, "touchY"    # F
    .param p4, "collapsedCornerSize"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "progress",
            "leftSwipeEdge",
            "touchY",
            "collapsedCornerSize"
        }
    .end annotation

    .line 117
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->interpolateProgress(F)F

    move-result v1

    .line 119
    .end local p1    # "progress":F
    .local v1, "progress":F
    iget-object v2, v0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 120
    .local v2, "width":F
    iget-object v3, v0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 121
    .local v3, "height":F
    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-lez v5, :cond_5

    cmpg-float v5, v3, v4

    if-gtz v5, :cond_0

    move/from16 v15, p4

    goto/16 :goto_3

    .line 125
    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f666666    # 0.9f

    invoke-static {v5, v6, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v5

    .line 127
    .local v5, "scale":F
    mul-float v6, v6, v2

    sub-float v6, v2, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iget v8, v0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->minEdgeGap:F

    sub-float/2addr v6, v8

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 128
    .local v6, "availableHorizontalSpace":F
    invoke-static {v4, v6, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v8

    if-eqz p2, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, -0x1

    :goto_0
    int-to-float v9, v9

    mul-float v8, v8, v9

    .line 130
    .local v8, "translationX":F
    mul-float v9, v5, v3

    sub-float v9, v3, v9

    div-float/2addr v9, v7

    iget v7, v0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->minEdgeGap:F

    sub-float/2addr v9, v7

    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 131
    .local v7, "availableVerticalSpace":F
    iget v9, v0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->maxTranslationY:F

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 132
    .local v9, "maxTranslationY":F
    iget v10, v0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialTouchY:F

    sub-float v10, p3, v10

    .line 133
    .local v10, "yDelta":F
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v11

    div-float/2addr v11, v3

    .line 134
    .local v11, "yProgress":F
    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v12

    .line 135
    .local v12, "translationYDirection":F
    invoke-static {v4, v9, v11}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v4

    mul-float v4, v4, v12

    .line 137
    .local v4, "translationY":F
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_4

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_2

    move/from16 v15, p4

    goto :goto_2

    .line 141
    :cond_2
    iget-object v13, v0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v13, v5}, Landroid/view/View;->setScaleX(F)V

    .line 142
    iget-object v13, v0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v13, v5}, Landroid/view/View;->setScaleY(F)V

    .line 143
    iget-object v13, v0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v13, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 144
    iget-object v13, v0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v13, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 145
    iget-object v13, v0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    instance-of v13, v13, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    if-eqz v13, :cond_3

    .line 146
    iget-object v13, v0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->view:Landroid/view/View;

    check-cast v13, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    .line 148
    invoke-virtual {v0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getExpandedCornerRadii()[F

    move-result-object v14

    move/from16 v15, p4

    invoke-static {v14, v15, v1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->lerpCornerRadii([FFF)[F

    move-result-object v14

    .line 147
    invoke-virtual {v13, v14}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->updateCornerRadii([F)V

    goto :goto_1

    .line 145
    :cond_3
    move/from16 v15, p4

    .line 150
    :goto_1
    return-void

    .line 137
    :cond_4
    move/from16 v15, p4

    .line 138
    :goto_2
    return-void

    .line 121
    .end local v4    # "translationY":F
    .end local v5    # "scale":F
    .end local v6    # "availableHorizontalSpace":F
    .end local v7    # "availableVerticalSpace":F
    .end local v8    # "translationX":F
    .end local v9    # "maxTranslationY":F
    .end local v10    # "yDelta":F
    .end local v11    # "yProgress":F
    .end local v12    # "translationYDirection":F
    :cond_5
    move/from16 v15, p4

    .line 122
    :goto_3
    return-void
.end method

.method public updateBackProgress(Landroidx/activity/BackEventCompat;Landroid/view/View;F)V
    .locals 3
    .param p1, "backEvent"    # Landroidx/activity/BackEventCompat;
    .param p2, "collapsedView"    # Landroid/view/View;
    .param p3, "collapsedCornerSize"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "backEvent",
            "collapsedView",
            "collapsedCornerSize"
        }
    .end annotation

    .line 101
    invoke-super {p0, p1}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->onUpdateBackProgress(Landroidx/activity/BackEventCompat;)Landroidx/activity/BackEventCompat;

    move-result-object v0

    if-nez v0, :cond_0

    .line 102
    return-void

    .line 105
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 106
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :cond_1
    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getSwipeEdge()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 110
    .local v0, "leftSwipeEdge":Z
    :goto_0
    nop

    .line 111
    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getProgress()F

    move-result v1

    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getTouchY()F

    move-result v2

    .line 110
    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->updateBackProgress(FZFF)V

    .line 112
    return-void
.end method
