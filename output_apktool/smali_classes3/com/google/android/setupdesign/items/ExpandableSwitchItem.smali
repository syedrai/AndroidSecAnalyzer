.class public Lcom/google/android/setupdesign/items/ExpandableSwitchItem;
.super Lcom/google/android/setupdesign/items/SwitchItem;
.source "ExpandableSwitchItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

.field private canExpanded:Z

.field private collapsedSummary:Ljava/lang/CharSequence;

.field private expandedSummary:Ljava/lang/CharSequence;

.field private isExpanded:Z

.field private isSwitchItem:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/SwitchItem;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->canExpanded:Z

    .line 59
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isSwitchItem:Z

    .line 61
    new-instance v0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;

    invoke-direct {v0, p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;-><init>(Lcom/google/android/setupdesign/items/ExpandableSwitchItem;)V

    iput-object v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 92
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->setIconGravity(I)V

    .line 93
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

    .line 96
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/SwitchItem;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->canExpanded:Z

    .line 59
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isSwitchItem:Z

    .line 61
    new-instance v0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;

    invoke-direct {v0, p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;-><init>(Lcom/google/android/setupdesign/items/ExpandableSwitchItem;)V

    iput-object v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 97
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->setIconGravity(I)V

    goto :goto_0

    .line 100
    :cond_0
    sget v0, Lcom/google/android/setupdesign/R$layout;->sud_items_expandable_switch_expressive:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->setLayoutResource(I)V

    .line 101
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->setIconGravity(I)V

    .line 103
    :goto_0
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

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/SwitchItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->canExpanded:Z

    .line 59
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isSwitchItem:Z

    .line 61
    new-instance v0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;

    invoke-direct {v0, p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;-><init>(Lcom/google/android/setupdesign/items/ExpandableSwitchItem;)V

    iput-object v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 107
    sget-object v0, Lcom/google/android/setupdesign/R$styleable;->SudExpandableSwitchItem:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudExpandableSwitchItem_sudCollapsedSummary:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->collapsedSummary:Ljava/lang/CharSequence;

    .line 109
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudExpandableSwitchItem_sudExpandedSummary:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->expandedSummary:Ljava/lang/CharSequence;

    .line 110
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudItem_sudIconGravity:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->setIconGravity(I)V

    goto :goto_0

    .line 113
    :cond_0
    sget v1, Lcom/google/android/setupdesign/R$layout;->sud_items_expandable_switch_expressive:I

    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->setLayoutResource(I)V

    .line 114
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudItem_sudIconGravity:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->setIconGravity(I)V

    .line 116
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "isSwitchItem"    # Z
    .param p4, "canExpanded"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "isSwitchItem",
            "canExpanded"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/SwitchItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->canExpanded:Z

    .line 59
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isSwitchItem:Z

    .line 61
    new-instance v0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;

    invoke-direct {v0, p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;-><init>(Lcom/google/android/setupdesign/items/ExpandableSwitchItem;)V

    iput-object v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 122
    sget-object v0, Lcom/google/android/setupdesign/R$styleable;->SudExpandableSwitchItem:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 123
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudExpandableSwitchItem_sudCollapsedSummary:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->collapsedSummary:Ljava/lang/CharSequence;

    .line 124
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudExpandableSwitchItem_sudExpandedSummary:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->expandedSummary:Ljava/lang/CharSequence;

    .line 125
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudItem_sudIconGravity:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->setIconGravity(I)V

    goto :goto_0

    .line 128
    :cond_0
    sget v1, Lcom/google/android/setupdesign/R$layout;->sud_items_expandable_switch_expressive:I

    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->setLayoutResource(I)V

    .line 129
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudItem_sudIconGravity:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->setIconGravity(I)V

    .line 131
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    iput-boolean p3, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isSwitchItem:Z

    .line 133
    iput-boolean p4, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->canExpanded:Z

    .line 134
    return-void
.end method

.method private tintCompoundDrawables(Landroid/view/View;)V
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

    .line 269
    nop

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010036

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 271
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 272
    .local v2, "tintColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 274
    if-eqz v2, :cond_3

    .line 275
    sget v3, Lcom/google/android/setupdesign/R$id;->sud_items_title:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 276
    .local v3, "titleView":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 277
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_0

    .line 278
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 276
    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 281
    :cond_1
    nop

    .line 282
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-ge v1, v5, :cond_3

    aget-object v6, v4, v1

    .line 283
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_2

    .line 284
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 282
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 289
    .end local v3    # "titleView":Landroid/widget/TextView;
    :cond_3
    return-void
.end method

.method private updateShowMoreLinkText(Landroid/view/View;)V
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

    .line 245
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_items_more_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 246
    .local v0, "showMoreLink":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    sget v1, Lcom/google/android/setupdesign/strings/R$string;->sud_less_info:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 250
    :cond_0
    sget v1, Lcom/google/android/setupdesign/strings/R$string;->sud_more_info:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 253
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getCollapsedSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->collapsedSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getDefaultLayoutResource()I
    .locals 1

    .line 138
    sget v0, Lcom/google/android/setupdesign/R$layout;->sud_items_expandable_switch:I

    return v0
.end method

.method public getExpandedSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->expandedSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->getExpandedSummary()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->getCollapsedSummary()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 195
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/items/SwitchItem;->onBindView(Landroid/view/View;)V

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 202
    sget v1, Lcom/google/android/setupdesign/R$id;->sud_items_more_info:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 203
    .local v1, "moreInfo":Landroid/view/View;
    sget v2, Lcom/google/android/setupdesign/R$id;->sud_items_summary_container:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 204
    .local v2, "contentContainer":Landroid/view/View;
    iget-boolean v3, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->canExpanded:Z

    if-eqz v3, :cond_0

    .line 205
    if-eqz v2, :cond_0

    .line 206
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    :cond_0
    if-eqz v1, :cond_1

    .line 210
    iget-boolean v3, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->canExpanded:Z

    if-nez v3, :cond_1

    .line 211
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 214
    :cond_1
    sget v3, Lcom/google/android/setupdesign/R$id;->sud_items_switch:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 216
    .local v3, "switchItem":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 217
    iget-boolean v4, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isSwitchItem:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v4, 0x4

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 219
    .end local v1    # "moreInfo":Landroid/view/View;
    .end local v2    # "contentContainer":Landroid/view/View;
    .end local v3    # "switchItem":Landroid/view/View;
    :cond_3
    goto :goto_2

    .line 220
    :cond_4
    sget v1, Lcom/google/android/setupdesign/R$id;->sud_items_expandable_switch_content:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 221
    .local v1, "content":Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    instance-of v2, v1, Lcom/google/android/setupdesign/view/CheckableLinearLayout;

    if-eqz v2, :cond_6

    move-object v2, v1

    check-cast v2, Lcom/google/android/setupdesign/view/CheckableLinearLayout;

    .line 224
    .local v2, "checkableLinearLayout":Lcom/google/android/setupdesign/view/CheckableLinearLayout;
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/setupdesign/view/CheckableLinearLayout;->setChecked(Z)V

    .line 227
    nop

    .line 228
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 229
    const/4 v3, 0x1

    goto :goto_1

    .line 230
    :cond_5
    const/4 v3, 0x0

    .line 227
    :goto_1
    invoke-virtual {v2, v3}, Lcom/google/android/setupdesign/view/CheckableLinearLayout;->setAccessibilityLiveRegion(I)V

    .line 232
    iget-object v3, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 234
    .end local v2    # "checkableLinearLayout":Lcom/google/android/setupdesign/view/CheckableLinearLayout;
    :cond_6
    invoke-static {v1}, Lcom/google/android/setupdesign/util/LayoutStyler;->applyPartnerCustomizationLayoutPaddingStyle(Landroid/view/View;)V

    .line 236
    .end local v1    # "content":Landroid/view/View;
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->tintCompoundDrawables(Landroid/view/View;)V

    .line 240
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 241
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->updateShowMoreLinkText(Landroid/view/View;)V

    .line 242
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/google/android/setupdesign/R$id;->sud_items_summary_container:I

    if-ne v0, v1, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->setExpanded(Z)V

    .line 260
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->updateShowMoreLinkText(Landroid/view/View;)V

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->setExpanded(Z)V

    .line 265
    :cond_1
    :goto_0
    return-void
.end method

.method public setCollapsedSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "collapsedSummary"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collapsedSummary"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->collapsedSummary:Ljava/lang/CharSequence;

    .line 171
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->notifyChanged()V

    .line 174
    :cond_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expanded"
        }
    .end annotation

    .line 153
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    if-ne v0, p1, :cond_0

    .line 154
    return-void

    .line 156
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    .line 157
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->notifyItemChanged()V

    .line 158
    return-void
.end method

.method public setExpandedSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "expandedSummary"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expandedSummary"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->expandedSummary:Ljava/lang/CharSequence;

    .line 187
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->notifyChanged()V

    .line 190
    :cond_0
    return-void
.end method
