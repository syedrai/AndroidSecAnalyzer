.class public Landroid/support/v7/app/ActionBarDrawerToggle;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;,
        Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;,
        Landroid/support/v7/app/ActionBarDrawerToggle$DelegateProvider;,
        Landroid/support/v7/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;
    }
.end annotation


# instance fields
.field private final mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

.field private final mCloseDrawerContentDescRes:I

.field mDrawerIndicatorEnabled:Z

.field private final mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private mDrawerSlideAnimationEnabled:Z

.field private mHasCustomUpIndicator:Z

.field private mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

.field private final mOpenDrawerContentDescRes:I

.field private mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

.field mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

.field private mWarnedForDisplayHomeAsUp:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroidx/drawerlayout/widget/DrawerLayout;Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;II)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p3, "drawerLayout"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .param p4, "slider"    # Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;
    .param p5, "openDrawerContentDescRes"    # I
    .param p6, "closeDrawerContentDescRes"    # I

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerSlideAnimationEnabled:Z

    .line 121
    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    .line 195
    if-eqz p2, :cond_0

    .line 196
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;

    invoke-direct {v0, p2}, Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    .line 197
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/ActionBarDrawerToggle$1;-><init>(Landroid/support/v7/app/ActionBarDrawerToggle;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 207
    :cond_0
    instance-of v0, p1, Landroid/support/v7/app/ActionBarDrawerToggle$DelegateProvider;

    if-eqz v0, :cond_1

    .line 208
    move-object v0, p1

    check-cast v0, Landroid/support/v7/app/ActionBarDrawerToggle$DelegateProvider;

    invoke-interface {v0}, Landroid/support/v7/app/ActionBarDrawerToggle$DelegateProvider;->getDrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 210
    :cond_1
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;

    invoke-direct {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    .line 213
    :goto_0
    iput-object p3, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 214
    iput p5, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    .line 215
    iput p6, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    .line 216
    if-nez p4, :cond_2

    .line 217
    new-instance v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v1}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    goto :goto_1

    .line 219
    :cond_2
    iput-object p4, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    .line 222
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;II)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawerLayout"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .param p3, "openDrawerContentDescRes"    # I
    .param p4, "closeDrawerContentDescRes"    # I

    .line 152
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    .end local p1    # "activity":Landroid/app/Activity;
    .end local p2    # "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    .end local p3    # "openDrawerContentDescRes":I
    .end local p4    # "closeDrawerContentDescRes":I
    .local v1, "activity":Landroid/app/Activity;
    .local v3, "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    .local v5, "openDrawerContentDescRes":I
    .local v6, "closeDrawerContentDescRes":I
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroidx/drawerlayout/widget/DrawerLayout;Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;II)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawerLayout"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .param p3, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p4, "openDrawerContentDescRes"    # I
    .param p5, "closeDrawerContentDescRes"    # I

    .line 183
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v2, p3

    move v5, p4

    move v6, p5

    .end local p1    # "activity":Landroid/app/Activity;
    .end local p2    # "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    .end local p3    # "toolbar":Landroid/support/v7/widget/Toolbar;
    .end local p4    # "openDrawerContentDescRes":I
    .end local p5    # "closeDrawerContentDescRes":I
    .local v1, "activity":Landroid/app/Activity;
    .local v2, "toolbar":Landroid/support/v7/widget/Toolbar;
    .local v3, "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    .local v5, "openDrawerContentDescRes":I
    .local v6, "closeDrawerContentDescRes":I
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroidx/drawerlayout/widget/DrawerLayout;Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;II)V

    .line 185
    return-void
.end method

.method private setPosition(F)V
    .locals 2
    .param p1, "position"    # F

    .line 505
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 506
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setVerticalMirror(Z)V

    goto :goto_0

    .line 507
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 508
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setVerticalMirror(Z)V

    .line 510
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 511
    return-void
.end method


# virtual methods
.method public getDrawerArrowDrawable()Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;
    .locals 1

    .line 369
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    return-object v0
.end method

.method getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 501
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getToolbarNavigationClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 469
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public isDrawerIndicatorEnabled()Z
    .locals 1

    .line 339
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    return v0
.end method

.method public isDrawerSlideAnimationEnabled()Z
    .locals 1

    .line 398
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerSlideAnimationEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 257
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    if-nez v0, :cond_0

    .line 258
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 260
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 261
    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .line 442
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setPosition(F)V

    .line 443
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 444
    iget v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setActionBarDescription(I)V

    .line 446
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .line 427
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setPosition(F)V

    .line 428
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 429
    iget v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setActionBarDescription(I)V

    .line 431
    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .line 411
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerSlideAnimationEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 412
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setPosition(F)V

    goto :goto_0

    .line 414
    :cond_0
    invoke-direct {p0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle;->setPosition(F)V

    .line 416
    :goto_0
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0
    .param p1, "newState"    # I

    .line 457
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 273
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarDrawerToggle;->toggle()V

    .line 275
    const/4 v0, 0x1

    return v0

    .line 277
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setActionBarDescription(I)V
    .locals 1
    .param p1, "contentDescRes"    # I

    .line 497
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->setActionBarDescription(I)V

    .line 498
    return-void
.end method

.method setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .line 487
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->isNavigationVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    const-string v0, "ActionBarDrawerToggle"

    const-string v1, "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    .line 493
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 494
    return-void
.end method

.method public setDrawerArrowDrawable(Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    .line 378
    iput-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    .line 379
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 380
    return-void
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 353
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eq p1, v0, :cond_2

    .line 354
    if-eqz p1, :cond_1

    .line 355
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    .line 356
    iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    iget v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    .line 355
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 359
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 361
    :goto_1
    iput-boolean p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 363
    :cond_2
    return-void
.end method

.method public setDrawerSlideAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 388
    iput-boolean p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerSlideAnimationEnabled:Z

    .line 389
    if-nez p1, :cond_0

    .line 390
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setPosition(F)V

    .line 392
    :cond_0
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 329
    iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 331
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 332
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .line 302
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 303
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 304
    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    goto :goto_0

    .line 306
    :cond_0
    iput-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 307
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    .line 310
    :goto_0
    iget-boolean v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-nez v1, :cond_1

    .line 311
    iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 313
    :cond_1
    return-void
.end method

.method public setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onToolbarNavigationClickListener"    # Landroid/view/View$OnClickListener;

    .line 483
    iput-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    .line 484
    return-void
.end method

.method public syncState()V
    .locals 3

    .line 235
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setPosition(F)V

    goto :goto_0

    .line 238
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setPosition(F)V

    .line 240
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    .line 242
    iget-object v2, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    iget v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    goto :goto_1

    :cond_1
    iget v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    .line 241
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 245
    :cond_2
    return-void
.end method

.method toggle()V
    .locals 3

    .line 281
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(I)I

    move-result v0

    .line 282
    .local v0, "drawerLockMode":I
    iget-object v2, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 284
    iget-object v2, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    .line 285
    :cond_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 286
    iget-object v2, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    .line 288
    :cond_1
    :goto_0
    return-void
.end method
