.class public Lcom/google/android/setupdesign/items/Item;
.super Lcom/google/android/setupdesign/items/AbstractItem;
.source "Item.java"

# interfaces
.implements Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/items/Item$OnItemTextLinkClickListener;
    }
.end annotation


# instance fields
.field private contentDescription:Ljava/lang/CharSequence;

.field private enabled:Z

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconGravity:I

.field private iconTint:I

.field private isClickable:Ljava/lang/Boolean;

.field private itemTextLinkClickListener:Lcom/google/android/setupdesign/items/Item$OnItemTextLinkClickListener;

.field private layoutRes:I

.field private summary:Ljava/lang/CharSequence;

.field private title:Ljava/lang/CharSequence;

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/AbstractItem;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->enabled:Z

    .line 71
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->visible:Z

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupdesign/items/Item;->iconTint:I

    .line 73
    const/16 v0, 0x10

    iput v0, p0, Lcom/google/android/setupdesign/items/Item;->iconGravity:I

    .line 77
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->getDefaultLayoutResource()I

    move-result v0

    iput v0, p0, Lcom/google/android/setupdesign/items/Item;->layoutRes:I

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
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

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/AbstractItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->enabled:Z

    .line 71
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->visible:Z

    .line 72
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/setupdesign/items/Item;->iconTint:I

    .line 73
    const/16 v2, 0x10

    iput v2, p0, Lcom/google/android/setupdesign/items/Item;->iconGravity:I

    .line 82
    sget-object v3, Lcom/google/android/setupdesign/R$styleable;->SudItem:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 83
    .local v3, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/google/android/setupdesign/R$styleable;->SudItem_android_enabled:I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/setupdesign/items/Item;->enabled:Z

    .line 84
    sget v4, Lcom/google/android/setupdesign/R$styleable;->SudItem_android_icon:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/setupdesign/items/Item;->icon:Landroid/graphics/drawable/Drawable;

    .line 85
    sget v4, Lcom/google/android/setupdesign/R$styleable;->SudItem_android_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/setupdesign/items/Item;->title:Ljava/lang/CharSequence;

    .line 86
    sget v4, Lcom/google/android/setupdesign/R$styleable;->SudItem_android_summary:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/setupdesign/items/Item;->summary:Ljava/lang/CharSequence;

    .line 87
    sget v4, Lcom/google/android/setupdesign/R$styleable;->SudItem_android_contentDescription:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/setupdesign/items/Item;->contentDescription:Ljava/lang/CharSequence;

    .line 88
    sget v4, Lcom/google/android/setupdesign/R$styleable;->SudItem_android_layout:I

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->getDefaultLayoutResource()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/setupdesign/items/Item;->layoutRes:I

    .line 89
    sget v4, Lcom/google/android/setupdesign/R$styleable;->SudItem_android_visible:I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->visible:Z

    .line 90
    sget v0, Lcom/google/android/setupdesign/R$styleable;->SudItem_sudIconTint:I

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/setupdesign/items/Item;->iconTint:I

    .line 91
    sget v0, Lcom/google/android/setupdesign/R$styleable;->SudItem_sudIconGravity:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/setupdesign/items/Item;->iconGravity:I

    .line 93
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    return-void
.end method

.method private hasSummary(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "summary"
        }
    .end annotation

    .line 214
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getClickable()Ljava/lang/Boolean;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/google/android/setupdesign/items/Item;->isClickable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/google/android/setupdesign/items/Item;->contentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->isVisible()Z

    move-result v0

    return v0
.end method

.method protected getDefaultLayoutResource()I
    .locals 1

    .line 97
    sget v0, Lcom/google/android/setupdesign/R$layout;->sud_items_default:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/android/setupdesign/items/Item;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconGravity()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/google/android/setupdesign/items/Item;->iconGravity:I

    return v0
.end method

.method public getIconTint()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/google/android/setupdesign/items/Item;->iconTint:I

    return v0
.end method

.method public getLayoutResource()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/google/android/setupdesign/items/Item;->layoutRes:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/google/android/setupdesign/items/Item;->summary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/google/android/setupdesign/items/Item;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getViewId()I
    .locals 1

    .line 219
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->getId()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->enabled:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->visible:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 224
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_items_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 225
    .local v0, "label":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v1, p0, Lcom/google/android/setupdesign/items/Item;->isClickable:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/google/android/setupdesign/items/Item;->isClickable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 229
    :cond_0
    sget v1, Lcom/google/android/setupdesign/R$id;->sud_items_summary:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 230
    .local v1, "summaryView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 231
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-direct {p0, v2}, Lcom/google/android/setupdesign/items/Item;->hasSummary(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_2

    .line 232
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    instance-of v3, v1, Lcom/google/android/setupdesign/view/RichTextView;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Lcom/google/android/setupdesign/view/RichTextView;

    .line 234
    .local v3, "tv":Lcom/google/android/setupdesign/view/RichTextView;
    invoke-virtual {v3, p0}, Lcom/google/android/setupdesign/view/RichTextView;->setOnLinkClickListener(Lcom/google/android/setupdesign/span/LinkSpan$OnLinkClickListener;)V

    .line 236
    .end local v3    # "tv":Lcom/google/android/setupdesign/view/RichTextView;
    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 238
    :cond_2
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 243
    sget v3, Lcom/google/android/setupdesign/R$id;->sud_items_icon_container:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 244
    .local v3, "iconContainer":Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 245
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_5

    .line 246
    sget v5, Lcom/google/android/setupdesign/R$id;->sud_items_icon:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 249
    .local v5, "iconView":Landroid/widget/ImageView;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    invoke-virtual {p0, v5, v6}, Lcom/google/android/setupdesign/items/Item;->onMergeIconStateAndLevels(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 251
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    iget v7, p0, Lcom/google/android/setupdesign/items/Item;->iconTint:I

    if-eqz v7, :cond_3

    .line 253
    iget v7, p0, Lcom/google/android/setupdesign/items/Item;->iconTint:I

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 255
    :cond_3
    invoke-virtual {v5}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 257
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 258
    .local v7, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v8, v7, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v8, :cond_4

    .line 259
    move-object v8, v7

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    iget v9, p0, Lcom/google/android/setupdesign/items/Item;->iconGravity:I

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 261
    :cond_4
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 262
    .end local v5    # "iconView":Landroid/widget/ImageView;
    .end local v7    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_2

    .line 263
    :cond_5
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 266
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->getViewId()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setId(I)V

    .line 274
    instance-of v4, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;

    if-nez v4, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/google/android/setupdesign/R$id;->sud_layout_header:I

    if-eq v4, v5, :cond_6

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 276
    invoke-static {p1}, Lcom/google/android/setupdesign/util/LayoutStyler;->applyPartnerCustomizationLayoutPaddingStyle(Landroid/view/View;)V

    .line 279
    :cond_6
    invoke-static {p1}, Lcom/google/android/setupdesign/util/ItemStyler;->applyPartnerCustomizationItemStyle(Landroid/view/View;)V

    .line 280
    return-void
.end method

.method public onLinkClick(Lcom/google/android/setupdesign/span/LinkSpan;)Z
    .locals 1
    .param p1, "span"    # Lcom/google/android/setupdesign/span/LinkSpan;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "span"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/google/android/setupdesign/items/Item;->itemTextLinkClickListener:Lcom/google/android/setupdesign/items/Item$OnItemTextLinkClickListener;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/google/android/setupdesign/items/Item;->itemTextLinkClickListener:Lcom/google/android/setupdesign/items/Item$OnItemTextLinkClickListener;

    invoke-interface {v0, p1}, Lcom/google/android/setupdesign/items/Item$OnItemTextLinkClickListener;->onItemTextLinkClicked(Lcom/google/android/setupdesign/span/LinkSpan;)Z

    move-result v0

    return v0

    .line 297
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onMergeIconStateAndLevels(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "iconView"    # Landroid/widget/ImageView;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "iconView",
            "icon"
        }
    .end annotation

    .line 288
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 289
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 290
    return-void
.end method

.method public setClickable(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isClickable"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isClickable"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/google/android/setupdesign/items/Item;->isClickable:Ljava/lang/Boolean;

    .line 147
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentDescription"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/google/android/setupdesign/items/Item;->contentDescription:Ljava/lang/CharSequence;

    .line 194
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->notifyItemChanged()V

    .line 195
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 101
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->enabled:Z

    if-ne v0, p1, :cond_0

    .line 102
    return-void

    .line 104
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/Item;->enabled:Z

    .line 105
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->notifyItemChanged()V

    .line 106
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/google/android/setupdesign/items/Item;->icon:Landroid/graphics/drawable/Drawable;

    .line 120
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->notifyItemChanged()V

    .line 121
    return-void
.end method

.method public setIconGravity(I)V
    .locals 0
    .param p1, "iconGravity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconGravity"
        }
    .end annotation

    .line 138
    iput p1, p0, Lcom/google/android/setupdesign/items/Item;->iconGravity:I

    .line 139
    return-void
.end method

.method public setIconTint(I)V
    .locals 0
    .param p1, "iconTint"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconTint"
        }
    .end annotation

    .line 129
    iput p1, p0, Lcom/google/android/setupdesign/items/Item;->iconTint:I

    .line 130
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0
    .param p1, "layoutResource"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutResource"
        }
    .end annotation

    .line 154
    iput p1, p0, Lcom/google/android/setupdesign/items/Item;->layoutRes:I

    .line 155
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->notifyItemChanged()V

    .line 156
    return-void
.end method

.method public setOnItemTextLinkClickListener(Lcom/google/android/setupdesign/items/Item$OnItemTextLinkClickListener;)V
    .locals 0
    .param p1, "itemTextLinkClickListener"    # Lcom/google/android/setupdesign/items/Item$OnItemTextLinkClickListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemTextLinkClickListener"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/google/android/setupdesign/items/Item;->itemTextLinkClickListener:Lcom/google/android/setupdesign/items/Item$OnItemTextLinkClickListener;

    .line 175
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "summary"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/google/android/setupdesign/items/Item;->summary:Ljava/lang/CharSequence;

    .line 165
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->notifyItemChanged()V

    .line 166
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/google/android/setupdesign/items/Item;->title:Ljava/lang/CharSequence;

    .line 179
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->notifyItemChanged()V

    .line 180
    return-void
.end method

.method public setVisible(Z)V
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

    .line 198
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->visible:Z

    if-ne v0, p1, :cond_0

    .line 199
    return-void

    .line 201
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/Item;->visible:Z

    .line 202
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 203
    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupdesign/items/Item;->notifyItemRangeRemoved(II)V

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupdesign/items/Item;->notifyItemRangeInserted(II)V

    .line 207
    :goto_0
    return-void
.end method
