.class public Lcom/google/android/setupdesign/items/ItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "ItemAdapter.java"

# interfaces
.implements Lcom/google/android/setupdesign/items/ItemHierarchy$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/items/ItemAdapter$ViewTypes;
    }
.end annotation


# instance fields
.field private final itemHierarchy:Lcom/google/android/setupdesign/items/ItemHierarchy;

.field private listView:Landroid/view/View;

.field private final viewTypes:Lcom/google/android/setupdesign/items/ItemAdapter$ViewTypes;


# direct methods
.method public constructor <init>(Lcom/google/android/setupdesign/items/ItemHierarchy;)V
    .locals 2
    .param p1, "hierarchy"    # Lcom/google/android/setupdesign/items/ItemHierarchy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hierarchy"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    new-instance v0, Lcom/google/android/setupdesign/items/ItemAdapter$ViewTypes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/setupdesign/items/ItemAdapter$ViewTypes;-><init>(Lcom/google/android/setupdesign/items/ItemAdapter-IA;)V

    iput-object v0, p0, Lcom/google/android/setupdesign/items/ItemAdapter;->viewTypes:Lcom/google/android/setupdesign/items/ItemAdapter$ViewTypes;

    .line 46
    iput-object v1, p0, Lcom/google/android/setupdesign/items/ItemAdapter;->listView:Landroid/view/View;

    .line 49
    iput-object p1, p0, Lcom/google/android/setupdesign/items/ItemAdapter;->itemHierarchy:Lcom/google/android/setupdesign/items/ItemHierarchy;

    .line 50
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ItemAdapter;->itemHierarchy:Lcom/google/android/setupdesign/items/ItemHierarchy;

    invoke-interface {v0, p0}, Lcom/google/android/setupdesign/items/ItemHierarchy;->registerObserver(Lcom/google/android/setupdesign/items/ItemHierarchy$Observer;)V

    .line 51
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/ItemAdapter;->refreshViewTypes()V

    .line 52
    return-void
.end method

.method private getCornerRadius(Landroid/content/Context;)F
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 145
    nop

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/google/android/setupdesign/R$attr;->sudItemCornerRadius:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 147
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 148
    .local v1, "conerRadius":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    return v1
.end method

.method private getFirstBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "position"
        }
    .end annotation

    .line 93
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/items/ItemAdapter;->getItem(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object v0

    .line 94
    .local v0, "item":Lcom/google/android/setupdesign/items/IItem;
    nop

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 97
    invoke-interface {v0}, Lcom/google/android/setupdesign/items/IItem;->isActionable()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 98
    new-array v2, v3, [I

    sget v3, Lcom/google/android/setupdesign/R$attr;->sudItemBackgroundFirst:I

    aput v3, v2, v4

    goto :goto_0

    .line 99
    :cond_0
    new-array v2, v3, [I

    sget v3, Lcom/google/android/setupdesign/R$attr;->sudNonActionableItemBackgroundFirst:I

    aput v3, v2, v4

    .line 96
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 100
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 101
    .local v2, "firstBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    return-object v2
.end method

.method private getLastBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "position"
        }
    .end annotation

    .line 106
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/items/ItemAdapter;->getItem(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object v0

    .line 107
    .local v0, "item":Lcom/google/android/setupdesign/items/IItem;
    nop

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 110
    invoke-interface {v0}, Lcom/google/android/setupdesign/items/IItem;->isActionable()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 111
    new-array v2, v3, [I

    sget v3, Lcom/google/android/setupdesign/R$attr;->sudItemBackgroundLast:I

    aput v3, v2, v4

    goto :goto_0

    .line 112
    :cond_0
    new-array v2, v3, [I

    sget v3, Lcom/google/android/setupdesign/R$attr;->sudNonActionableItemBackgroundLast:I

    aput v3, v2, v4

    .line 109
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 113
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 114
    .local v2, "lastBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    return-object v2
.end method

.method private getMiddleBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "position"
        }
    .end annotation

    .line 119
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/items/ItemAdapter;->getItem(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object v0

    .line 120
    .local v0, "item":Lcom/google/android/setupdesign/items/IItem;
    nop

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 123
    invoke-interface {v0}, Lcom/google/android/setupdesign/items/IItem;->isActionable()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 124
    new-array v2, v3, [I

    sget v3, Lcom/google/android/setupdesign/R$attr;->sudItemBackground:I

    aput v3, v2, v4

    goto :goto_0

    .line 125
    :cond_0
    new-array v2, v3, [I

    sget v3, Lcom/google/android/setupdesign/R$attr;->sudNonActionableItemBackground:I

    aput v3, v2, v4

    .line 122
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 126
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 127
    .local v2, "middleBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    return-object v2
.end method

.method private getSingleBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "position"
        }
    .end annotation

    .line 132
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/items/ItemAdapter;->getItem(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object v0

    .line 133
    .local v0, "item":Lcom/google/android/setupdesign/items/IItem;
    nop

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 136
    invoke-interface {v0}, Lcom/google/android/setupdesign/items/IItem;->isActionable()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 137
    new-array v2, v3, [I

    sget v3, Lcom/google/android/setupdesign/R$attr;->sudItemBackgroundSingle:I

    aput v3, v2, v4

    goto :goto_0

    .line 138
    :cond_0
    new-array v2, v3, [I

    sget v3, Lcom/google/android/setupdesign/R$attr;->sudNonActionableItemBackgroundSingle:I

    aput v3, v2, v4

    .line 135
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 139
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 140
    .local v2, "singleBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    return-object v2
.end method

.method private isFirstItemOfGroup(I)Z
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 153
    if-eqz p1, :cond_1

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/items/ItemAdapter;->getItem(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/setupdesign/items/IItem;->isGroupDivider()Z

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

.method private isLastItemOfGroup(I)Z
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ItemAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-eq p1, v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/items/ItemAdapter;->getItem(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/setupdesign/items/IItem;->isGroupDivider()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private refreshViewTypes()V
    .locals 4

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ItemAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 87
    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/items/ItemAdapter;->getItem(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object v1

    .line 88
    .local v1, "item":Lcom/google/android/setupdesign/items/IItem;
    iget-object v2, p0, Lcom/google/android/setupdesign/items/ItemAdapter;->viewTypes:Lcom/google/android/setupdesign/items/ItemAdapter$ViewTypes;

    invoke-interface {v1}, Lcom/google/android/setupdesign/items/IItem;->getLayoutResource()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/setupdesign/items/ItemAdapter$ViewTypes;->add(I)I

    .line 86
    .end local v1    # "item":Lcom/google/android/setupdesign/items/IItem;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private resetMarginStartEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemView"
        }
    .end annotation

    .line 282
    nop

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 284
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 285
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 286
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    return-void
.end method

.method private shouldApplyAdditionalMargin()Z
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ItemAdapter;->listView:Landroid/view/View;

    instance-of v1, v0, Lcom/google/android/setupdesign/view/StickyHeaderListView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/setupdesign/view/StickyHeaderListView;

    .line 276
    .local v0, "stickyHeaderListView":Lcom/google/android/setupdesign/view/StickyHeaderListView;
    invoke-virtual {v0}, Lcom/google/android/setupdesign/view/StickyHeaderListView;->shouldApplyAdditionalMargin()Z

    move-result v1

    return v1

    .line 278
    .end local v0    # "stickyHeaderListView":Lcom/google/android/setupdesign/view/StickyHeaderListView;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateMargin(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 267
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/ItemAdapter;->shouldApplyAdditionalMargin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-static {p1}, Lcom/google/android/setupdesign/util/ItemStyler;->applyPartnerCustomizationLayoutMarginStyle(Landroid/view/View;)V

    goto :goto_0

    .line 270
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/ItemAdapter;->resetMarginStartEnd(Landroid/view/View;)V

    .line 272
    :goto_0
    return-void
.end method


# virtual methods
.method public findItemById(I)Lcom/google/android/setupdesign/items/ItemHierarchy;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ItemAdapter;->itemHierarchy:Lcom/google/android/setupdesign/items/ItemHierarchy;

    invoke-interface {v0, p1}, Lcom/google/android/setupdesign/items/ItemHierarchy;->findItemById(I)Lcom/google/android/setupdesign/items/ItemHierarchy;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ItemAdapter;->itemHierarchy:Lcom/google/android/setupdesign/items/ItemHierarchy;

    invoke-interface {v0}, Lcom/google/android/setupdesign/items/ItemHierarchy;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/google/android/setupdesign/items/IItem;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ItemAdapter;->itemHierarchy:Lcom/google/android/setupdesign/items/ItemHierarchy;

    invoke-interface {v0, p1}, Lcom/google/android/setupdesign/items/ItemHierarchy;->getItemAt(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "position"
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/items/ItemAdapter;->getItem(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 70
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/items/ItemAdapter;->getItem(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object v0

    .line 76
    .local v0, "item":Lcom/google/android/setupdesign/items/IItem;
    invoke-interface {v0}, Lcom/google/android/setupdesign/items/IItem;->getLayoutResource()I

    move-result v1

    .line 77
    .local v1, "layoutRes":I
    iget-object v2, p0, Lcom/google/android/setupdesign/items/ItemAdapter;->viewTypes:Lcom/google/android/setupdesign/items/ItemAdapter$ViewTypes;

    invoke-virtual {v2, v1}, Lcom/google/android/setupdesign/items/ItemAdapter$ViewTypes;->get(I)I

    move-result v2

    return v2
.end method

.method public getRootItemHierarchy()Lcom/google/android/setupdesign/items/ItemHierarchy;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ItemAdapter;->itemHierarchy:Lcom/google/android/setupdesign/items/ItemHierarchy;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 226
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/items/ItemAdapter;->getItem(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object v0

    .line 228
    .local v0, "item":Lcom/google/android/setupdesign/items/IItem;
    const/4 v2, 0x0

    .line 235
    .local v2, "linearLayout":Landroid/widget/LinearLayout;
    if-nez p2, :cond_0

    .line 236
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 237
    .local v3, "inflater":Landroid/view/LayoutInflater;
    sget v4, Lcom/google/android/setupdesign/R$layout;->sud_empty_linear_layout:I

    .line 238
    invoke-virtual {v3, v4, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Landroid/widget/LinearLayout;

    .line 239
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 240
    .local v4, "linearLayoutInflater":Landroid/view/LayoutInflater;
    invoke-interface {v0}, Lcom/google/android/setupdesign/items/IItem;->getLayoutResource()I

    move-result v5

    invoke-virtual {v4, v5, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 241
    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "linearLayoutInflater":Landroid/view/LayoutInflater;
    goto :goto_0

    .line 243
    :cond_0
    move-object v2, p2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 244
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 246
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/google/android/setupdesign/items/ItemAdapter;->updateBackground(Landroid/view/View;I)V

    .line 247
    invoke-interface {v0, p2}, Lcom/google/android/setupdesign/items/IItem;->onBindView(Landroid/view/View;)V

    .line 248
    invoke-direct {p0, p2}, Lcom/google/android/setupdesign/items/ItemAdapter;->updateMargin(Landroid/view/View;)V

    .line 249
    return-object v2

    .line 251
    .end local v0    # "item":Lcom/google/android/setupdesign/items/IItem;
    .end local v2    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/items/ItemAdapter;->getItem(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object v0

    .line 252
    .restart local v0    # "item":Lcom/google/android/setupdesign/items/IItem;
    if-nez p2, :cond_2

    .line 253
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 254
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-interface {v0}, Lcom/google/android/setupdesign/items/IItem;->getLayoutResource()I

    move-result v3

    invoke-virtual {v2, v3, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 256
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    invoke-interface {v0, p2}, Lcom/google/android/setupdesign/items/IItem;->onBindView(Landroid/view/View;)V

    .line 257
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ItemAdapter;->viewTypes:Lcom/google/android/setupdesign/items/ItemAdapter$ViewTypes;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/items/ItemAdapter$ViewTypes;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 318
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/items/ItemAdapter;->getItem(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/setupdesign/items/IItem;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onChanged(Lcom/google/android/setupdesign/items/ItemHierarchy;)V
    .locals 0
    .param p1, "hierarchy"    # Lcom/google/android/setupdesign/items/ItemHierarchy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hierarchy"
        }
    .end annotation

    .line 291
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/ItemAdapter;->refreshViewTypes()V

    .line 292
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ItemAdapter;->notifyDataSetChanged()V

    .line 293
    return-void
.end method

.method public onItemRangeChanged(Lcom/google/android/setupdesign/items/ItemHierarchy;II)V
    .locals 0
    .param p1, "itemHierarchy"    # Lcom/google/android/setupdesign/items/ItemHierarchy;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "itemHierarchy",
            "positionStart",
            "itemCount"
        }
    .end annotation

    .line 297
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/items/ItemAdapter;->onChanged(Lcom/google/android/setupdesign/items/ItemHierarchy;)V

    .line 298
    return-void
.end method

.method public onItemRangeInserted(Lcom/google/android/setupdesign/items/ItemHierarchy;II)V
    .locals 0
    .param p1, "itemHierarchy"    # Lcom/google/android/setupdesign/items/ItemHierarchy;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "itemHierarchy",
            "positionStart",
            "itemCount"
        }
    .end annotation

    .line 302
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/items/ItemAdapter;->onChanged(Lcom/google/android/setupdesign/items/ItemHierarchy;)V

    .line 303
    return-void
.end method

.method public onItemRangeMoved(Lcom/google/android/setupdesign/items/ItemHierarchy;III)V
    .locals 0
    .param p1, "itemHierarchy"    # Lcom/google/android/setupdesign/items/ItemHierarchy;
    .param p2, "fromPosition"    # I
    .param p3, "toPosition"    # I
    .param p4, "itemCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "itemHierarchy",
            "fromPosition",
            "toPosition",
            "itemCount"
        }
    .end annotation

    .line 308
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/items/ItemAdapter;->onChanged(Lcom/google/android/setupdesign/items/ItemHierarchy;)V

    .line 309
    return-void
.end method

.method public onItemRangeRemoved(Lcom/google/android/setupdesign/items/ItemHierarchy;II)V
    .locals 0
    .param p1, "itemHierarchy"    # Lcom/google/android/setupdesign/items/ItemHierarchy;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "itemHierarchy",
            "positionStart",
            "itemCount"
        }
    .end annotation

    .line 313
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/items/ItemAdapter;->onChanged(Lcom/google/android/setupdesign/items/ItemHierarchy;)V

    .line 314
    return-void
.end method

.method public setListView(Landroid/view/View;)V
    .locals 0
    .param p1, "listView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listView"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/google/android/setupdesign/items/ItemAdapter;->listView:Landroid/view/View;

    .line 56
    return-void
.end method

.method public updateBackground(Landroid/view/View;I)V
    .locals 13
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "convertView",
            "position"
        }
    .end annotation

    .line 161
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/items/ItemAdapter;->getItem(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/setupdesign/items/IItem;->isGroupDivider()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    return-void

    .line 165
    :cond_0
    nop

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_GROUP_CORNER_RADIUS:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v0

    .line 168
    .local v0, "groupCornerRadius":F
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/setupdesign/items/ItemAdapter;->getCornerRadius(Landroid/content/Context;)F

    move-result v1

    .line 169
    .local v1, "cornerRadius":F
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 170
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 171
    .local v3, "clickDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 172
    .local v4, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .line 175
    .local v5, "background":Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {p0, p2}, Lcom/google/android/setupdesign/items/ItemAdapter;->isFirstItemOfGroup(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/setupdesign/items/ItemAdapter;->isLastItemOfGroup(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Lcom/google/android/setupdesign/items/ItemAdapter;->getSingleBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 177
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/setupdesign/items/ItemAdapter;->isFirstItemOfGroup(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Lcom/google/android/setupdesign/items/ItemAdapter;->getFirstBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 179
    :cond_2
    invoke-direct {p0, p2}, Lcom/google/android/setupdesign/items/ItemAdapter;->isLastItemOfGroup(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Lcom/google/android/setupdesign/items/ItemAdapter;->getLastBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Lcom/google/android/setupdesign/items/ItemAdapter;->getMiddleBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 185
    :goto_0
    instance-of v6, v2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v6, :cond_4

    move-object v6, v2

    check-cast v6, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v6

    if-lt v6, v8, :cond_4

    .line 186
    move-object v6, v2

    check-cast v6, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    .line 188
    :cond_4
    nop

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 191
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    sget v10, Lcom/google/android/setupdesign/R$attr;->selectableItemBackground:I

    filled-new-array {v10}, [I

    move-result-object v10

    .line 192
    invoke-virtual {v6, v10}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 193
    .local v6, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 194
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    .end local v6    # "a":Landroid/content/res/TypedArray;
    :goto_1
    instance-of v6, v4, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v6, :cond_7

    .line 197
    move v6, v1

    .line 198
    .local v6, "topCornerRadius":F
    move v10, v1

    .line 199
    .local v10, "bottomCornerRadius":F
    invoke-direct {p0, p2}, Lcom/google/android/setupdesign/items/ItemAdapter;->isFirstItemOfGroup(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 200
    move v6, v0

    .line 202
    :cond_5
    invoke-direct {p0, p2}, Lcom/google/android/setupdesign/items/ItemAdapter;->isLastItemOfGroup(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 203
    move v10, v0

    .line 205
    :cond_6
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    .line 206
    const/16 v11, 0x8

    new-array v11, v11, [F

    aput v6, v11, v9

    aput v6, v11, v7

    aput v6, v11, v8

    const/4 v12, 0x3

    aput v6, v11, v12

    const/4 v12, 0x4

    aput v10, v11, v12

    const/4 v12, 0x5

    aput v10, v11, v12

    const/4 v12, 0x6

    aput v10, v11, v12

    const/4 v12, 0x7

    aput v10, v11, v12

    invoke-virtual {v5, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 217
    new-array v8, v8, [Landroid/graphics/drawable/Drawable;

    aput-object v5, v8, v9

    aput-object v3, v8, v7

    .line 218
    .local v8, "layers":[Landroid/graphics/drawable/Drawable;
    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v7, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    .end local v6    # "topCornerRadius":F
    .end local v8    # "layers":[Landroid/graphics/drawable/Drawable;
    .end local v10    # "bottomCornerRadius":F
    :cond_7
    return-void
.end method
