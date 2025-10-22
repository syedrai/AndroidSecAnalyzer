.class public Lcom/google/android/setupdesign/view/PromoCardView;
.super Landroid/widget/LinearLayout;
.source "PromoCardView.java"


# instance fields
.field private bottomRoundedCorner:Z

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconView:Landroid/widget/ImageView;

.field private summary:Ljava/lang/CharSequence;

.field private summaryView:Lcom/google/android/setupdesign/view/RichTextView;

.field private title:Ljava/lang/CharSequence;

.field private titleView:Lcom/google/android/setupdesign/view/RichTextView;

.field private topRoundedCorner:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/PromoCardView;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
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

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    sget-object v0, Lcom/google/android/setupdesign/R$styleable;->SudPromoCardView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudPromoCardView_android_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/view/PromoCardView;->icon:Landroid/graphics/drawable/Drawable;

    .line 58
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudPromoCardView_android_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/view/PromoCardView;->title:Ljava/lang/CharSequence;

    .line 59
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudPromoCardView_android_summary:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/view/PromoCardView;->summary:Ljava/lang/CharSequence;

    .line 60
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudPromoCardView_sudTopRoundedCorner:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/setupdesign/view/PromoCardView;->topRoundedCorner:Z

    .line 61
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudPromoCardView_sudBottomRoundedCorner:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/setupdesign/view/PromoCardView;->bottomRoundedCorner:Z

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/PromoCardView;->init()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    sget-object v0, Lcom/google/android/setupdesign/R$styleable;->SudPromoCardView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudPromoCardView_android_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/view/PromoCardView;->icon:Landroid/graphics/drawable/Drawable;

    .line 70
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudPromoCardView_android_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/view/PromoCardView;->title:Ljava/lang/CharSequence;

    .line 71
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudPromoCardView_android_summary:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/view/PromoCardView;->summary:Ljava/lang/CharSequence;

    .line 72
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudPromoCardView_sudTopRoundedCorner:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/setupdesign/view/PromoCardView;->topRoundedCorner:Z

    .line 73
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudPromoCardView_sudBottomRoundedCorner:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/setupdesign/view/PromoCardView;->bottomRoundedCorner:Z

    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/PromoCardView;->init()V

    .line 76
    return-void
.end method

.method private getFirstBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 99
    nop

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/google/android/setupdesign/R$attr;->sudItemBackgroundFirst:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 102
    .local v1, "firstBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    return-object v1
.end method

.method private getLastBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 107
    nop

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/google/android/setupdesign/R$attr;->sudItemBackgroundLast:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 110
    .local v1, "lastBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    return-object v1
.end method

.method private getMiddleBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/google/android/setupdesign/R$attr;->sudItemBackground:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 116
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 117
    .local v1, "middleBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    return-object v1
.end method

.method private getSingleBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 122
    nop

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/google/android/setupdesign/R$attr;->sudItemBackgroundSingle:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 124
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 125
    .local v1, "singleBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    return-object v1
.end method

.method private init()V
    .locals 3

    .line 79
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/PromoCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/setupdesign/R$layout;->sud_promo_card_default:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 80
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_items_title:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/view/PromoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/view/RichTextView;

    iput-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->titleView:Lcom/google/android/setupdesign/view/RichTextView;

    .line 81
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_items_summary:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/view/PromoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/view/RichTextView;

    iput-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->summaryView:Lcom/google/android/setupdesign/view/RichTextView;

    .line 82
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_items_icon:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/view/PromoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->iconView:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->titleView:Lcom/google/android/setupdesign/view/RichTextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->titleView:Lcom/google/android/setupdesign/view/RichTextView;

    iget-object v2, p0, Lcom/google/android/setupdesign/view/PromoCardView;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/google/android/setupdesign/view/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->titleView:Lcom/google/android/setupdesign/view/RichTextView;

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/view/RichTextView;->setVisibility(I)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->summaryView:Lcom/google/android/setupdesign/view/RichTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->summary:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->summaryView:Lcom/google/android/setupdesign/view/RichTextView;

    iget-object v2, p0, Lcom/google/android/setupdesign/view/PromoCardView;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/google/android/setupdesign/view/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->summaryView:Lcom/google/android/setupdesign/view/RichTextView;

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/view/RichTextView;->setVisibility(I)V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->iconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->iconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/setupdesign/view/PromoCardView;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    :cond_2
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/PromoCardView;->updateBackground()V

    .line 96
    return-void
.end method

.method private updateBackground()V
    .locals 8

    .line 130
    nop

    .line 131
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/PromoCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/setupdesign/R$dimen;->sud_glif_expressive_item_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 132
    .local v0, "cornerRadius":F
    nop

    .line 133
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/PromoCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    .line 135
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/PromoCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_GROUP_CORNER_RADIUS:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 134
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v1

    .line 136
    .local v1, "groupCornerRadius":F
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/PromoCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/setupdesign/view/PromoCardView;->getMiddleBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 138
    .local v2, "background":Landroid/graphics/drawable/Drawable;
    iget-boolean v3, p0, Lcom/google/android/setupdesign/view/PromoCardView;->topRoundedCorner:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/google/android/setupdesign/view/PromoCardView;->bottomRoundedCorner:Z

    if-eqz v3, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/PromoCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/setupdesign/view/PromoCardView;->getSingleBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 140
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/setupdesign/view/PromoCardView;->topRoundedCorner:Z

    if-eqz v3, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/PromoCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/setupdesign/view/PromoCardView;->getFirstBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 142
    :cond_1
    iget-boolean v3, p0, Lcom/google/android/setupdesign/view/PromoCardView;->bottomRoundedCorner:Z

    if-eqz v3, :cond_2

    .line 143
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/PromoCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/setupdesign/view/PromoCardView;->getLastBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 146
    :cond_2
    :goto_0
    instance-of v3, v2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_5

    .line 147
    move v3, v0

    .line 148
    .local v3, "topCornerRadius":F
    move v4, v0

    .line 149
    .local v4, "bottomCornerRadius":F
    iget-boolean v5, p0, Lcom/google/android/setupdesign/view/PromoCardView;->topRoundedCorner:Z

    if-eqz v5, :cond_3

    .line 150
    move v3, v1

    .line 152
    :cond_3
    iget-boolean v5, p0, Lcom/google/android/setupdesign/view/PromoCardView;->bottomRoundedCorner:Z

    if-eqz v5, :cond_4

    .line 153
    move v4, v1

    .line 155
    :cond_4
    move-object v5, v2

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    const/16 v6, 0x8

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v3, v6, v7

    const/4 v7, 0x1

    aput v3, v6, v7

    const/4 v7, 0x2

    aput v3, v6, v7

    const/4 v7, 0x3

    aput v3, v6, v7

    const/4 v7, 0x4

    aput v4, v6, v7

    const/4 v7, 0x5

    aput v4, v6, v7

    const/4 v7, 0x6

    aput v4, v6, v7

    const/4 v7, 0x7

    aput v4, v6, v7

    .line 156
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 167
    sget v5, Lcom/google/android/setupdesign/R$id;->sud_promo_card_container:I

    invoke-virtual {p0, v5}, Lcom/google/android/setupdesign/view/PromoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    .end local v3    # "topCornerRadius":F
    .end local v4    # "bottomCornerRadius":F
    :cond_5
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->summary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isBottomRoundedCorner()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->bottomRoundedCorner:Z

    return v0
.end method

.method public isTopRoundedCorner()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->topRoundedCorner:Z

    return v0
.end method

.method public setBottomRoundedCorner(Z)V
    .locals 0
    .param p1, "bottomRoundedCorner"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bottomRoundedCorner"
        }
    .end annotation

    .line 177
    iput-boolean p1, p0, Lcom/google/android/setupdesign/view/PromoCardView;->bottomRoundedCorner:Z

    .line 178
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/PromoCardView;->updateBackground()V

    .line 179
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/google/android/setupdesign/view/PromoCardView;->icon:Landroid/graphics/drawable/Drawable;

    .line 199
    iget-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->iconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    :cond_0
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "summary"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/google/android/setupdesign/view/PromoCardView;->summary:Ljava/lang/CharSequence;

    .line 191
    iget-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->summaryView:Lcom/google/android/setupdesign/view/RichTextView;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->summaryView:Lcom/google/android/setupdesign/view/RichTextView;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/view/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->summaryView:Lcom/google/android/setupdesign/view/RichTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/view/RichTextView;->setVisibility(I)V

    .line 195
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/google/android/setupdesign/view/PromoCardView;->title:Ljava/lang/CharSequence;

    .line 183
    iget-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->titleView:Lcom/google/android/setupdesign/view/RichTextView;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->titleView:Lcom/google/android/setupdesign/view/RichTextView;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/view/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/google/android/setupdesign/view/PromoCardView;->titleView:Lcom/google/android/setupdesign/view/RichTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/view/RichTextView;->setVisibility(I)V

    .line 187
    :cond_0
    return-void
.end method

.method public setTopRoundedCorner(Z)V
    .locals 0
    .param p1, "topRoundedCorner"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "topRoundedCorner"
        }
    .end annotation

    .line 172
    iput-boolean p1, p0, Lcom/google/android/setupdesign/view/PromoCardView;->topRoundedCorner:Z

    .line 173
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/PromoCardView;->updateBackground()V

    .line 174
    return-void
.end method
