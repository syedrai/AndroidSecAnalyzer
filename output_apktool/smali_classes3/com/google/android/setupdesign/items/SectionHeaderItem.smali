.class public Lcom/google/android/setupdesign/items/SectionHeaderItem;
.super Lcom/google/android/setupdesign/items/Item;
.source "SectionHeaderItem.java"

# interfaces
.implements Lcom/google/android/setupdesign/items/Dividable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/Item;-><init>()V

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

    .line 49
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
.method protected getDefaultLayoutResource()I
    .locals 1

    .line 54
    sget v0, Lcom/google/android/setupdesign/R$layout;->sud_items_section_header:I

    return v0
.end method

.method public isDividerAllowedAbove()Z
    .locals 1

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public isDividerAllowedBelow()Z
    .locals 1

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public isGroupDivider()Z
    .locals 1

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
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

    .line 32
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_items_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 33
    .local v0, "label":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/SectionHeaderItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    sget v1, Lcom/google/android/setupdesign/R$id;->sud_items_summary:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 35
    .local v1, "summaryView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/SectionHeaderItem;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 36
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-direct {p0, v2}, Lcom/google/android/setupdesign/items/SectionHeaderItem;->hasSummary(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_0

    .line 37
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/SectionHeaderItem;->getViewId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setId(I)V

    .line 43
    sget v3, Lcom/google/android/setupdesign/R$id;->sud_items_icon_container:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/SectionHeaderItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 46
    return-void
.end method
