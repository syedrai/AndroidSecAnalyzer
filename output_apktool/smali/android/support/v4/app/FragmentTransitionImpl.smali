.class public abstract Landroid/support/v4/app/FragmentTransitionImpl;
.super Ljava/lang/Object;
.source "FragmentTransitionImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V
    .locals 8
    .param p1, "startView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 348
    .local p0, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 349
    .local v0, "startIndex":I
    invoke-static {p0, p1, v0}, Landroid/support/v4/app/FragmentTransitionImpl;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    return-void

    .line 352
    :cond_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 353
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_1
    move v1, v0

    .local v1, "index":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 356
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 357
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 358
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    .line 359
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 360
    .local v4, "childCount":I
    const/4 v5, 0x0

    .local v5, "childIndex":I
    :goto_1
    if-ge v5, v4, :cond_3

    .line 361
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 362
    .local v6, "child":Landroid/view/View;
    invoke-static {p0, v6, v0}, Landroid/support/v4/app/FragmentTransitionImpl;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 363
    invoke-static {v6}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 364
    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 355
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    .end local v4    # "childCount":I
    .end local v5    # "childIndex":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    .end local v1    # "index":I
    :cond_4
    return-void
.end method

.method private static containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "maxIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .line 376
    .local p0, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 377
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 378
    const/4 v1, 0x1

    return v1

    .line 376
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected static isNullOrEmpty(Ljava/util/List;)Z
    .locals 1
    .param p0, "list"    # Ljava/util/List;

    .line 388
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public abstract addTarget(Ljava/lang/Object;Landroid/view/View;)V
.end method

.method public abstract addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public animateToEnd(Ljava/lang/Object;)V
    .locals 0
    .param p1, "transitionController"    # Ljava/lang/Object;

    .line 187
    return-void
.end method

.method public animateToStart(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "transitionController"    # Ljava/lang/Object;
    .param p2, "completeRunnable"    # Ljava/lang/Runnable;

    .line 195
    return-void
.end method

.method public abstract beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
.end method

.method public abstract canHandle(Ljava/lang/Object;)Z
.end method

.method public abstract cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public controlDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "transition"    # Ljava/lang/Object;

    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "epicenter"    # Landroid/graphics/Rect;

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    return-void

    .line 85
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 86
    .local v0, "rect":Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 92
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 93
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .line 95
    .local v2, "parentView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 96
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 97
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 99
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 100
    .end local v2    # "parentView":Landroid/view/View;
    goto :goto_0

    .line 102
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 103
    .local v2, "loc":[I
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 104
    const/4 v3, 0x0

    aget v3, v2, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v4, v2, v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 105
    iget v3, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    .line 106
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 105
    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 107
    return-void
.end method

.method public isSeekingSupported()Z
    .locals 2

    .line 156
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "FragmentManager"

    const-string v1, "Older versions of AndroidX Transition do not support seeking. Add dependency on AndroidX Transition 1.5.0 or higher to enable seeking."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSeekingSupported(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "transition"    # Ljava/lang/Object;

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public abstract mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 205
    .local p1, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v0, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 207
    .local v1, "numSharedElements":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 208
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 209
    .local v3, "view":Landroid/view/View;
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 207
    .end local v3    # "view":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public abstract removeTarget(Ljava/lang/Object;Landroid/view/View;)V
.end method

.method public abstract replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public setCurrentPlayTime(Ljava/lang/Object;F)V
    .locals 0
    .param p1, "transitionController"    # Ljava/lang/Object;
    .param p2, "progress"    # F

    .line 182
    return-void
.end method

.method public abstract setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end method

.method public abstract setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
.end method

.method public setListenerForTransitionEnd(Landroid/support/v4/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transition"    # Ljava/lang/Object;
    .param p3, "signal"    # Landroidx/core/os/CancellationSignal;
    .param p4, "transitionCompleteRunnable"    # Ljava/lang/Runnable;

    .line 279
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .end local p1    # "outFragment":Landroid/support/v4/app/Fragment;
    .end local p2    # "transition":Ljava/lang/Object;
    .end local p3    # "signal":Landroidx/core/os/CancellationSignal;
    .end local p4    # "transitionCompleteRunnable":Ljava/lang/Runnable;
    .local v1, "outFragment":Landroid/support/v4/app/Fragment;
    .local v2, "transition":Ljava/lang/Object;
    .local v3, "signal":Landroidx/core/os/CancellationSignal;
    .local v5, "transitionCompleteRunnable":Ljava/lang/Runnable;
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Landroid/support/v4/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 282
    return-void
.end method

.method public setListenerForTransitionEnd(Landroid/support/v4/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transition"    # Ljava/lang/Object;
    .param p3, "signal"    # Landroidx/core/os/CancellationSignal;
    .param p4, "cancelRunnable"    # Ljava/lang/Runnable;
    .param p5, "transitionCompleteRunnable"    # Ljava/lang/Runnable;

    .line 306
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 307
    return-void
.end method

.method setNameOverridesReordered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 8
    .param p1, "sceneRoot"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 224
    .local p2, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p3, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p4, "inNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "nameOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 225
    .local v2, "numSharedElements":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v6, "outNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 228
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 229
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    if-nez v3, :cond_0

    .line 232
    goto :goto_2

    .line 234
    :cond_0
    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroidx/core/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 235
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 236
    .local v4, "inName":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v2, :cond_2

    .line 237
    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 238
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-static {v7, v3}, Landroidx/core/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 239
    goto :goto_2

    .line 236
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 227
    .end local v1    # "view":Landroid/view/View;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "inName":Ljava/lang/String;
    .end local v5    # "j":I
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    .end local v0    # "i":I
    :cond_3
    new-instance v0, Landroid/support/v4/app/FragmentTransitionImpl$1;

    move-object v1, p0

    move-object v5, p2

    move-object v3, p3

    move-object v4, p4

    .end local p2    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local p3    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local p4    # "inNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v3, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v4, "inNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v5, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/FragmentTransitionImpl$1;-><init>(Landroid/support/v4/app/FragmentTransitionImpl;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {p1, v0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 253
    return-void
.end method

.method public abstract setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;
.end method
