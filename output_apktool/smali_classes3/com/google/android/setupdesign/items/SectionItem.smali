.class public Lcom/google/android/setupdesign/items/SectionItem;
.super Lcom/google/android/setupdesign/items/ItemGroup;
.source "SectionItem.java"


# instance fields
.field private final header:Lcom/google/android/setupdesign/items/Item;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/ItemGroup;-><init>()V

    .line 34
    new-instance v0, Lcom/google/android/setupdesign/items/SectionHeaderItem;

    invoke-direct {v0}, Lcom/google/android/setupdesign/items/SectionHeaderItem;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/items/SectionItem;->header:Lcom/google/android/setupdesign/items/Item;

    .line 35
    iget-object v0, p0, Lcom/google/android/setupdesign/items/SectionItem;->header:Lcom/google/android/setupdesign/items/Item;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/items/Item;->setVisible(Z)V

    .line 36
    iget-object v0, p0, Lcom/google/android/setupdesign/items/SectionItem;->header:Lcom/google/android/setupdesign/items/Item;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/items/SectionItem;->addChild(Lcom/google/android/setupdesign/items/ItemHierarchy;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
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

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/ItemGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    sget-object v0, Lcom/google/android/setupdesign/R$styleable;->SudSectionItem:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 42
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudSectionItem_android_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 43
    .local v1, "headerText":Ljava/lang/CharSequence;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    new-instance v2, Lcom/google/android/setupdesign/items/SectionHeaderItem;

    invoke-direct {v2}, Lcom/google/android/setupdesign/items/SectionHeaderItem;-><init>()V

    iput-object v2, p0, Lcom/google/android/setupdesign/items/SectionItem;->header:Lcom/google/android/setupdesign/items/Item;

    .line 45
    iget-object v2, p0, Lcom/google/android/setupdesign/items/SectionItem;->header:Lcom/google/android/setupdesign/items/Item;

    invoke-virtual {v2, v1}, Lcom/google/android/setupdesign/items/Item;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v2, p0, Lcom/google/android/setupdesign/items/SectionItem;->header:Lcom/google/android/setupdesign/items/Item;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/setupdesign/items/Item;->setVisible(Z)V

    .line 47
    iget-object v2, p0, Lcom/google/android/setupdesign/items/SectionItem;->header:Lcom/google/android/setupdesign/items/Item;

    invoke-virtual {p0, v2}, Lcom/google/android/setupdesign/items/SectionItem;->addChild(Lcom/google/android/setupdesign/items/ItemHierarchy;)V

    .line 48
    return-void
.end method

.method private refreshHeader()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/google/android/setupdesign/items/SectionItem;->header:Lcom/google/android/setupdesign/items/Item;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/items/Item;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/SectionItem;->getCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/google/android/setupdesign/items/SectionItem;->header:Lcom/google/android/setupdesign/items/Item;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/items/Item;->setVisible(Z)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/SectionItem;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/setupdesign/items/SectionItem;->header:Lcom/google/android/setupdesign/items/Item;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/items/Item;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/google/android/setupdesign/items/SectionItem;->header:Lcom/google/android/setupdesign/items/Item;

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/items/Item;->setVisible(Z)V

    .line 91
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addChild(Lcom/google/android/setupdesign/items/ItemHierarchy;)V
    .locals 0
    .param p1, "child"    # Lcom/google/android/setupdesign/items/ItemHierarchy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 61
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/items/ItemGroup;->addChild(Lcom/google/android/setupdesign/items/ItemHierarchy;)V

    .line 62
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/SectionItem;->refreshHeader()V

    .line 63
    return-void
.end method

.method public getHeader()Lcom/google/android/setupdesign/items/Item;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/android/setupdesign/items/SectionItem;->header:Lcom/google/android/setupdesign/items/Item;

    return-object v0
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

    .line 73
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/setupdesign/items/ItemGroup;->onItemRangeInserted(Lcom/google/android/setupdesign/items/ItemHierarchy;II)V

    .line 74
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/SectionItem;->refreshHeader()V

    .line 75
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

    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/setupdesign/items/ItemGroup;->onItemRangeRemoved(Lcom/google/android/setupdesign/items/ItemHierarchy;II)V

    .line 68
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/SectionItem;->refreshHeader()V

    .line 69
    return-void
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "headerText"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "headerText"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/google/android/setupdesign/items/SectionItem;->header:Lcom/google/android/setupdesign/items/Item;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/items/Item;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/SectionItem;->refreshHeader()V

    .line 57
    return-void
.end method
