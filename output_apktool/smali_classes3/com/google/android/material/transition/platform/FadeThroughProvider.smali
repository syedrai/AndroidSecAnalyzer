.class public final Lcom/google/android/material/transition/platform/FadeThroughProvider;
.super Ljava/lang/Object;
.source "FadeThroughProvider.java"

# interfaces
.implements Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;


# static fields
.field static final FADE_THROUGH_THRESHOLD:F = 0.35f


# instance fields
.field private progressThreshold:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const v0, 0x3eb33333    # 0.35f

    iput v0, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider;->progressThreshold:F

    return-void
.end method

.method private static createFadeThroughAnimator(Landroid/view/View;FFFFF)Landroid/animation/Animator;
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startValue"    # F
    .param p2, "endValue"    # F
    .param p3, "startFraction"    # F
    .param p4, "endFraction"    # F
    .param p5, "originalAlpha"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "view",
            "startValue",
            "endValue",
            "startFraction",
            "endFraction",
            "originalAlpha"
        }
    .end annotation

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 96
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/google/android/material/transition/platform/FadeThroughProvider$1;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p0    # "view":Landroid/view/View;
    .end local p1    # "startValue":F
    .end local p2    # "endValue":F
    .end local p3    # "startFraction":F
    .end local p4    # "endFraction":F
    .local v2, "view":Landroid/view/View;
    .local v3, "startValue":F
    .local v4, "endValue":F
    .local v5, "startFraction":F
    .local v6, "endFraction":F
    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/transition/platform/FadeThroughProvider$1;-><init>(Landroid/view/View;FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 104
    new-instance p0, Lcom/google/android/material/transition/platform/FadeThroughProvider$2;

    invoke-direct {p0, v2, p5}, Lcom/google/android/material/transition/platform/FadeThroughProvider$2;-><init>(Landroid/view/View;F)V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 112
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public createAppear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sceneRoot",
            "view"
        }
    .end annotation

    .line 65
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    :goto_0
    move v3, v0

    .line 66
    .local v3, "originalAlpha":F
    iget v4, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider;->progressThreshold:F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    move v6, v3

    move-object v1, p2

    .end local p2    # "view":Landroid/view/View;
    .local v1, "view":Landroid/view/View;
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/transition/platform/FadeThroughProvider;->createFadeThroughAnimator(Landroid/view/View;FFFFF)Landroid/animation/Animator;

    move-result-object p2

    return-object p2
.end method

.method public createDisappear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sceneRoot",
            "view"
        }
    .end annotation

    .line 78
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    :goto_0
    move v2, v0

    .line 79
    .local v2, "originalAlpha":F
    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider;->progressThreshold:F

    const/4 v3, 0x0

    move v6, v2

    move-object v1, p2

    .end local p2    # "view":Landroid/view/View;
    .local v1, "view":Landroid/view/View;
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/transition/platform/FadeThroughProvider;->createFadeThroughAnimator(Landroid/view/View;FFFFF)Landroid/animation/Animator;

    move-result-object p2

    return-object p2
.end method

.method public getProgressThreshold()F
    .locals 1

    .line 49
    iget v0, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider;->progressThreshold:F

    return v0
.end method

.method public setProgressThreshold(F)V
    .locals 0
    .param p1, "progressThreshold"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progressThreshold"
        }
    .end annotation

    .line 59
    iput p1, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider;->progressThreshold:F

    .line 60
    return-void
.end method
