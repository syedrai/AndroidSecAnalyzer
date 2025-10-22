.class public Lcom/google/android/setupdesign/items/IllustrationItem;
.super Lcom/google/android/setupdesign/items/Item;
.source "IllustrationItem.java"


# instance fields
.field private illustration:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/Item;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/Item;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    sget-object v0, Lcom/google/android/setupdesign/R$styleable;->SudIllustrationItem:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudIllustrationItem_android_drawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/items/IllustrationItem;->illustration:Landroid/graphics/drawable/Drawable;

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    return-void
.end method


# virtual methods
.method protected getDefaultLayoutResource()I
    .locals 1

    .line 56
    sget v0, Lcom/google/android/setupdesign/R$layout;->sud_illustration_item:I

    return v0
.end method

.method public getIllustration()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/android/setupdesign/items/IllustrationItem;->illustration:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public isGroupDivider()Z
    .locals 1

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
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

    .line 61
    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/IllustrationItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 63
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_item_illustration:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 64
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/IllustrationItem;->getIllustration()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public setIllustration(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "value"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/google/android/setupdesign/items/IllustrationItem;->illustration:Landroid/graphics/drawable/Drawable;

    .line 51
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/IllustrationItem;->notifyItemChanged()V

    .line 52
    return-void
.end method
