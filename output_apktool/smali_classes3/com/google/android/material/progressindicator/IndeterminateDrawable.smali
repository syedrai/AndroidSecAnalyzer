.class public final Lcom/google/android/material/progressindicator/IndeterminateDrawable;
.super Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;
.source "IndeterminateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;",
        ">",
        "Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;"
    }
.end annotation


# instance fields
.field private animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "TS;>;"
        }
    .end annotation
.end field

.field private staticDummyDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;Lcom/google/android/material/progressindicator/DrawingDelegate;Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseSpec"    # Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "baseSpec",
            "drawingDelegate",
            "animatorDelegate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;",
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "TS;>;",
            "Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<",
            "Landroid/animation/ObjectAnimator;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    .local p3, "drawingDelegate":Lcom/google/android/material/progressindicator/DrawingDelegate;, "Lcom/google/android/material/progressindicator/DrawingDelegate<TS;>;"
    .local p4, "animatorDelegate":Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;, "Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<Landroid/animation/ObjectAnimator;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;)V

    .line 53
    invoke-virtual {p0, p3}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->setDrawingDelegate(Lcom/google/android/material/progressindicator/DrawingDelegate;)V

    .line 54
    invoke-virtual {p0, p4}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->setAnimatorDelegate(Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;)V

    .line 55
    return-void
.end method

.method public static createCircularDrawable(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/IndeterminateDrawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spec"    # Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "spec"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ")",
            "Lcom/google/android/material/progressindicator/IndeterminateDrawable<",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;

    invoke-direct {v0, p1}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;-><init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V

    invoke-static {p0, p1, v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->createCircularDrawable(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;Lcom/google/android/material/progressindicator/CircularDrawingDelegate;)Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    return-object v0
.end method

.method static createCircularDrawable(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;Lcom/google/android/material/progressindicator/CircularDrawingDelegate;)Lcom/google/android/material/progressindicator/IndeterminateDrawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spec"    # Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;
    .param p2, "drawingDelegate"    # Lcom/google/android/material/progressindicator/CircularDrawingDelegate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "spec",
            "drawingDelegate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            "Lcom/google/android/material/progressindicator/CircularDrawingDelegate;",
            ")",
            "Lcom/google/android/material/progressindicator/IndeterminateDrawable<",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 123
    iget v1, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indeterminateAnimationType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 124
    new-instance v1, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V

    goto :goto_0

    .line 125
    :cond_0
    new-instance v1, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;

    invoke-direct {v1, p1}, Lcom/google/android/material/progressindicator/CircularIndeterminateAdvanceAnimatorDelegate;-><init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V

    :goto_0
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;Lcom/google/android/material/progressindicator/DrawingDelegate;Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;)V

    .line 126
    .local v0, "indeterminateDrawable":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;>;"
    nop

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/progressindicator/R$drawable;->indeterminate_static:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->setStaticDummyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    return-object v0
.end method

.method public static createLinearDrawable(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/IndeterminateDrawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spec"    # Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "spec"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ")",
            "Lcom/google/android/material/progressindicator/IndeterminateDrawable<",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;

    invoke-direct {v0, p1}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;-><init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V

    invoke-static {p0, p1, v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->createLinearDrawable(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;Lcom/google/android/material/progressindicator/LinearDrawingDelegate;)Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    return-object v0
.end method

.method static createLinearDrawable(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;Lcom/google/android/material/progressindicator/LinearDrawingDelegate;)Lcom/google/android/material/progressindicator/IndeterminateDrawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spec"    # Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;
    .param p2, "drawingDelegate"    # Lcom/google/android/material/progressindicator/LinearDrawingDelegate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "spec",
            "drawingDelegate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            "Lcom/google/android/material/progressindicator/LinearDrawingDelegate;",
            ")",
            "Lcom/google/android/material/progressindicator/IndeterminateDrawable<",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 87
    iget v1, p1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indeterminateAnimationType:I

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;

    invoke-direct {v1, p1}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;-><init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V

    goto :goto_0

    .line 89
    :cond_0
    new-instance v1, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V

    :goto_0
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;Lcom/google/android/material/progressindicator/DrawingDelegate;Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;)V

    .line 83
    return-object v0
.end method

.method private isSystemAnimatorDisabled()Z
    .locals 3

    .line 282
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    iget-object v2, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->context:Landroid/content/Context;

    .line 285
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 284
    invoke-virtual {v0, v2}, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;->getSystemAnimatorDurationScale(Landroid/content/ContentResolver;)F

    move-result v0

    .line 286
    .local v0, "systemAnimatorDurationScale":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 288
    .end local v0    # "systemAnimatorDurationScale":F
    :cond_1
    return v1
.end method


# virtual methods
.method public bridge synthetic clearAnimationCallbacks()V
    .locals 0

    .line 36
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->clearAnimationCallbacks()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 182
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->clipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isSystemAnimatorDisabled()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->staticDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->staticDummyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 189
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->staticDummyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget v2, v2, v6

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 190
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->staticDummyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 191
    return-void

    .line 194
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 195
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    .line 196
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getGrowFraction()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isShowing()Z

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isHiding()Z

    move-result v5

    .line 195
    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/progressindicator/DrawingDelegate;->validateSpecAndAdjustCanvas(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V

    .line 198
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v8, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorTrackGapSize:I

    .line 199
    .local v8, "gapSize":I
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v0

    .line 200
    .local v0, "trackAlpha":I
    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    instance-of v1, v1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    const/4 v2, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    instance-of v1, v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget-boolean v1, v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indeterminateTrackVisible:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v9, v1

    .line 204
    .local v9, "drawTrack":Z
    if-eqz v9, :cond_4

    if-nez v8, :cond_4

    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 205
    invoke-virtual {v1, v6}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hasWavyEffect(Z)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    move v10, v1

    .line 207
    .local v10, "drawFullTrack":Z
    if-eqz v10, :cond_5

    .line 208
    move v6, v0

    .end local v0    # "trackAlpha":I
    .local v6, "trackAlpha":I
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    iget-object v2, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v5, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/material/progressindicator/DrawingDelegate;->fillTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    move v7, v8

    .end local v6    # "trackAlpha":I
    .restart local v0    # "trackAlpha":I
    goto/16 :goto_3

    .line 216
    :cond_5
    if-eqz v9, :cond_7

    .line 218
    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->activeIndicators:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 219
    .local v11, "firstIndicator":Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;
    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->activeIndicators:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    iget-object v3, v3, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->activeIndicators:Ljava/util/List;

    .line 220
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 221
    .local v12, "lastIndicator":Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;
    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    instance-of v1, v1, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;

    if-eqz v1, :cond_6

    .line 222
    move v6, v0

    .end local v0    # "trackAlpha":I
    .restart local v6    # "trackAlpha":I
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    iget-object v2, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->paint:Landroid/graphics/Paint;

    iget v4, v11, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v5, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    const/4 v3, 0x0

    move-object v1, p1

    move v7, v8

    .end local v8    # "gapSize":I
    .local v7, "gapSize":I
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/material/progressindicator/DrawingDelegate;->fillTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 230
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    iget-object v2, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->paint:Landroid/graphics/Paint;

    iget v3, v12, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v5, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/material/progressindicator/DrawingDelegate;->fillTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    goto :goto_3

    .line 239
    .end local v6    # "trackAlpha":I
    .end local v7    # "gapSize":I
    .restart local v0    # "trackAlpha":I
    .restart local v8    # "gapSize":I
    :cond_6
    move v6, v0

    move v7, v8

    .end local v0    # "trackAlpha":I
    .end local v8    # "gapSize":I
    .restart local v6    # "trackAlpha":I
    .restart local v7    # "gapSize":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 240
    iget v0, v12, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->rotationDegree:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 241
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    iget-object v2, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->paint:Landroid/graphics/Paint;

    iget v3, v12, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    iget v4, v11, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v5, v5, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/material/progressindicator/DrawingDelegate;->fillTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 249
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    .line 216
    .end local v6    # "trackAlpha":I
    .end local v7    # "gapSize":I
    .end local v11    # "firstIndicator":Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;
    .end local v12    # "lastIndicator":Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;
    .restart local v0    # "trackAlpha":I
    .restart local v8    # "gapSize":I
    :cond_7
    move v6, v0

    move v7, v8

    .line 254
    .end local v0    # "trackAlpha":I
    .end local v8    # "gapSize":I
    .restart local v6    # "trackAlpha":I
    .restart local v7    # "gapSize":I
    :goto_3
    const/4 v0, 0x0

    move v8, v0

    .line 255
    .local v8, "indicatorIndex":I
    :goto_4
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    iget-object v0, v0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->activeIndicators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_9

    .line 257
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    iget-object v0, v0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->activeIndicators:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 258
    .local v11, "curIndicator":Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getPhaseFraction()F

    move-result v0

    iput v0, v11, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->phaseFraction:F

    .line 260
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    iget-object v2, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v3

    invoke-virtual {v0, p1, v2, v11, v3}, Lcom/google/android/material/progressindicator/DrawingDelegate;->fillIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;I)V

    .line 263
    if-lez v8, :cond_8

    if-nez v10, :cond_8

    if-eqz v9, :cond_8

    .line 264
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    iget-object v0, v0, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->activeIndicators:Ljava/util/List;

    add-int/lit8 v2, v8, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 265
    .local v12, "prevIndicator":Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    iget-object v2, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->paint:Landroid/graphics/Paint;

    iget v3, v12, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    iget v4, v11, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    iget-object v5, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v5, v5, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/material/progressindicator/DrawingDelegate;->fillTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 256
    .end local v11    # "curIndicator":Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;
    .end local v12    # "prevIndicator":Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 276
    .end local v8    # "indicatorIndex":I
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 277
    return-void

    .line 184
    .end local v6    # "trackAlpha":I
    .end local v7    # "gapSize":I
    .end local v9    # "drawTrack":Z
    .end local v10    # "drawFullTrack":Z
    :cond_a
    :goto_5
    return-void
.end method

.method public bridge synthetic getAlpha()I
    .locals 1

    .line 36
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getAlpha()I

    move-result v0

    return v0
.end method

.method getAnimatorDelegate()Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation

    .line 309
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    return-object v0
.end method

.method getDrawingDelegate()Lcom/google/android/material/progressindicator/DrawingDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "TS;>;"
        }
    .end annotation

    .line 320
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 174
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawingDelegate;->getPreferredHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 169
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawingDelegate;->getPreferredWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOpacity()I
    .locals 1

    .line 36
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getStaticDummyDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 297
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->staticDummyDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public bridge synthetic hideNow()Z
    .locals 1

    .line 36
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideNow()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isHiding()Z
    .locals 1

    .line 36
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isHiding()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isRunning()Z
    .locals 1

    .line 36
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isRunning()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isShowing()Z
    .locals 1

    .line 36
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isShowing()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "callback"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    return-void
.end method

.method public bridge synthetic setAlpha(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setAlpha(I)V

    return-void
.end method

.method setAnimatorDelegate(Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animatorDelegate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<",
            "Landroid/animation/ObjectAnimator;",
            ">;)V"
        }
    .end annotation

    .line 314
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    .local p1, "animatorDelegate":Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;, "Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<Landroid/animation/ObjectAnimator;>;"
    iput-object p1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    .line 315
    invoke-virtual {p1, p0}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->registerDrawable(Lcom/google/android/material/progressindicator/IndeterminateDrawable;)V

    .line 316
    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "colorFilter"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method setDrawingDelegate(Lcom/google/android/material/progressindicator/DrawingDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawingDelegate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "TS;>;)V"
        }
    .end annotation

    .line 324
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    .local p1, "drawingDelegate":Lcom/google/android/material/progressindicator/DrawingDelegate;, "Lcom/google/android/material/progressindicator/DrawingDelegate<TS;>;"
    iput-object p1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    .line 325
    return-void
.end method

.method public setStaticDummyDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "staticDummyDrawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "staticDummyDrawable"
        }
    .end annotation

    .line 304
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    iput-object p1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->staticDummyDrawable:Landroid/graphics/drawable/Drawable;

    .line 305
    return-void
.end method

.method public bridge synthetic setVisible(ZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "visible",
            "restart"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0, p1, p2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setVisible(ZZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "visible",
            "restart",
            "animate"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZZ)Z

    move-result p1

    return p1
.end method

.method setVisibleInternal(ZZZ)Z
    .locals 3
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z
    .param p3, "animate"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "visible",
            "restart",
            "animate"
        }
    .end annotation

    .line 147
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisibleInternal(ZZZ)Z

    move-result v0

    .line 149
    .local v0, "changed":Z
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isSystemAnimatorDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->staticDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->staticDummyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    return v1

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    invoke-virtual {v1}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->cancelAnimatorImmediately()V

    .line 158
    :cond_1
    if-eqz p1, :cond_3

    if-nez p3, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-gt v1, v2, :cond_3

    .line 160
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isSystemAnimatorDisabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 161
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    invoke-virtual {v1}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->startAnimator()V

    .line 164
    :cond_3
    return v0
.end method

.method public bridge synthetic start()V
    .locals 0

    .line 36
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .line 36
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->stop()V

    return-void
.end method

.method public bridge synthetic unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "callback"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/google/android/material/progressindicator/IndeterminateDrawable;, "Lcom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    move-result p1

    return p1
.end method
