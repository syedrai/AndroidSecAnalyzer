.class public Lcom/google/android/setupdesign/GlifLayout;
.super Lcom/google/android/setupcompat/PartnerCustomizationLayout;
.source "GlifLayout.java"


# static fields
.field private static final LOG:Lcom/google/android/setupcompat/util/Logger;


# instance fields
.field private applyPartnerHeavyThemeResource:Z

.field private backgroundBaseColor:Landroid/content/res/ColorStateList;

.field private backgroundPatterned:Z

.field private onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private primaryColor:Landroid/content/res/ColorStateList;


# direct methods
.method public static synthetic $r8$lambda$WVZWwRplKKIyW6DnfxHDJF-4MCM(Lcom/google/android/setupdesign/GlifLayout;Landroid/widget/ScrollView;Landroid/widget/ScrollView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->lambda$initScrollingListener$0(Landroid/widget/ScrollView;Landroid/widget/ScrollView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 97
    new-instance v0, Lcom/google/android/setupcompat/util/Logger;

    const-class v1, Lcom/google/android/setupdesign/GlifLayout;

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/util/Logger;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/setupdesign/GlifLayout;->LOG:Lcom/google/android/setupcompat/util/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;II)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "template"
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;II)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I
    .param p3, "containerId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "template",
            "containerId"
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;-><init>(Landroid/content/Context;II)V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundPatterned:Z

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/GlifLayout;->applyPartnerHeavyThemeResource:Z

    .line 105
    new-instance v0, Lcom/google/android/setupdesign/GlifLayout$1;

    invoke-direct {v0, p0}, Lcom/google/android/setupdesign/GlifLayout$1;-><init>(Lcom/google/android/setupdesign/GlifLayout;)V

    iput-object v0, p0, Lcom/google/android/setupdesign/GlifLayout;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 135
    const/4 v0, 0x0

    sget v1, Lcom/google/android/setupdesign/R$attr;->sudLayoutTheme:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/setupdesign/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundPatterned:Z

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/GlifLayout;->applyPartnerHeavyThemeResource:Z

    .line 105
    new-instance v0, Lcom/google/android/setupdesign/GlifLayout$1;

    invoke-direct {v0, p0}, Lcom/google/android/setupdesign/GlifLayout$1;-><init>(Lcom/google/android/setupdesign/GlifLayout;)V

    iput-object v0, p0, Lcom/google/android/setupdesign/GlifLayout;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 140
    sget v0, Lcom/google/android/setupdesign/R$attr;->sudLayoutTheme:I

    invoke-direct {p0, p2, v0}, Lcom/google/android/setupdesign/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundPatterned:Z

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/GlifLayout;->applyPartnerHeavyThemeResource:Z

    .line 105
    new-instance v0, Lcom/google/android/setupdesign/GlifLayout$1;

    invoke-direct {v0, p0}, Lcom/google/android/setupdesign/GlifLayout$1;-><init>(Lcom/google/android/setupdesign/GlifLayout;)V

    iput-object v0, p0, Lcom/google/android/setupdesign/GlifLayout;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 146
    invoke-direct {p0, p2, p3}, Lcom/google/android/setupdesign/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    .line 147
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    return-void

    .line 156
    :cond_0
    nop

    .line 157
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupdesign/R$styleable;->SudGlifLayout:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 158
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudGlifLayout_sudUsePartnerHeavyTheme:I

    .line 159
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 160
    .local v1, "usePartnerHeavyTheme":Z
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->shouldApplyPartnerResource()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/google/android/setupdesign/GlifLayout;->applyPartnerHeavyThemeResource:Z

    .line 162
    const-class v3, Lcom/google/android/setupdesign/template/HeaderMixin;

    new-instance v5, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-direct {v5, p0, p1, p2}, Lcom/google/android/setupdesign/template/HeaderMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v3, v5}, Lcom/google/android/setupdesign/GlifLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 163
    const-class v3, Lcom/google/android/setupdesign/template/DescriptionMixin;

    new-instance v5, Lcom/google/android/setupdesign/template/DescriptionMixin;

    invoke-direct {v5, p0, p1, p2}, Lcom/google/android/setupdesign/template/DescriptionMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v3, v5}, Lcom/google/android/setupdesign/GlifLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 164
    const-class v3, Lcom/google/android/setupdesign/template/IconMixin;

    new-instance v5, Lcom/google/android/setupdesign/template/IconMixin;

    invoke-direct {v5, p0, p1, p2}, Lcom/google/android/setupdesign/template/IconMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v3, v5}, Lcom/google/android/setupdesign/GlifLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 165
    const-class v3, Lcom/google/android/setupdesign/template/ProfileMixin;

    new-instance v5, Lcom/google/android/setupdesign/template/ProfileMixin;

    invoke-direct {v5, p0, p1, p2}, Lcom/google/android/setupdesign/template/ProfileMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v3, v5}, Lcom/google/android/setupdesign/GlifLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 166
    const-class v3, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    new-instance v5, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-direct {v5, p0, p1, p2}, Lcom/google/android/setupdesign/template/ProgressBarMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v3, v5}, Lcom/google/android/setupdesign/GlifLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 167
    const-class v3, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;

    new-instance v5, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;

    invoke-direct {v5, p0}, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;-><init>(Lcom/google/android/setupdesign/GlifLayout;)V

    invoke-virtual {p0, v3, v5}, Lcom/google/android/setupdesign/GlifLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 168
    const-class v3, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;

    new-instance v5, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;

    invoke-direct {v5, p0, p1, p2}, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v3, v5}, Lcom/google/android/setupdesign/GlifLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 170
    new-instance v3, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-direct {v3, p0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V

    .line 171
    .local v3, "requireScrollMixin":Lcom/google/android/setupdesign/template/RequireScrollMixin;
    const-class v5, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-virtual {p0, v5, v3}, Lcom/google/android/setupdesign/GlifLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 173
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v5

    .line 174
    .local v5, "scrollView":Landroid/widget/ScrollView;
    if-eqz v5, :cond_2

    .line 175
    new-instance v6, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;

    invoke-direct {v6, v3, v5}, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;-><init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Landroid/widget/ScrollView;)V

    invoke-virtual {v3, v6}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->setScrollHandlingDelegate(Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;)V

    .line 179
    :cond_2
    sget v6, Lcom/google/android/setupdesign/R$styleable;->SudGlifLayout_sudColorPrimary:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 180
    .local v6, "primaryColor":Landroid/content/res/ColorStateList;
    if-eqz v6, :cond_3

    .line 181
    invoke-virtual {p0, v6}, Lcom/google/android/setupdesign/GlifLayout;->setPrimaryColor(Landroid/content/res/ColorStateList;)V

    .line 183
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->shouldApplyPartnerHeavyThemeResource()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 184
    invoke-direct {p0}, Lcom/google/android/setupdesign/GlifLayout;->updateContentBackgroundColorWithPartnerConfig()V

    .line 187
    :cond_4
    sget v7, Lcom/google/android/setupdesign/R$id;->sud_layout_content:I

    invoke-virtual {p0, v7}, Lcom/google/android/setupdesign/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v7

    .line 188
    .local v7, "view":Landroid/view/View;
    if-eqz v7, :cond_6

    .line 189
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->shouldApplyPartnerResource()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 196
    invoke-static {v7}, Lcom/google/android/setupdesign/util/LayoutStyler;->applyPartnerCustomizationExtraPaddingStyle(Landroid/view/View;)V

    .line 202
    :cond_5
    instance-of v8, p0, Lcom/google/android/setupdesign/GlifPreferenceLayout;

    if-nez v8, :cond_6

    .line 203
    invoke-virtual {p0, v7}, Lcom/google/android/setupdesign/GlifLayout;->tryApplyPartnerCustomizationContentPaddingTopStyle(Landroid/view/View;)V

    .line 207
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->updateLandscapeMiddleHorizontalSpacing()V

    .line 209
    invoke-direct {p0}, Lcom/google/android/setupdesign/GlifLayout;->updateViewFocusable()V

    .line 211
    sget v8, Lcom/google/android/setupdesign/R$styleable;->SudGlifLayout_sudBackgroundBaseColor:I

    .line 212
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 213
    .local v8, "backgroundColor":Landroid/content/res/ColorStateList;
    invoke-virtual {p0, v8}, Lcom/google/android/setupdesign/GlifLayout;->setBackgroundBaseColor(Landroid/content/res/ColorStateList;)V

    .line 215
    sget v9, Lcom/google/android/setupdesign/R$styleable;->SudGlifLayout_sudBackgroundPatterned:I

    .line 216
    invoke-virtual {v0, v9, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 217
    .local v4, "backgroundPatterned":Z
    invoke-virtual {p0, v4}, Lcom/google/android/setupdesign/GlifLayout;->setBackgroundPatterned(Z)V

    .line 219
    sget v9, Lcom/google/android/setupdesign/R$styleable;->SudGlifLayout_sudStickyHeader:I

    invoke-virtual {v0, v9, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 220
    .local v2, "stickyHeader":I
    if-eqz v2, :cond_7

    .line 221
    invoke-virtual {p0, v2}, Lcom/google/android/setupdesign/GlifLayout;->inflateStickyHeader(I)Landroid/view/View;

    .line 224
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 225
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->initScrollingListener()V

    .line 228
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->initBackButton()V

    .line 230
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 231
    return-void
.end method

.method private isContentScrollable(Landroid/widget/ScrollView;)Z
    .locals 4
    .param p1, "scrollView"    # Landroid/widget/ScrollView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollView"
        }
    .end annotation

    .line 699
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 700
    return v0

    .line 702
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 703
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 704
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 706
    :cond_2
    return v0
.end method

.method static synthetic lambda$initBackButton$0(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "v"    # Landroid/view/View;

    .line 742
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$initScrollingListener$0(Landroid/widget/ScrollView;Landroid/widget/ScrollView;)V
    .locals 1
    .param p1, "scrollView"    # Landroid/widget/ScrollView;
    .param p2, "headerScrollView"    # Landroid/widget/ScrollView;

    .line 689
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->isContentScrollable(Landroid/widget/ScrollView;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/setupdesign/GlifLayout;->isContentScrollable(Landroid/widget/ScrollView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->onScrolling(Z)V

    .line 692
    :cond_1
    return-void
.end method

.method private tryApplyPartnerCustomizationStyleToShortDescription()V
    .locals 2

    .line 261
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_layout_description:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 262
    .local v0, "description":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 263
    iget-boolean v1, p0, Lcom/google/android/setupdesign/GlifLayout;->applyPartnerHeavyThemeResource:Z

    if-eqz v1, :cond_0

    .line 264
    invoke-static {v0}, Lcom/google/android/setupdesign/util/DescriptionStyler;->applyPartnerCustomizationHeavyStyle(Landroid/widget/TextView;)V

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->shouldApplyPartnerResource()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    invoke-static {v0}, Lcom/google/android/setupdesign/util/DescriptionStyler;->applyPartnerCustomizationLightStyle(Landroid/widget/TextView;)V

    .line 269
    :cond_1
    :goto_0
    return-void
.end method

.method private updateBackground()V
    .locals 4

    .line 583
    sget v0, Lcom/google/android/setupdesign/R$id;->suc_layout_status:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 584
    .local v0, "patternBg":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 585
    const/4 v1, 0x0

    .line 586
    .local v1, "backgroundColor":I
    iget-object v2, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundBaseColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 587
    iget-object v2, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundBaseColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    goto :goto_0

    .line 588
    :cond_0
    iget-object v2, p0, Lcom/google/android/setupdesign/GlifLayout;->primaryColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 589
    iget-object v2, p0, Lcom/google/android/setupdesign/GlifLayout;->primaryColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 592
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundPatterned:Z

    if-eqz v2, :cond_2

    .line 593
    new-instance v2, Lcom/google/android/setupdesign/GlifPatternDrawable;

    invoke-direct {v2, v1}, Lcom/google/android/setupdesign/GlifPatternDrawable;-><init>(I)V

    goto :goto_1

    .line 594
    :cond_2
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_1
    nop

    .line 595
    .local v2, "background":Landroid/graphics/drawable/Drawable;
    const-class v3, Lcom/google/android/setupcompat/template/StatusBarMixin;

    invoke-virtual {p0, v3}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v3

    check-cast v3, Lcom/google/android/setupcompat/template/StatusBarMixin;

    invoke-virtual {v3, v2}, Lcom/google/android/setupcompat/template/StatusBarMixin;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 597
    .end local v1    # "backgroundColor":I
    .end local v2    # "background":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private updateContentBackgroundColorWithPartnerConfig()V
    .locals 3

    .line 640
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->useFullDynamicColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    return-void

    .line 645
    :cond_0
    nop

    .line 646
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    .line 647
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_BACKGROUND_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v0

    .line 648
    .local v0, "color":I
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 649
    return-void
.end method

.method private updateViewFocusable()V
    .locals 3

    .line 246
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/KeyboardHelper;->isKeyboardFocusEnhancementEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_header_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 248
    .local v0, "headerView":Landroid/view/View;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 251
    :cond_0
    sget v2, Lcom/google/android/setupdesign/R$id;->sud_scroll_view:I

    invoke-virtual {p0, v2}, Lcom/google/android/setupdesign/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v2

    .line 252
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 253
    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 256
    .end local v0    # "headerView":Landroid/view/View;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method protected canViewScrollDown(Landroid/widget/ScrollView;)Z
    .locals 3
    .param p1, "scrollView"    # Landroid/widget/ScrollView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollView"
        }
    .end annotation

    .line 272
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 275
    return v0

    .line 280
    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "containerId"
        }
    .end annotation

    .line 386
    if-nez p1, :cond_0

    .line 387
    sget p1, Lcom/google/android/setupdesign/R$id;->sud_layout_content:I

    .line 389
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundBaseColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundBaseColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getDescriptionText()Ljava/lang/CharSequence;
    .locals 1

    .line 495
    const-class v0, Lcom/google/android/setupdesign/template/DescriptionMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/DescriptionMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/DescriptionMixin;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionTextView()Landroid/widget/TextView;
    .locals 1

    .line 470
    const-class v0, Lcom/google/android/setupdesign/template/DescriptionMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/DescriptionMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/DescriptionMixin;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getFooterBackgroundColorFromStyle()I
    .locals 4

    .line 753
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 754
    .local v0, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 755
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    sget v2, Lcom/google/android/setupdesign/R$attr;->sudFooterBackgroundColor:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 756
    iget v2, v0, Landroid/util/TypedValue;->data:I

    return v2
.end method

.method public getHeaderColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 503
    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderScrollView()Landroid/widget/ScrollView;
    .locals 2

    .line 440
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_header_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 441
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/ScrollView;

    .local v1, "scrollView":Landroid/widget/ScrollView;
    goto :goto_0

    .end local v1    # "scrollView":Landroid/widget/ScrollView;
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getHeaderText()Ljava/lang/CharSequence;
    .locals 1

    .line 466
    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderTextView()Landroid/widget/TextView;
    .locals 1

    .line 454
    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 511
    const-class v0, Lcom/google/android/setupdesign/template/IconMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/IconMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/IconMixin;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifLayout;->primaryColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .locals 2

    .line 449
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 450
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/ScrollView;

    .local v1, "scrollView":Landroid/widget/ScrollView;
    goto :goto_0

    .end local v1    # "scrollView":Landroid/widget/ScrollView;
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public inflateStickyHeader(I)Landroid/view/View;
    .locals 2
    .param p1, "header"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "header"
        }
    .end annotation

    .line 432
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_layout_sticky_header:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 433
    .local v0, "stickyHeaderStub":Landroid/view/ViewStub;
    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 434
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected initBackButton()V
    .locals 4

    .line 736
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->lookupActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 739
    .local v0, "activity":Landroid/app/Activity;
    const-class v1, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;

    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v1

    check-cast v1, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;

    .line 740
    .local v1, "floatingBackButtonMixin":Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;
    if-eqz v1, :cond_0

    .line 741
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->setVisibility(I)V

    .line 742
    new-instance v2, Lcom/google/android/setupdesign/GlifLayout$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/google/android/setupdesign/GlifLayout$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 744
    :cond_0
    sget-object v2, Lcom/google/android/setupdesign/GlifLayout;->LOG:Lcom/google/android/setupcompat/util/Logger;

    const-string v3, "FloatingBackButtonMixin button is null"

    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/util/Logger;->w(Ljava/lang/String;)V

    .line 746
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "floatingBackButtonMixin":Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;
    :goto_0
    goto :goto_1

    .line 747
    :cond_1
    sget-object v0, Lcom/google/android/setupdesign/GlifLayout;->LOG:Lcom/google/android/setupcompat/util/Logger;

    const-string v1, "isGlifExpressiveEnabled is false"

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/util/Logger;->atDebug(Ljava/lang/String;)V

    .line 749
    :goto_1
    return-void
.end method

.method protected initScrollingListener()V
    .locals 6

    .line 673
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v0

    .line 674
    .local v0, "scrollView":Landroid/widget/ScrollView;
    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/setupdesign/GlifLayout;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 678
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderScrollView()Landroid/widget/ScrollView;

    move-result-object v1

    .line 679
    .local v1, "headerScrollView":Landroid/widget/ScrollView;
    if-eqz v1, :cond_1

    .line 680
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/setupdesign/GlifLayout;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 683
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 686
    :cond_2
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/google/android/setupdesign/GlifLayout$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/setupdesign/GlifLayout$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/setupdesign/GlifLayout;Landroid/widget/ScrollView;Landroid/widget/ScrollView;)V

    .line 687
    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 695
    :cond_3
    return-void
.end method

.method public isBackgroundPatterned()Z
    .locals 1

    .line 579
    iget-boolean v0, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundPatterned:Z

    return v0
.end method

.method protected isEmbeddedActivityOnePaneEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 623
    nop

    .line 624
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isEmbeddedActivityOnePaneEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 625
    .local v0, "embeddedActivityOnePaneEnabled":Z
    nop

    .line 626
    invoke-static {p1}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    move-result-object v1

    .line 627
    invoke-static {p1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->lookupActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v1

    .line 628
    .local v1, "activityEmbedded":Z
    sget-object v2, Lcom/google/android/setupdesign/GlifLayout;->LOG:Lcom/google/android/setupcompat/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEmbeddedActivityOnePaneEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; isActivityEmbedded = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/util/Logger;->atVerbose(Ljava/lang/String;)V

    .line 633
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method protected isGlifExpressiveEnabled()Z
    .locals 2

    .line 760
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProgressBarShown()Z
    .locals 1

    .line 600
    const-class v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->isShown()Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 7

    .line 394
    invoke-super {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->onDetachedFromWindow()V

    .line 396
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/setupdesign/GlifLayout;->activity:Landroid/app/Activity;

    .line 397
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    const-class v0, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;

    .line 402
    .local v0, "floatingBackButtonMixin":Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;
    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->getMetrics()Landroid/os/PersistableBundle;

    move-result-object v1

    goto :goto_0

    .line 404
    :cond_0
    sget-object v1, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    :goto_0
    nop

    .line 406
    .local v1, "backButtonMetrics":Landroid/os/PersistableBundle;
    iget-object v2, p0, Lcom/google/android/setupdesign/GlifLayout;->activity:Landroid/app/Activity;

    .line 407
    const-string v3, "SetupDesignMetrics"

    invoke-static {v3, v2}, Lcom/google/android/setupcompat/logging/MetricKey;->get(Ljava/lang/String;Landroid/app/Activity;)Lcom/google/android/setupcompat/logging/MetricKey;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/setupcompat/logging/CustomEvent;->create(Lcom/google/android/setupcompat/logging/MetricKey;Landroid/os/PersistableBundle;)Lcom/google/android/setupcompat/logging/CustomEvent;

    move-result-object v2

    .line 408
    .local v2, "customEvent":Lcom/google/android/setupcompat/logging/CustomEvent;
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/setupcompat/logging/SetupMetricsLogger;->logCustomEvent(Landroid/content/Context;Lcom/google/android/setupcompat/logging/CustomEvent;)V

    .line 410
    sget-object v3, Lcom/google/android/setupdesign/GlifLayout;->LOG:Lcom/google/android/setupcompat/util/Logger;

    invoke-static {v2}, Lcom/google/android/setupcompat/logging/CustomEvent;->toBundle(Lcom/google/android/setupcompat/logging/CustomEvent;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetupDesignMetrics="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/setupcompat/util/Logger;->atVerbose(Ljava/lang/String;)V

    .line 412
    .end local v0    # "floatingBackButtonMixin":Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;
    .end local v1    # "backButtonMetrics":Landroid/os/PersistableBundle;
    .end local v2    # "customEvent":Lcom/google/android/setupcompat/logging/CustomEvent;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v0

    .line 413
    .local v0, "scrollView":Landroid/widget/ScrollView;
    if-eqz v0, :cond_2

    .line 414
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/setupdesign/GlifLayout;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 417
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderScrollView()Landroid/widget/ScrollView;

    move-result-object v1

    .line 418
    .local v1, "headerScrollView":Landroid/widget/ScrollView;
    if-eqz v1, :cond_3

    .line 419
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/setupdesign/GlifLayout;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 421
    :cond_3
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 235
    invoke-super {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->onFinishInflate()V

    .line 236
    const-class v0, Lcom/google/android/setupdesign/template/IconMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/IconMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/IconMixin;->tryApplyPartnerCustomizationStyle()V

    .line 237
    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/HeaderMixin;->tryApplyPartnerCustomizationStyle()V

    .line 238
    const-class v0, Lcom/google/android/setupdesign/template/DescriptionMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/DescriptionMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/DescriptionMixin;->tryApplyPartnerCustomizationStyle()V

    .line 239
    const-class v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->tryApplyPartnerCustomizationStyle()V

    .line 240
    const-class v0, Lcom/google/android/setupdesign/template/ProfileMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/ProfileMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/ProfileMixin;->tryApplyPartnerCustomizationStyle()V

    .line 241
    const-class v0, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/FloatingBackButtonMixin;->tryApplyPartnerCustomizationStyle()V

    .line 242
    invoke-direct {p0}, Lcom/google/android/setupdesign/GlifLayout;->tryApplyPartnerCustomizationStyleToShortDescription()V

    .line 243
    return-void
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "template"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "template"
        }
    .end annotation

    .line 363
    if-nez p2, :cond_3

    .line 364
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_template:I

    .line 367
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->isEmbeddedActivityOnePaneEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->isGlifExpressiveEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_expressive_embedded_template:I

    goto :goto_0

    .line 371
    :cond_0
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_embedded_template:I

    goto :goto_0

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->isGlifExpressiveEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_expressive_template:I

    goto :goto_0

    .line 376
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/ForceTwoPaneHelper;->isForceTwoPaneEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 377
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_template_two_pane:I

    .line 381
    :cond_3
    :goto_0
    sget v0, Lcom/google/android/setupdesign/R$style;->SudThemeGlif_Light:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/setupdesign/GlifLayout;->inflateTemplate(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onScrolling(Z)V
    .locals 4
    .param p1, "isBottom"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isBottom"
        }
    .end annotation

    .line 710
    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 711
    .local v0, "footerBarMixin":Lcom/google/android/setupcompat/template/FooterBarMixin;
    const-class v1, Lcom/google/android/setupcompat/template/SystemNavBarMixin;

    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v1

    check-cast v1, Lcom/google/android/setupcompat/template/SystemNavBarMixin;

    .line 712
    .local v1, "systemNavBarMixin":Lcom/google/android/setupcompat/template/SystemNavBarMixin;
    if-eqz v0, :cond_1

    .line 713
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getButtonContainer()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 714
    .local v2, "footerContainer":Landroid/widget/LinearLayout;
    if-eqz v2, :cond_1

    .line 715
    if-eqz p1, :cond_0

    .line 716
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 717
    if-eqz v1, :cond_1

    .line 718
    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->setSystemNavBarBackground(I)V

    goto :goto_0

    .line 721
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getFooterBackgroundColorFromStyle()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 722
    if-eqz v1, :cond_1

    .line 723
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getFooterBackgroundColorFromStyle()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->setSystemNavBarBackground(I)V

    .line 728
    .end local v2    # "footerContainer":Landroid/widget/LinearLayout;
    :cond_1
    :goto_0
    return-void
.end method

.method public peekProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .line 608
    const-class v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    return-object v0
.end method

.method public setBackgroundBaseColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "color"    # Landroid/content/res/ColorStateList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 555
    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundBaseColor:Landroid/content/res/ColorStateList;

    .line 556
    invoke-direct {p0}, Lcom/google/android/setupdesign/GlifLayout;->updateBackground()V

    .line 557
    return-void
.end method

.method public setBackgroundPatterned(Z)V
    .locals 0
    .param p1, "patterned"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "patterned"
        }
    .end annotation

    .line 573
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundPatterned:Z

    .line 574
    invoke-direct {p0}, Lcom/google/android/setupdesign/GlifLayout;->updateBackground()V

    .line 575
    return-void
.end method

.method public setDescriptionText(I)V
    .locals 1
    .param p1, "title"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 480
    const-class v0, Lcom/google/android/setupdesign/template/DescriptionMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/DescriptionMixin;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/template/DescriptionMixin;->setText(I)V

    .line 481
    return-void
.end method

.method public setDescriptionText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 490
    const-class v0, Lcom/google/android/setupdesign/template/DescriptionMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/DescriptionMixin;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/template/DescriptionMixin;->setText(Ljava/lang/CharSequence;)V

    .line 491
    return-void
.end method

.method public setHeaderColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 499
    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/template/HeaderMixin;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 500
    return-void
.end method

.method public setHeaderText(I)V
    .locals 1
    .param p1, "title"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 458
    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/template/HeaderMixin;->setText(I)V

    .line 459
    return-void
.end method

.method public setHeaderText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 462
    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/template/HeaderMixin;->setText(Ljava/lang/CharSequence;)V

    .line 463
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    .line 507
    const-class v0, Lcom/google/android/setupdesign/template/IconMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/IconMixin;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/template/IconMixin;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 508
    return-void
.end method

.method public setLandscapeHeaderAreaVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    .line 520
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_landscape_header_area:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 521
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 522
    return-void

    .line 524
    :cond_0
    if-eqz p1, :cond_1

    .line 525
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 527
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 529
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->updateLandscapeMiddleHorizontalSpacing()V

    .line 530
    return-void
.end method

.method public setPrimaryColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 537
    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLayout;->primaryColor:Landroid/content/res/ColorStateList;

    .line 538
    invoke-direct {p0}, Lcom/google/android/setupdesign/GlifLayout;->updateBackground()V

    .line 539
    const-class v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->setColor(Landroid/content/res/ColorStateList;)V

    .line 540
    return-void
.end method

.method public setProgressBarShown(Z)V
    .locals 1
    .param p1, "shown"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shown"
        }
    .end annotation

    .line 604
    const-class v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->setShown(Z)V

    .line 605
    return-void
.end method

.method public shouldApplyPartnerHeavyThemeResource()Z
    .locals 1

    .line 616
    iget-boolean v0, p0, Lcom/google/android/setupdesign/GlifLayout;->applyPartnerHeavyThemeResource:Z

    if-nez v0, :cond_1

    .line 617
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->shouldApplyPartnerResource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->shouldApplyExtendedPartnerConfig(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 616
    :goto_1
    return v0
.end method

.method protected tryApplyPartnerCustomizationContentPaddingTopStyle(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 653
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 654
    .local v0, "context":Landroid/content/Context;
    nop

    .line 655
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_CONTENT_PADDING_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 656
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v1

    .line 658
    .local v1, "partnerPaddingTopAvailable":Z
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->shouldApplyPartnerResource()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 659
    nop

    .line 661
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v2

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_CONTENT_PADDING_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 662
    invoke-virtual {v2, v0, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v2

    float-to-int v2, v2

    .line 664
    .local v2, "paddingTop":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 665
    nop

    .line 666
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 665
    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 669
    .end local v2    # "paddingTop":I
    :cond_0
    return-void
.end method

.method protected updateLandscapeMiddleHorizontalSpacing()V
    .locals 8

    .line 284
    nop

    .line 285
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/setupdesign/R$dimen;->sud_glif_land_middle_horizontal_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 286
    .local v0, "horizontalSpacing":I
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->shouldApplyPartnerResource()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAND_MIDDLE_HORIZONTAL_SPACING:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 288
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    nop

    .line 291
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    .line 292
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAND_MIDDLE_HORIZONTAL_SPACING:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v1

    float-to-int v0, v1

    .line 295
    :cond_0
    sget v1, Lcom/google/android/setupdesign/R$id;->sud_landscape_header_area:I

    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v1

    .line 296
    .local v1, "headerView":Landroid/view/View;
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 298
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->shouldApplyPartnerResource()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v3

    sget-object v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_MARGIN_END:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 300
    invoke-virtual {v3, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 301
    nop

    .line 303
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v3

    .line 304
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_MARGIN_END:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v3

    float-to-int v3, v3

    .local v3, "layoutMarginEnd":I
    goto :goto_0

    .line 306
    .end local v3    # "layoutMarginEnd":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/android/setupdesign/R$attr;->sudMarginEnd:I

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 307
    .local v3, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 308
    .local v4, "layoutMarginEnd":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    move v3, v4

    .line 310
    .end local v4    # "layoutMarginEnd":I
    .local v3, "layoutMarginEnd":I
    :goto_0
    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v4, v3

    .line 311
    .local v4, "paddingEnd":I
    nop

    .line 312
    nop

    .line 313
    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v5

    .line 314
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .line 316
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    .line 312
    invoke-virtual {v1, v5, v6, v4, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 326
    .end local v3    # "layoutMarginEnd":I
    .end local v4    # "paddingEnd":I
    :cond_2
    sget v3, Lcom/google/android/setupdesign/R$id;->sud_landscape_content_area:I

    invoke-virtual {p0, v3}, Lcom/google/android/setupdesign/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v3

    .line 327
    .local v3, "contentView":Landroid/view/View;
    if-eqz v3, :cond_5

    .line 329
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->shouldApplyPartnerResource()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 330
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    sget-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_MARGIN_START:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 331
    invoke-virtual {v4, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 332
    nop

    .line 334
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v2

    .line 335
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_MARGIN_START:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v2

    float-to-int v2, v2

    .local v2, "layoutMarginStart":I
    goto :goto_1

    .line 337
    .end local v2    # "layoutMarginStart":I
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/google/android/setupdesign/R$attr;->sudMarginStart:I

    filled-new-array {v5}, [I

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 338
    .local v4, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 339
    .restart local v2    # "layoutMarginStart":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 341
    .end local v4    # "a":Landroid/content/res/TypedArray;
    :goto_1
    const/4 v4, 0x0

    .line 342
    .local v4, "paddingStart":I
    if-eqz v1, :cond_4

    .line 343
    div-int/lit8 v5, v0, 0x2

    sub-int v4, v5, v2

    .line 345
    :cond_4
    nop

    .line 346
    nop

    .line 348
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 349
    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    .line 350
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    .line 346
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 359
    .end local v2    # "layoutMarginStart":I
    .end local v4    # "paddingStart":I
    :cond_5
    return-void
.end method
