.class public Lcom/google/android/setupdesign/items/RecyclerItemAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecyclerItemAdapter.java"

# interfaces
.implements Lcom/google/android/setupdesign/items/ItemHierarchy$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/items/RecyclerItemAdapter$PatchedLayerDrawable;,
        Lcom/google/android/setupdesign/items/RecyclerItemAdapter$OnItemSelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/google/android/setupdesign/items/ItemViewHolder;",
        ">;",
        "Lcom/google/android/setupdesign/items/ItemHierarchy$Observer;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecyclerItemAdapter"

.field public static final TAG_NO_BACKGROUND:Ljava/lang/String; = "noBackground"


# instance fields
.field public final applyPartnerHeavyThemeResource:Z

.field private groupCornerRadiusExternal:Ljava/lang/Float;

.field private final itemHierarchy:Lcom/google/android/setupdesign/items/ItemHierarchy;

.field private listener:Lcom/google/android/setupdesign/items/RecyclerItemAdapter$OnItemSelectedListener;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field public final useFullDynamicColor:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetlistener(Lcom/google/android/setupdesign/items/RecyclerItemAdapter;)Lcom/google/android/setupdesign/items/RecyclerItemAdapter$OnItemSelectedListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->listener:Lcom/google/android/setupdesign/items/RecyclerItemAdapter$OnItemSelectedListener;

    return-object p0
.end method

.method public constructor <init>(Lcom/google/android/setupdesign/items/ItemHierarchy;)V
    .locals 1
    .param p1, "hierarchy"    # Lcom/google/android/setupdesign/items/ItemHierarchy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hierarchy"
        }
    .end annotation

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;-><init>(Lcom/google/android/setupdesign/items/ItemHierarchy;Z)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/google/android/setupdesign/items/ItemHierarchy;Z)V
    .locals 1
    .param p1, "hierarchy"    # Lcom/google/android/setupdesign/items/ItemHierarchy;
    .param p2, "applyPartnerHeavyThemeResource"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hierarchy",
            "applyPartnerHeavyThemeResource"
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;-><init>(Lcom/google/android/setupdesign/items/ItemHierarchy;ZZ)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/google/android/setupdesign/items/ItemHierarchy;ZZ)V
    .locals 1
    .param p1, "hierarchy"    # Lcom/google/android/setupdesign/items/ItemHierarchy;
    .param p2, "applyPartnerHeavyThemeResource"    # Z
    .param p3, "useFullDynamicColor"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "hierarchy",
            "applyPartnerHeavyThemeResource",
            "useFullDynamicColor"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 89
    iput-boolean p2, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->applyPartnerHeavyThemeResource:Z

    .line 90
    iput-boolean p3, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->useFullDynamicColor:Z

    .line 91
    iput-object p1, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->itemHierarchy:Lcom/google/android/setupdesign/items/ItemHierarchy;

    .line 92
    iget-object v0, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->itemHierarchy:Lcom/google/android/setupdesign/items/ItemHierarchy;

    invoke-interface {v0, p0}, Lcom/google/android/setupdesign/items/ItemHierarchy;->registerObserver(Lcom/google/android/setupdesign/items/ItemHierarchy$Observer;)V

    .line 93
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

    .line 241
    nop

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/google/android/setupdesign/R$attr;->sudItemCornerRadius:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 243
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 244
    .local v1, "conerRadius":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 245
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

    .line 187
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->getItem(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object v0

    .line 188
    .local v0, "item":Lcom/google/android/setupdesign/items/IItem;
    nop

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 191
    invoke-interface {v0}, Lcom/google/android/setupdesign/items/IItem;->isActionable()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 192
    new-array v2, v3, [I

    sget v3, Lcom/google/android/setupdesign/R$attr;->sudItemBackgroundFirst:I

    aput v3, v2, v4

    goto :goto_0

    .line 193
    :cond_0
    new-array v2, v3, [I

    sget v3, Lcom/google/android/setupdesign/R$attr;->sudNonActionableItemBackgroundFirst:I

    aput v3, v2, v4

    .line 190
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 194
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 195
    .local v2, "firstBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
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

    .line 200
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->getItem(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object v0

    .line 201
    .local v0, "item":Lcom/google/android/setupdesign/items/IItem;
    nop

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 204
    invoke-interface {v0}, Lcom/google/android/setupdesign/items/IItem;->isActionable()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 205
    new-array v2, v3, [I

    sget v3, Lcom/google/android/setupdesign/R$attr;->sudItemBackgroundLast:I

    aput v3, v2, v4

    goto :goto_0

    .line 206
    :cond_0
    new-array v2, v3, [I

    sget v3, Lcom/google/android/setupdesign/R$attr;->sudNonActionableItemBackgroundLast:I

    aput v3, v2, v4

    .line 203
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 207
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 208
    .local v2, "lastBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 209
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

    .line 213
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->getItem(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object v0

    .line 214
    .local v0, "item":Lcom/google/android/setupdesign/items/IItem;
    nop

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 218
    invoke-interface {v0}, Lcom/google/android/setupdesign/items/IItem;->isActionable()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 219
    new-array v2, v3, [I

    sget v3, Lcom/google/android/setupdesign/R$attr;->sudItemBackground:I

    aput v3, v2, v4

    goto :goto_0

    .line 220
    :cond_0
    new-array v2, v3, [I

    sget v3, Lcom/google/android/setupdesign/R$attr;->sudNonActionableItemBackground:I

    aput v3, v2, v4

    .line 217
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 221
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 222
    .local v2, "middleBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 223
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

    .line 227
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->getItem(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object v0

    .line 228
    .local v0, "item":Lcom/google/android/setupdesign/items/IItem;
    nop

    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 232
    invoke-interface {v0}, Lcom/google/android/setupdesign/items/IItem;->isActionable()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 233
    new-array v2, v3, [I

    sget v3, Lcom/google/android/setupdesign/R$attr;->sudItemBackgroundSingle:I

    aput v3, v2, v4

    goto :goto_0

    .line 234
    :cond_0
    new-array v2, v3, [I

    sget v3, Lcom/google/android/setupdesign/R$attr;->sudNonActionableItemBackgroundSingle:I

    aput v3, v2, v4

    .line 231
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 235
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 236
    .local v2, "singleBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 237
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

    .line 249
    if-eqz p1, :cond_1

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->getItem(I)Lcom/google/android/setupdesign/items/IItem;

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

    .line 253
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-eq p1, v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->getItem(I)Lcom/google/android/setupdesign/items/IItem;

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

    .line 363
    nop

    .line 364
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 365
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 366
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 367
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    return-void
.end method

.method private shouldApplyAdditionalMargin()Z
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    instance-of v1, v0, Lcom/google/android/setupdesign/view/HeaderRecyclerView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/setupdesign/view/HeaderRecyclerView;

    .line 357
    .local v0, "headerRecyclerView":Lcom/google/android/setupdesign/view/HeaderRecyclerView;
    invoke-virtual {v0}, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->shouldApplyAdditionalMargin()Z

    move-result v1

    return v1

    .line 359
    .end local v0    # "headerRecyclerView":Lcom/google/android/setupdesign/view/HeaderRecyclerView;
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

    .line 348
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->shouldApplyAdditionalMargin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-static {p1}, Lcom/google/android/setupdesign/util/ItemStyler;->applyPartnerCustomizationLayoutMarginStyle(Landroid/view/View;)V

    goto :goto_0

    .line 351
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->resetMarginStartEnd(Landroid/view/View;)V

    .line 353
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

    .line 422
    iget-object v0, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->itemHierarchy:Lcom/google/android/setupdesign/items/ItemHierarchy;

    invoke-interface {v0, p1}, Lcom/google/android/setupdesign/items/ItemHierarchy;->findItemById(I)Lcom/google/android/setupdesign/items/ItemHierarchy;

    move-result-object v0

    return-object v0
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

    .line 105
    iget-object v0, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->itemHierarchy:Lcom/google/android/setupdesign/items/ItemHierarchy;

    invoke-interface {v0, p1}, Lcom/google/android/setupdesign/items/ItemHierarchy;->getItemAt(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->itemHierarchy:Lcom/google/android/setupdesign/items/ItemHierarchy;

    invoke-interface {v0}, Lcom/google/android/setupdesign/items/ItemHierarchy;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 110
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->getItem(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object v0

    .line 111
    .local v0, "mItem":Lcom/google/android/setupdesign/items/IItem;
    instance-of v1, v0, Lcom/google/android/setupdesign/items/AbstractItem;

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    .line 112
    move-object v1, v0

    check-cast v1, Lcom/google/android/setupdesign/items/AbstractItem;

    invoke-virtual {v1}, Lcom/google/android/setupdesign/items/AbstractItem;->getId()I

    move-result v1

    .line 113
    .local v1, "id":I
    if-lez v1, :cond_0

    int-to-long v2, v1

    :cond_0
    return-wide v2

    .line 115
    .end local v1    # "id":I
    :cond_1
    return-wide v2
.end method

.method public getItemViewType(I)I
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

    .line 374
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->getItem(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object v0

    .line 375
    .local v0, "item":Lcom/google/android/setupdesign/items/IItem;
    invoke-interface {v0}, Lcom/google/android/setupdesign/items/IItem;->getLayoutResource()I

    move-result v1

    return v1
.end method

.method public getRootItemHierarchy()Lcom/google/android/setupdesign/items/ItemHierarchy;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->itemHierarchy:Lcom/google/android/setupdesign/items/ItemHierarchy;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 47
    check-cast p1, Lcom/google/android/setupdesign/items/ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->onBindViewHolder(Lcom/google/android/setupdesign/items/ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/android/setupdesign/items/ItemViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/google/android/setupdesign/items/ItemViewHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 328
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->getItem(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object v0

    .line 329
    .local v0, "item":Lcom/google/android/setupdesign/items/IItem;
    invoke-interface {v0}, Lcom/google/android/setupdesign/items/IItem;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/setupdesign/items/ItemViewHolder;->setEnabled(Z)V

    .line 330
    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/items/ItemViewHolder;->setItem(Lcom/google/android/setupdesign/items/IItem;)V

    .line 331
    invoke-virtual {p1}, Lcom/google/android/setupdesign/items/ItemViewHolder;->isRecyclable()Z

    move-result v1

    invoke-interface {v0}, Lcom/google/android/setupdesign/items/IItem;->isRecyclable()Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 332
    invoke-interface {v0}, Lcom/google/android/setupdesign/items/IItem;->isRecyclable()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/setupdesign/items/ItemViewHolder;->setIsRecyclable(Z)V

    .line 335
    :cond_0
    iget-object v1, p1, Lcom/google/android/setupdesign/items/ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    iget-object v1, p1, Lcom/google/android/setupdesign/items/ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1, p2}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->updateBackground(Landroid/view/View;I)V

    .line 337
    iget-object v1, p1, Lcom/google/android/setupdesign/items/ItemViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->updateMargin(Landroid/view/View;)V

    .line 339
    :cond_1
    iget-object v1, p1, Lcom/google/android/setupdesign/items/ItemViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/google/android/setupdesign/items/IItem;->onBindView(Landroid/view/View;)V

    .line 340
    return-void
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

    .line 380
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->notifyDataSetChanged()V

    .line 381
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/setupdesign/items/ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/setupdesign/items/ItemViewHolder;
    .locals 11
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 127
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 128
    .local v2, "view":Landroid/view/View;
    new-instance v3, Lcom/google/android/setupdesign/items/ItemViewHolder;

    invoke-direct {v3, v2}, Lcom/google/android/setupdesign/items/ItemViewHolder;-><init>(Landroid/view/View;)V

    .line 129
    .local v3, "viewHolder":Lcom/google/android/setupdesign/items/ItemViewHolder;
    const/4 v4, 0x0

    .line 130
    .local v4, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 131
    .local v5, "viewTag":Ljava/lang/Object;
    const-string v6, "noBackground"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 132
    nop

    .line 133
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/google/android/setupdesign/R$styleable;->SudRecyclerItemAdapter:[I

    invoke-virtual {v6, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 134
    .local v6, "typedArray":Landroid/content/res/TypedArray;
    sget v7, Lcom/google/android/setupdesign/R$styleable;->SudRecyclerItemAdapter_android_selectableItemBackground:I

    .line 135
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 137
    .local v7, "selectableItemBackground":Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_0

    .line 138
    sget v8, Lcom/google/android/setupdesign/R$styleable;->SudRecyclerItemAdapter_selectableItemBackground:I

    .line 139
    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 142
    if-nez v4, :cond_2

    .line 145
    iget-boolean v8, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->applyPartnerHeavyThemeResource:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->useFullDynamicColor:Z

    if-nez v8, :cond_1

    .line 146
    nop

    .line 147
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v8

    .line 148
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v10, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_BACKGROUND_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v8, v9, v10}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v8

    .line 149
    .local v8, "color":I
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 150
    .end local v4    # "background":Landroid/graphics/drawable/Drawable;
    .end local v8    # "color":I
    .local v9, "background":Landroid/graphics/drawable/Drawable;
    move-object v4, v9

    goto :goto_0

    .line 151
    .end local v9    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    sget v8, Lcom/google/android/setupdesign/R$styleable;->SudRecyclerItemAdapter_android_colorBackground:I

    .line 152
    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 156
    :cond_2
    :goto_0
    if-eqz v7, :cond_4

    if-nez v4, :cond_3

    goto :goto_1

    .line 165
    :cond_3
    const/4 v8, 0x2

    new-array v8, v8, [Landroid/graphics/drawable/Drawable;

    aput-object v4, v8, v1

    const/4 v1, 0x1

    aput-object v7, v8, v1

    .line 166
    .local v8, "layers":[Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$PatchedLayerDrawable;

    invoke-direct {v1, v8}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$PatchedLayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 157
    .end local v8    # "layers":[Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot resolve required attributes. selectableItemBackground="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " background="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "RecyclerItemAdapter"

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_2
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    .end local v6    # "typedArray":Landroid/content/res/TypedArray;
    .end local v7    # "selectableItemBackground":Landroid/graphics/drawable/Drawable;
    :cond_5
    new-instance v1, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;

    invoke-direct {v1, p0, v3}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;-><init>(Lcom/google/android/setupdesign/items/RecyclerItemAdapter;Lcom/google/android/setupdesign/items/ItemViewHolder;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    return-object v3
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

    .line 385
    invoke-virtual {p0, p2, p3}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->notifyItemRangeChanged(II)V

    .line 386
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

    .line 390
    invoke-virtual {p0, p2, p3}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->notifyItemRangeInserted(II)V

    .line 391
    return-void
.end method

.method public onItemRangeMoved(Lcom/google/android/setupdesign/items/ItemHierarchy;III)V
    .locals 2
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

    .line 398
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 399
    invoke-virtual {p0, p2, p3}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->notifyItemMoved(II)V

    goto :goto_0

    .line 406
    :cond_0
    const-string v0, "RecyclerItemAdapter"

    const-string v1, "onItemRangeMoved with more than one item"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->notifyDataSetChanged()V

    .line 409
    :goto_0
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

    .line 413
    invoke-virtual {p0, p2, p3}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->notifyItemRangeRemoved(II)V

    .line 414
    return-void
.end method

.method public setGroupCornerRadiusExternal(F)V
    .locals 1
    .param p1, "groupCornerRadius"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupCornerRadius"
        }
    .end annotation

    .line 261
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->groupCornerRadiusExternal:Ljava/lang/Float;

    .line 262
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/google/android/setupdesign/items/RecyclerItemAdapter$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/setupdesign/items/RecyclerItemAdapter$OnItemSelectedListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 436
    iput-object p1, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->listener:Lcom/google/android/setupdesign/items/RecyclerItemAdapter$OnItemSelectedListener;

    .line 437
    return-void
.end method

.method public setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recyclerView"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 97
    return-void
.end method

.method public updateBackground(Landroid/view/View;I)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "position"
        }
    .end annotation

    .line 265
    const-string v0, "noBackground"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    return-void

    .line 268
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->getItem(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/setupdesign/items/IItem;->isGroupDivider()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->groupCornerRadiusExternal:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->groupCornerRadiusExternal:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 275
    :cond_2
    nop

    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_GROUP_CORNER_RADIUS:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v0

    :goto_0
    nop

    .line 276
    .local v0, "groupCornerRadius":F
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->getCornerRadius(Landroid/content/Context;)F

    move-result v1

    .line 277
    .local v1, "cornerRadius":F
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 279
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_8

    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_8

    .line 280
    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 281
    .local v3, "clickDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .line 282
    .local v6, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 285
    .local v7, "background":Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {p0, p2}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->isFirstItemOfGroup(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {p0, p2}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->isLastItemOfGroup(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {p0, v8, p2}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->getSingleBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_1

    .line 287
    :cond_3
    invoke-direct {p0, p2}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->isFirstItemOfGroup(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {p0, v8, p2}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->getFirstBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_1

    .line 289
    :cond_4
    invoke-direct {p0, p2}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->isLastItemOfGroup(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {p0, v8, p2}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->getLastBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_1

    .line 292
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {p0, v8, p2}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->getMiddleBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 295
    :goto_1
    instance-of v8, v6, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v8, :cond_8

    .line 296
    move v8, v1

    .line 297
    .local v8, "topCornerRadius":F
    move v9, v1

    .line 298
    .local v9, "bottomCornerRadius":F
    invoke-direct {p0, p2}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->isFirstItemOfGroup(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 299
    move v8, v0

    .line 301
    :cond_6
    invoke-direct {p0, p2}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->isLastItemOfGroup(I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 302
    move v9, v0

    .line 304
    :cond_7
    move-object v7, v6

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 305
    const/16 v10, 0x8

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v8, v10, v11

    aput v8, v10, v5

    aput v8, v10, v4

    const/4 v12, 0x3

    aput v8, v10, v12

    const/4 v12, 0x4

    aput v9, v10, v12

    const/4 v12, 0x5

    aput v9, v10, v12

    const/4 v12, 0x6

    aput v9, v10, v12

    const/4 v12, 0x7

    aput v9, v10, v12

    invoke-virtual {v7, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 316
    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v7, v4, v11

    aput-object v3, v4, v5

    .line 317
    .local v4, "layers":[Landroid/graphics/drawable/Drawable;
    new-instance v10, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$PatchedLayerDrawable;

    invoke-direct {v10, v4}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$PatchedLayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    nop

    .line 319
    invoke-virtual {p1, v5}, Landroid/view/View;->setClipToOutline(Z)V

    .line 320
    sget-object v5, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p1, v5}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 324
    .end local v3    # "clickDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "layers":[Landroid/graphics/drawable/Drawable;
    .end local v6    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "background":Landroid/graphics/drawable/GradientDrawable;
    .end local v8    # "topCornerRadius":F
    .end local v9    # "bottomCornerRadius":F
    :cond_8
    return-void
.end method
