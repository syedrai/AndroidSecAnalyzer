.class public abstract Landroid/support/v7/recyclerview/extensions/ListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field final mDiffer:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mListener:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$ListListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$ListListener<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig<",
            "TT;>;)V"
        }
    .end annotation

    .line 114
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/ListAdapter;, "Landroid/support/v7/recyclerview/extensions/ListAdapter<TT;TVH;>;"
    .local p1, "config":Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;, "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 97
    new-instance v0, Landroid/support/v7/recyclerview/extensions/ListAdapter$1;

    invoke-direct {v0, p0}, Landroid/support/v7/recyclerview/extensions/ListAdapter$1;-><init>(Landroid/support/v7/recyclerview/extensions/ListAdapter;)V

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/ListAdapter;->mListener:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$ListListener;

    .line 115
    new-instance v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    new-instance v1, Landroid/support/v7/util/AdapterListUpdateCallback;

    invoke-direct {v1, p0}, Landroid/support/v7/util/AdapterListUpdateCallback;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-direct {v0, v1, p1}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;-><init>(Landroid/support/v7/util/ListUpdateCallback;Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;)V

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/ListAdapter;->mDiffer:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    .line 116
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/ListAdapter;->mDiffer:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    iget-object v1, p0, Landroid/support/v7/recyclerview/extensions/ListAdapter;->mListener:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$ListListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->addListListener(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$ListListener;)V

    .line 117
    return-void
.end method

.method protected constructor <init>(Landroid/support/v7/util/DiffUtil$ItemCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/DiffUtil$ItemCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 107
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/ListAdapter;, "Landroid/support/v7/recyclerview/extensions/ListAdapter<TT;TVH;>;"
    .local p1, "diffCallback":Landroid/support/v7/util/DiffUtil$ItemCallback;, "Landroid/support/v7/util/DiffUtil$ItemCallback<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 97
    new-instance v0, Landroid/support/v7/recyclerview/extensions/ListAdapter$1;

    invoke-direct {v0, p0}, Landroid/support/v7/recyclerview/extensions/ListAdapter$1;-><init>(Landroid/support/v7/recyclerview/extensions/ListAdapter;)V

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/ListAdapter;->mListener:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$ListListener;

    .line 108
    new-instance v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    new-instance v1, Landroid/support/v7/util/AdapterListUpdateCallback;

    invoke-direct {v1, p0}, Landroid/support/v7/util/AdapterListUpdateCallback;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    new-instance v2, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;

    invoke-direct {v2, p1}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;-><init>(Landroid/support/v7/util/DiffUtil$ItemCallback;)V

    .line 109
    invoke-virtual {v2}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->build()Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;-><init>(Landroid/support/v7/util/ListUpdateCallback;Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;)V

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/ListAdapter;->mDiffer:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    .line 110
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/ListAdapter;->mDiffer:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    iget-object v1, p0, Landroid/support/v7/recyclerview/extensions/ListAdapter;->mListener:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$ListListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->addListListener(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$ListListener;)V

    .line 111
    return-void
.end method


# virtual methods
.method public getCurrentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 172
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/ListAdapter;, "Landroid/support/v7/recyclerview/extensions/ListAdapter<TT;TVH;>;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/ListAdapter;->mDiffer:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    invoke-virtual {v0}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 150
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/ListAdapter;, "Landroid/support/v7/recyclerview/extensions/ListAdapter<TT;TVH;>;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/ListAdapter;->mDiffer:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    invoke-virtual {v0}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 155
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/ListAdapter;, "Landroid/support/v7/recyclerview/extensions/ListAdapter<TT;TVH;>;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/ListAdapter;->mDiffer:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    invoke-virtual {v0}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 188
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/ListAdapter;, "Landroid/support/v7/recyclerview/extensions/ListAdapter<TT;TVH;>;"
    .local p1, "previousList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "currentList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    return-void
.end method

.method public submitList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 128
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/ListAdapter;, "Landroid/support/v7/recyclerview/extensions/ListAdapter<TT;TVH;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/ListAdapter;->mDiffer:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    invoke-virtual {v0, p1}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->submitList(Ljava/util/List;)V

    .line 129
    return-void
.end method

.method public submitList(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 1
    .param p2, "commitCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 146
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/ListAdapter;, "Landroid/support/v7/recyclerview/extensions/ListAdapter<TT;TVH;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/ListAdapter;->mDiffer:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method
