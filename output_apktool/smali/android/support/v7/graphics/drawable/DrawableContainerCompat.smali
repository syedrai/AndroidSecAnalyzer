.class public Landroid/support/v7/graphics/drawable/DrawableContainerCompat;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableContainerCompat.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;,
        Landroid/support/v7/graphics/drawable/DrawableContainerCompat$Api21Impl;,
        Landroid/support/v7/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_DITHER:Z = true

.field private static final TAG:Ljava/lang/String; = "DrawableContainerCompat"


# instance fields
.field private mAlpha:I

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mBlockInvalidateCallback:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;

.field private mCurIndex:I

.field private mCurrDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

.field private mEnterAnimationEnd:J

.field private mExitAnimationEnd:J

.field private mHasAlpha:Z

.field private mHotspotBounds:Landroid/graphics/Rect;

.field private mLastDrawable:Landroid/graphics/drawable/Drawable;

.field private mMutated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 67
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurIndex:I

    return-void
.end method

.method private initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 491
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mBlockInvalidateCallback:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;

    if-nez v0, :cond_0

    .line 492
    new-instance v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;

    invoke-direct {v0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;-><init>()V

    iput-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mBlockInvalidateCallback:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;

    .line 497
    :cond_0
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mBlockInvalidateCallback:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;->wrap(Landroid/graphics/drawable/Drawable$Callback;)Landroid/support/v7/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 499
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mEnterFadeDuration:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mHasAlpha:Z

    if-eqz v0, :cond_1

    .line 500
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 502
    :cond_1
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-boolean v0, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mHasColorFilter:Z

    if-eqz v0, :cond_2

    .line 504
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 506
    :cond_2
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-boolean v0, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mHasTintList:Z

    if-eqz v0, :cond_3

    .line 507
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 509
    :cond_3
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-boolean v0, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mHasTintMode:Z

    if-eqz v0, :cond_4

    .line 510
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 513
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 514
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-boolean v0, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mDither:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 515
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 516
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 517
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 518
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_5

    .line 519
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 521
    :cond_5
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-boolean v0, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mAutoMirrored:Z

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    .line 522
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mHotspotBounds:Landroid/graphics/Rect;

    .line 523
    .local v0, "hotspotBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_6

    .line 524
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, v1, v2, v3, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    .end local v0    # "hotspotBounds":Landroid/graphics/Rect;
    :cond_6
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mBlockInvalidateCallback:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;->unwrap()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 529
    nop

    .line 530
    return-void

    .line 528
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mBlockInvalidateCallback:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;

    invoke-virtual {v1}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;->unwrap()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 529
    throw v0
.end method

.method private needsMirroring()Z
    .locals 2

    .line 97
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->isAutoMirrored()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 97
    :goto_0
    return v1
.end method

.method static resolveDensity(Landroid/content/res/Resources;I)I
    .locals 2
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parentDensity"    # I

    .line 1204
    if-nez p0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1205
    .local v0, "densityDpi":I
    :goto_0
    if-nez v0, :cond_1

    const/16 v1, 0xa0

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method


# virtual methods
.method animate(Z)V
    .locals 11
    .param p1, "schedule"    # Z

    .line 533
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mHasAlpha:Z

    .line 534
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 535
    .local v0, "now":J
    const/4 v2, 0x0

    .line 536
    .local v2, "animating":Z
    iget-object v3, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    const-wide/16 v4, 0xff

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_1

    .line 537
    iget-wide v8, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mEnterAnimationEnd:J

    cmp-long v3, v8, v6

    if-eqz v3, :cond_2

    .line 538
    iget-wide v8, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mEnterAnimationEnd:J

    cmp-long v3, v8, v0

    if-gtz v3, :cond_0

    .line 539
    iget-object v3, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 540
    iput-wide v6, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mEnterAnimationEnd:J

    goto :goto_0

    .line 542
    :cond_0
    iget-wide v8, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mEnterAnimationEnd:J

    sub-long/2addr v8, v0

    mul-long v8, v8, v4

    long-to-int v3, v8

    iget-object v8, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget v8, v8, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mEnterFadeDuration:I

    div-int/2addr v3, v8

    .line 544
    .local v3, "animAlpha":I
    iget-object v8, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    rsub-int v9, v3, 0xff

    iget v10, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    mul-int v9, v9, v10

    div-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 545
    const/4 v2, 0x1

    .line 546
    .end local v3    # "animAlpha":I
    goto :goto_0

    .line 549
    :cond_1
    iput-wide v6, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mEnterAnimationEnd:J

    .line 551
    :cond_2
    :goto_0
    iget-object v3, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    .line 552
    iget-wide v8, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mExitAnimationEnd:J

    cmp-long v3, v8, v6

    if-eqz v3, :cond_5

    .line 553
    iget-wide v8, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mExitAnimationEnd:J

    cmp-long v3, v8, v0

    if-gtz v3, :cond_3

    .line 554
    iget-object v3, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 555
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 556
    iput-wide v6, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mExitAnimationEnd:J

    goto :goto_1

    .line 558
    :cond_3
    iget-wide v6, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mExitAnimationEnd:J

    sub-long/2addr v6, v0

    mul-long v6, v6, v4

    long-to-int v3, v6

    iget-object v4, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget v4, v4, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mExitFadeDuration:I

    div-int/2addr v3, v4

    .line 560
    .restart local v3    # "animAlpha":I
    iget-object v4, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    mul-int v5, v5, v3

    div-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 561
    const/4 v2, 0x1

    .line 562
    .end local v3    # "animAlpha":I
    goto :goto_1

    .line 565
    :cond_4
    iput-wide v6, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mExitAnimationEnd:J

    .line 567
    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    if-eqz v2, :cond_6

    .line 568
    iget-object v3, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x10

    add-long/2addr v4, v0

    invoke-virtual {p0, v3, v4, v5}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 570
    :cond_6
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .line 591
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0, p1}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 592
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .line 597
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method clearMutated()V
    .locals 1

    .line 631
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->clearMutated()V

    .line 632
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mMutated:Z

    .line 633
    return-void
.end method

.method cloneConstantState()Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;
    .locals 1

    .line 627
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 82
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 85
    :cond_0
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 88
    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 148
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 92
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 93
    invoke-virtual {v1}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    .line 92
    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 602
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mChangingConfigurations:I

    .line 604
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    return-object v0

    .line 606
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 574
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getCurrentIndex()I
    .locals 1

    .line 415
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurIndex:I

    return v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 295
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mHotspotBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 298
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    .line 300
    :goto_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 341
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getConstantHeight()I

    move-result v0

    return v0

    .line 344
    :cond_0
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 333
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getConstantWidth()I

    move-result v0

    return v0

    .line 336
    :cond_0
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 357
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getConstantMinimumHeight()I

    move-result v0

    return v0

    .line 360
    :cond_0
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 349
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getConstantMinimumWidth()I

    move-result v0

    return v0

    .line 352
    :cond_0
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 405
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getOpacity()I

    move-result v0

    goto :goto_1

    .line 405
    :cond_1
    :goto_0
    const/4 v0, -0x2

    :goto_1
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 126
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$Api21Impl;->getOutline(Landroid/graphics/drawable/Drawable;Landroid/graphics/Outline;)V

    .line 129
    :cond_0
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 103
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getConstantPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 105
    .local v0, "r":Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 107
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    or-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    or-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .local v1, "result":Z
    :goto_0
    goto :goto_1

    .line 109
    .end local v1    # "result":Z
    :cond_1
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 110
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    .restart local v1    # "result":Z
    goto :goto_1

    .line 112
    .end local v1    # "result":Z
    :cond_2
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    .line 115
    .restart local v1    # "result":Z
    :goto_1
    invoke-direct {p0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->needsMirroring()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 117
    .local v2, "left":I
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 118
    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 120
    .end local v2    # "left":I
    :cond_3
    return v1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 368
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->invalidateCache()V

    .line 371
    :cond_0
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 374
    :cond_1
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .line 244
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-boolean v0, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mAutoMirrored:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 228
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 6

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 252
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 253
    const/4 v0, 0x1

    .line 255
    :cond_0
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 257
    iget-boolean v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mHasAlpha:Z

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 261
    :cond_1
    iget-wide v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mExitAnimationEnd:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 262
    iput-wide v3, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mExitAnimationEnd:J

    .line 263
    const/4 v0, 0x1

    .line 265
    :cond_2
    iget-wide v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mEnterAnimationEnd:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 266
    iput-wide v3, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mEnterAnimationEnd:J

    .line 267
    const/4 v0, 0x1

    .line 269
    :cond_3
    if-eqz v0, :cond_4

    .line 270
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->invalidateSelf()V

    .line 272
    :cond_4
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 611
    iget-boolean v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 612
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->cloneConstantState()Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    move-result-object v0

    .line 613
    .local v0, "clone":Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;
    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mutate()V

    .line 614
    invoke-virtual {p0, v0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->setConstantState(Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;)V

    .line 615
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mMutated:Z

    .line 617
    .end local v0    # "clone":Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 218
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 221
    :cond_0
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 224
    :cond_1
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 328
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->setLayoutDirection(II)Z

    move-result v0

    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .line 315
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0

    .line 318
    :cond_0
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0

    .line 321
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .line 304
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0

    .line 307
    :cond_0
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0

    .line 310
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 378
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 381
    :cond_0
    return-void
.end method

.method selectDrawable(I)Z
    .locals 9
    .param p1, "index"    # I

    .line 428
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurIndex:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 429
    return v1

    .line 431
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 437
    .local v2, "now":J
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mExitFadeDuration:I

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-lez v0, :cond_3

    .line 438
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 441
    :cond_1
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 442
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 443
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mExitFadeDuration:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mExitAnimationEnd:J

    goto :goto_0

    .line 445
    :cond_2
    iput-object v4, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 446
    iput-wide v5, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mExitAnimationEnd:J

    goto :goto_0

    .line 448
    :cond_3
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 449
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 451
    :cond_4
    :goto_0
    if-ltz p1, :cond_7

    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mNumChildren:I

    if-ge p1, v0, :cond_7

    .line 452
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0, p1}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 453
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 454
    iput p1, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurIndex:I

    .line 455
    if-eqz v0, :cond_6

    .line 456
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget v1, v1, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mEnterFadeDuration:I

    if-lez v1, :cond_5

    .line 457
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget v1, v1, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mEnterFadeDuration:I

    int-to-long v7, v1

    add-long/2addr v7, v2

    iput-wide v7, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mEnterAnimationEnd:J

    .line 459
    :cond_5
    invoke-direct {p0, v0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    .line 461
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_6
    goto :goto_1

    .line 462
    :cond_7
    iput-object v4, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 463
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurIndex:I

    .line 465
    :goto_1
    iget-wide v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mEnterAnimationEnd:J

    const/4 v4, 0x1

    cmp-long v7, v0, v5

    if-nez v7, :cond_8

    iget-wide v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mExitAnimationEnd:J

    cmp-long v7, v0, v5

    if-eqz v7, :cond_a

    .line 466
    :cond_8
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mAnimationRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_9

    .line 467
    new-instance v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$1;

    invoke-direct {v0, p0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$1;-><init>(Landroid/support/v7/graphics/drawable/DrawableContainerCompat;)V

    iput-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mAnimationRunnable:Ljava/lang/Runnable;

    goto :goto_2

    .line 475
    :cond_9
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 478
    :goto_2
    invoke-virtual {p0, v4}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->animate(Z)V

    .line 480
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->invalidateSelf()V

    .line 481
    return v4
.end method

.method public setAlpha(I)V
    .locals 5
    .param p1, "alpha"    # I

    .line 133
    iget-boolean v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mHasAlpha:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    if-eq v0, p1, :cond_2

    .line 134
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mHasAlpha:Z

    .line 135
    iput p1, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    .line 136
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 137
    iget-wide v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mEnterAnimationEnd:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 138
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->animate(Z)V

    .line 144
    :cond_2
    :goto_0
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 2
    .param p1, "mirrored"    # Z

    .line 233
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-boolean v0, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mAutoMirrored:Z

    if-eq v0, p1, :cond_0

    .line 234
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iput-boolean p1, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mAutoMirrored:Z

    .line 235
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-boolean v1, v1, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mAutoMirrored:Z

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    .line 240
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 164
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mHasColorFilter:Z

    .line 165
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 166
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iput-object p1, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 167
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 171
    :cond_0
    return-void
.end method

.method setConstantState(Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;)V
    .locals 1
    .param p1, "state"    # Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 1153
    iput-object p1, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 1155
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurIndex:I

    if-ltz v0, :cond_0

    .line 1156
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurIndex:I

    invoke-virtual {p1, v0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 1157
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    .line 1163
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 1164
    return-void
.end method

.method setCurrentIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 411
    invoke-virtual {p0, p1}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->selectDrawable(I)Z

    .line 412
    return-void
.end method

.method public setDither(Z)V
    .locals 2
    .param p1, "dither"    # Z

    .line 154
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-boolean v0, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mDither:Z

    if-eq v0, p1, :cond_0

    .line 155
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iput-boolean p1, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mDither:Z

    .line 156
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-boolean v1, v1, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mDither:Z

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 160
    :cond_0
    return-void
.end method

.method public setEnterFadeDuration(I)V
    .locals 1
    .param p1, "ms"    # I

    .line 203
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iput p1, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mEnterFadeDuration:I

    .line 204
    return-void
.end method

.method public setExitFadeDuration(I)V
    .locals 1
    .param p1, "ms"    # I

    .line 213
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iput p1, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mExitFadeDuration:I

    .line 214
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 276
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 279
    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 283
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mHotspotBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mHotspotBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 286
    :cond_0
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 288
    :goto_0
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 291
    :cond_1
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tintColor"    # I

    .line 175
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 176
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 180
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mHasTintList:Z

    .line 181
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 182
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iput-object p1, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    .line 183
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 185
    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 189
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mHasTintMode:Z

    .line 190
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 191
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iput-object p1, v0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 192
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 194
    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 392
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 393
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 396
    :cond_0
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 397
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 399
    :cond_1
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 385
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 388
    :cond_0
    return-void
.end method

.method final updateDensity(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 585
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0, p1}, Landroid/support/v7/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->updateDensity(Landroid/content/res/Resources;)V

    .line 586
    return-void
.end method
