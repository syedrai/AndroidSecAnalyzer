.class public abstract Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "EditDeleteArrayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;,
        Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;,
        Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter<",
        "TT;>;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mOnDeleteButtonClickListener:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mOnEditButtonClickListener:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "entries",
            "onEditButtonClickListener",
            "onDeleteButtonClickListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener<",
            "TT;>;",
            "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter<TT;>;"
    .local p2, "entries":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p3, "onEditButtonClickListener":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener<TT;>;"
    .local p4, "onDeleteButtonClickListener":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 45
    iput-object p2, p0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->mEntries:Ljava/util/List;

    .line 46
    iput-object p3, p0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->mOnEditButtonClickListener:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;

    .line 47
    iput-object p4, p0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->mOnDeleteButtonClickListener:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;

    .line 48
    return-void
.end method


# virtual methods
.method protected abstract getDisplayName(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter<TT;>;"
    if-nez p2, :cond_0

    .line 55
    nop

    .line 56
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->edit_delete_row:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 57
    sget v0, Lcom/afwsamples/testdpc/R$id;->edit_row:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    sget v0, Lcom/afwsamples/testdpc/R$id;->delete_row:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    new-instance v0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;-><init>(Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter-IA;)V

    .line 61
    .local v0, "viewHolder":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder<TT;>;"
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    sget v1, Lcom/afwsamples/testdpc/R$id;->restriction_key:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;->restrictionKeyText:Landroid/widget/TextView;

    goto :goto_0

    .line 64
    .end local v0    # "viewHolder":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder<TT;>;"
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;

    .line 66
    .restart local v0    # "viewHolder":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder<TT;>;"
    :goto_0
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;->entry:Ljava/lang/Object;

    .line 67
    iget-object v1, v0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;->restrictionKeyText:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;->entry:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->getDisplayName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iput p1, v0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;->entryPosition:I

    .line 69
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 93
    .local p0, "this":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->mEntries:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->mEntries:Ljava/util/List;

    new-instance v1, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$1;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$1;-><init>(Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 103
    :cond_0
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 104
    return-void
.end method

.method public onClick(Landroid/view/View;)V
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

    .line 75
    .local p0, "this":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter<TT;>;"
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 76
    .local v0, "parentView":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;

    .line 80
    .local v1, "viewHolder":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder<TT;>;"
    iget-object v2, v1, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;->entry:Ljava/lang/Object;

    .line 81
    .local v2, "entry":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/afwsamples/testdpc/R$id;->edit_row:I

    if-ne v3, v4, :cond_1

    .line 82
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->mOnEditButtonClickListener:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;

    invoke-interface {v3, v2}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;->onEditButtonClick(Ljava/lang/Object;)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/afwsamples/testdpc/R$id;->delete_row:I

    if-ne v3, v4, :cond_2

    .line 84
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 85
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->mOnDeleteButtonClickListener:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;

    if-eqz v3, :cond_2

    .line 86
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->mOnDeleteButtonClickListener:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;

    invoke-interface {v3, v2}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;->onDeleteButtonClick(Ljava/lang/Object;)V

    .line 89
    :cond_2
    :goto_0
    return-void

    .line 77
    .end local v1    # "viewHolder":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder<TT;>;"
    .end local v2    # "entry":Ljava/lang/Object;, "TT;"
    :cond_3
    :goto_1
    return-void
.end method

.method public set(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 107
    .local p0, "this":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->notifyDataSetChanged()V

    .line 109
    return-void
.end method
