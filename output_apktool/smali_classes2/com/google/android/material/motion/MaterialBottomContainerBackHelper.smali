.class public Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;
.super Lcom/google/android/material/motion/MaterialBackAnimationHelper;
.source "MaterialBottomContainerBackHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/motion/MaterialBackAnimationHelper<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final maxScaleXDistance:F

.field private final maxScaleYDistance:F


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

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;-><init>(Landroid/view/View;)V

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/google/android/material/motion/R$dimen;->m3_back_progress_bottom_container_max_scale_x_distance:I

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->maxScaleXDistance:F

    .line 54
    sget v1, Lcom/google/android/material/motion/R$dimen;->m3_back_progress_bottom_container_max_scale_y_distance:I

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->maxScaleYDistance:F

    .line 56
    return-void
.end method

.method private createResetScaleAnimator()Landroid/animation/Animator;
    .locals 10

    .line 149
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 150
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->view:Landroid/view/View;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v5, v6

    .line 151
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->view:Landroid/view/View;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v4, [F

    aput v7, v5, v6

    .line 152
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    .line 150
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 153
    iget-object v1, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->view:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    .line 155
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 156
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 157
    .local v3, "childView":Landroid/view/View;
    new-array v5, v4, [Landroid/animation/Animator;

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v4, [F

    aput v7, v9, v6

    invoke-static {v3, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 155
    .end local v3    # "childView":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_0
    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 161
    return-object v0
.end method


# virtual methods
.method public cancelBackProgress()V
    .locals 3

    .line 139
    invoke-super {p0}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->onCancelBackProgress()Landroidx/activity/BackEventCompat;

    move-result-object v0

    if-nez v0, :cond_0

    .line 140
    return-void

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->createResetScaleAnimator()Landroid/animation/Animator;

    move-result-object v0

    .line 144
    .local v0, "animator":Landroid/animation/Animator;
    iget v1, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->cancelDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 145
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 146
    return-void
.end method

.method public finishBackProgressNotPersistent(Landroidx/activity/BackEventCompat;Landroid/animation/Animator$AnimatorListener;)V
    .locals 5
    .param p1, "backEvent"    # Landroidx/activity/BackEventCompat;
    .param p2, "animatorListener"    # Landroid/animation/Animator$AnimatorListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "backEvent",
            "animatorListener"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    mul-float v0, v0, v1

    .line 120
    .local v0, "scaledHeight":F
    iget-object v1, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->view:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 121
    .local v1, "finishAnimator":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 122
    iget v2, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->hideDurationMax:I

    iget v3, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->hideDurationMin:I

    .line 123
    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getProgress()F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v2

    int-to-long v2, v2

    .line 122
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 124
    new-instance v2, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper$1;

    invoke-direct {v2, p0}, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper$1;-><init>(Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 132
    if-eqz p2, :cond_0

    .line 133
    invoke-virtual {v1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 135
    :cond_0
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 136
    return-void
.end method

.method public finishBackProgressPersistent(Landroidx/activity/BackEventCompat;Landroid/animation/Animator$AnimatorListener;)V
    .locals 4
    .param p1, "backEvent"    # Landroidx/activity/BackEventCompat;
    .param p2, "animatorListener"    # Landroid/animation/Animator$AnimatorListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "backEvent",
            "animatorListener"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->createResetScaleAnimator()Landroid/animation/Animator;

    move-result-object v0

    .line 109
    .local v0, "animator":Landroid/animation/Animator;
    iget v1, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->hideDurationMax:I

    iget v2, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->hideDurationMin:I

    .line 110
    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getProgress()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v1

    int-to-long v1, v1

    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 111
    if-eqz p2, :cond_0

    .line 112
    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 114
    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 115
    return-void
.end method

.method public startBackProgress(Landroidx/activity/BackEventCompat;)V
    .locals 0
    .param p1, "backEvent"    # Landroidx/activity/BackEventCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backEvent"
        }
    .end annotation

    .line 59
    invoke-super {p0, p1}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->onStartBackProgress(Landroidx/activity/BackEventCompat;)V

    .line 60
    return-void
.end method

.method public updateBackProgress(F)V
    .locals 14
    .param p1, "progress"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1}, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->interpolateProgress(F)F

    move-result p1

    .line 74
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 75
    .local v0, "width":F
    iget-object v1, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 76
    .local v1, "height":F
    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-lez v3, :cond_5

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_0

    goto :goto_3

    .line 80
    :cond_0
    iget v3, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->maxScaleXDistance:F

    div-float/2addr v3, v0

    .line 81
    .local v3, "maxScaleXDelta":F
    iget v4, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->maxScaleYDistance:F

    div-float/2addr v4, v1

    .line 82
    .local v4, "maxScaleYDelta":F
    invoke-static {v2, v3, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v5

    .line 83
    .local v5, "scaleXDelta":F
    invoke-static {v2, v4, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v6

    .line 84
    .local v6, "scaleYDelta":F
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v8, v7, v5

    .line 85
    .local v8, "scaleX":F
    sub-float v9, v7, v6

    .line 87
    .local v9, "scaleY":F
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_2

    .line 91
    :cond_1
    iget-object v10, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v10, v8}, Landroid/view/View;->setScaleX(F)V

    .line 92
    iget-object v10, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v10, v1}, Landroid/view/View;->setPivotY(F)V

    .line 93
    iget-object v10, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->view:Landroid/view/View;

    invoke-virtual {v10, v9}, Landroid/view/View;->setScaleY(F)V

    .line 95
    iget-object v10, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->view:Landroid/view/View;

    instance-of v10, v10, Landroid/view/ViewGroup;

    if-eqz v10, :cond_3

    .line 96
    iget-object v10, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->view:Landroid/view/View;

    check-cast v10, Landroid/view/ViewGroup;

    .line 97
    .local v10, "viewGroup":Landroid/view/ViewGroup;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v11, v12, :cond_3

    .line 98
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 100
    .local v12, "childView":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setPivotY(F)V

    .line 101
    cmpl-float v13, v9, v2

    if-eqz v13, :cond_2

    div-float v13, v8, v9

    goto :goto_1

    :cond_2
    const/high16 v13, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v12, v13}, Landroid/view/View;->setScaleY(F)V

    .line 97
    .end local v12    # "childView":Landroid/view/View;
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 104
    .end local v10    # "viewGroup":Landroid/view/ViewGroup;
    .end local v11    # "i":I
    :cond_3
    return-void

    .line 88
    :cond_4
    :goto_2
    return-void

    .line 77
    .end local v3    # "maxScaleXDelta":F
    .end local v4    # "maxScaleYDelta":F
    .end local v5    # "scaleXDelta":F
    .end local v6    # "scaleYDelta":F
    .end local v8    # "scaleX":F
    .end local v9    # "scaleY":F
    :cond_5
    :goto_3
    return-void
.end method

.method public updateBackProgress(Landroidx/activity/BackEventCompat;)V
    .locals 1
    .param p1, "backEvent"    # Landroidx/activity/BackEventCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backEvent"
        }
    .end annotation

    .line 63
    invoke-super {p0, p1}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->onUpdateBackProgress(Landroidx/activity/BackEventCompat;)Landroidx/activity/BackEventCompat;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    return-void

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getProgress()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->updateBackProgress(F)V

    .line 68
    return-void
.end method
