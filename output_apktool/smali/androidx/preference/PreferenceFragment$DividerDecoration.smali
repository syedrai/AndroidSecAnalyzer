.class Landroidx/preference/PreferenceFragment$DividerDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DividerDecoration"
.end annotation


# instance fields
.field private mAllowDividerAfterLastItem:Z

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field final synthetic this$0:Landroidx/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Landroidx/preference/PreferenceFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 822
    iput-object p1, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->this$0:Landroidx/preference/PreferenceFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 820
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mAllowDividerAfterLastItem:Z

    .line 822
    return-void
.end method

.method private shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .line 851
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 852
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v1, v0, Landroidx/preference/PreferenceViewHolder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/preference/PreferenceViewHolder;

    .line 853
    invoke-virtual {v1}, Landroidx/preference/PreferenceViewHolder;->isDividerAllowedBelow()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 854
    .local v1, "dividerAllowedBelow":Z
    :goto_0
    if-nez v1, :cond_1

    .line 855
    return v2

    .line 857
    :cond_1
    iget-boolean v4, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mAllowDividerAfterLastItem:Z

    .line 858
    .local v4, "nextAllowed":Z
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 859
    .local v5, "index":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v3

    if-ge v5, v6, :cond_3

    .line 860
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p2, v6}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 861
    .local v6, "nextView":Landroid/view/View;
    invoke-virtual {p2, v6}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 862
    .local v7, "nextHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v8, v7, Landroidx/preference/PreferenceViewHolder;

    if-eqz v8, :cond_2

    move-object v8, v7

    check-cast v8, Landroidx/preference/PreferenceViewHolder;

    .line 863
    invoke-virtual {v8}, Landroidx/preference/PreferenceViewHolder;->isDividerAllowedAbove()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    nop

    :goto_1
    move v4, v2

    .line 865
    .end local v6    # "nextView":Landroid/view/View;
    .end local v7    # "nextHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    return v4
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 845
    invoke-direct {p0, p2, p3}, Landroidx/preference/PreferenceFragment$DividerDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    iget v0, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 848
    :cond_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 827
    iget-object v0, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 828
    return-void

    .line 830
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 831
    .local v0, "childCount":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    .line 832
    .local v1, "width":I
    const/4 v2, 0x0

    .local v2, "childViewIndex":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 833
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 834
    .local v3, "view":Landroid/view/View;
    invoke-direct {p0, v3, p2}, Landroidx/preference/PreferenceFragment$DividerDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 835
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 836
    .local v4, "top":I
    iget-object v5, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    add-int/2addr v6, v4

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v4, v1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 837
    iget-object v5, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 832
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "top":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 840
    .end local v2    # "childViewIndex":I
    :cond_2
    return-void
.end method

.method public setAllowDividerAfterLastItem(Z)V
    .locals 0
    .param p1, "allowDividerAfterLastItem"    # Z

    .line 884
    iput-boolean p1, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mAllowDividerAfterLastItem:Z

    .line 885
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 869
    if-eqz p1, :cond_0

    .line 870
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    goto :goto_0

    .line 872
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    .line 874
    :goto_0
    iput-object p1, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 875
    iget-object v0, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->this$0:Landroidx/preference/PreferenceFragment;

    iget-object v0, v0, Landroidx/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidateItemDecorations()V

    .line 876
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1
    .param p1, "dividerHeight"    # I

    .line 879
    iput p1, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    .line 880
    iget-object v0, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->this$0:Landroidx/preference/PreferenceFragment;

    iget-object v0, v0, Landroidx/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidateItemDecorations()V

    .line 881
    return-void
.end method
