.class public final Landroid/support/v7/widget/ConcatAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ConcatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ConcatAdapter$Config;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "ConcatAdapter"


# instance fields
.field private final mController:Landroid/support/v7/widget/ConcatAdapterController;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ConcatAdapter$Config;Ljava/util/List;)V
    .locals 2
    .param p1, "config"    # Landroid/support/v7/widget/ConcatAdapter$Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/ConcatAdapter$Config;",
            "Ljava/util/List<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;>;)V"
        }
    .end annotation

    .line 127
    .local p2, "adapters":Ljava/util/List;, "Ljava/util/List<+Landroid/support/v7/widget/RecyclerView$Adapter<+Landroid/support/v7/widget/RecyclerView$ViewHolder;>;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 128
    new-instance v0, Landroid/support/v7/widget/ConcatAdapterController;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/ConcatAdapterController;-><init>(Landroid/support/v7/widget/ConcatAdapter;Landroid/support/v7/widget/ConcatAdapter$Config;)V

    iput-object v0, p0, Landroid/support/v7/widget/ConcatAdapter;->mController:Landroid/support/v7/widget/ConcatAdapterController;

    .line 129
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 130
    .local v1, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<+Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ConcatAdapter;->addAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)Z

    .line 131
    .end local v1    # "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<+Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ConcatAdapter;->mController:Landroid/support/v7/widget/ConcatAdapterController;

    invoke-virtual {v0}, Landroid/support/v7/widget/ConcatAdapterController;->hasStableIds()Z

    move-result v0

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 134
    return-void
.end method

.method public varargs constructor <init>(Landroid/support/v7/widget/ConcatAdapter$Config;[Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "config"    # Landroid/support/v7/widget/ConcatAdapter$Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/ConcatAdapter$Config;",
            "[",
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 105
    .local p2, "adapters":[Landroid/support/v7/widget/RecyclerView$Adapter;, "[Landroid/support/v7/widget/RecyclerView$Adapter<+Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ConcatAdapter;-><init>(Landroid/support/v7/widget/ConcatAdapter$Config;Ljava/util/List;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;>;)V"
        }
    .end annotation

    .line 115
    .local p1, "adapters":Ljava/util/List;, "Ljava/util/List<+Landroid/support/v7/widget/RecyclerView$Adapter<+Landroid/support/v7/widget/RecyclerView$ViewHolder;>;>;"
    sget-object v0, Landroid/support/v7/widget/ConcatAdapter$Config;->DEFAULT:Landroid/support/v7/widget/ConcatAdapter$Config;

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/ConcatAdapter;-><init>(Landroid/support/v7/widget/ConcatAdapter$Config;Ljava/util/List;)V

    .line 116
    return-void
.end method

.method public varargs constructor <init>([Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 91
    .local p1, "adapters":[Landroid/support/v7/widget/RecyclerView$Adapter;, "[Landroid/support/v7/widget/RecyclerView$Adapter<+Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    sget-object v0, Landroid/support/v7/widget/ConcatAdapter$Config;->DEFAULT:Landroid/support/v7/widget/ConcatAdapter$Config;

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/ConcatAdapter;-><init>(Landroid/support/v7/widget/ConcatAdapter$Config;[Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 92
    return-void
.end method


# virtual methods
.method public addAdapter(ILandroid/support/v7/widget/RecyclerView$Adapter;)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;)Z"
        }
    .end annotation

    .line 163
    .local p2, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<+Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    iget-object v0, p0, Landroid/support/v7/widget/ConcatAdapter;->mController:Landroid/support/v7/widget/ConcatAdapterController;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ConcatAdapterController;->addAdapter(ILandroid/support/v7/widget/RecyclerView$Adapter;)Z

    move-result v0

    return v0
.end method

.method public addAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;)Z"
        }
    .end annotation

    .line 147
    .local p1, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<+Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    iget-object v0, p0, Landroid/support/v7/widget/ConcatAdapter;->mController:Landroid/support/v7/widget/ConcatAdapterController;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ConcatAdapterController;->addAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)Z

    move-result v0

    return v0
.end method

.method public findRelativeAdapterPositionIn(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I
    .locals 1
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "localPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "I)I"
        }
    .end annotation

    .line 302
    .local p1, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<+Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    iget-object v0, p0, Landroid/support/v7/widget/ConcatAdapter;->mController:Landroid/support/v7/widget/ConcatAdapterController;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/ConcatAdapterController;->getLocalAdapterPosition(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    move-result v0

    return v0
.end method

.method public getAdapters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Landroid/support/v7/widget/ConcatAdapter;->mController:Landroid/support/v7/widget/ConcatAdapterController;

    invoke-virtual {v0}, Landroid/support/v7/widget/ConcatAdapterController;->getCopyOfAdapters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 239
    iget-object v0, p0, Landroid/support/v7/widget/ConcatAdapter;->mController:Landroid/support/v7/widget/ConcatAdapterController;

    invoke-virtual {v0}, Landroid/support/v7/widget/ConcatAdapterController;->getTotalCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 227
    iget-object v0, p0, Landroid/support/v7/widget/ConcatAdapter;->mController:Landroid/support/v7/widget/ConcatAdapterController;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ConcatAdapterController;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 179
    iget-object v0, p0, Landroid/support/v7/widget/ConcatAdapter;->mController:Landroid/support/v7/widget/ConcatAdapterController;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ConcatAdapterController;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getWrappedAdapterAndPosition(I)Landroid/util/Pair;
    .locals 1
    .param p1, "globalPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Landroid/support/v7/widget/ConcatAdapter;->mController:Landroid/support/v7/widget/ConcatAdapterController;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ConcatAdapterController;->getWrappedAdapterAndPosition(I)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method internalSetStateRestorationPolicy(Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;)V
    .locals 0
    .param p1, "strategy"    # Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 234
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->setStateRestorationPolicy(Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;)V

    .line 235
    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 264
    iget-object v0, p0, Landroid/support/v7/widget/ConcatAdapter;->mController:Landroid/support/v7/widget/ConcatAdapterController;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ConcatAdapterController;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 265
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 189
    iget-object v0, p0, Landroid/support/v7/widget/ConcatAdapter;->mController:Landroid/support/v7/widget/ConcatAdapterController;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ConcatAdapterController;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 190
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 184
    iget-object v0, p0, Landroid/support/v7/widget/ConcatAdapter;->mController:Landroid/support/v7/widget/ConcatAdapterController;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ConcatAdapterController;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 269
    iget-object v0, p0, Landroid/support/v7/widget/ConcatAdapter;->mController:Landroid/support/v7/widget/ConcatAdapterController;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ConcatAdapterController;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 270
    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 244
    iget-object v0, p0, Landroid/support/v7/widget/ConcatAdapter;->mController:Landroid/support/v7/widget/ConcatAdapterController;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ConcatAdapterController;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 249
    iget-object v0, p0, Landroid/support/v7/widget/ConcatAdapter;->mController:Landroid/support/v7/widget/ConcatAdapterController;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ConcatAdapterController;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 250
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 254
    iget-object v0, p0, Landroid/support/v7/widget/ConcatAdapter;->mController:Landroid/support/v7/widget/ConcatAdapterController;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ConcatAdapterController;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 255
    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 259
    iget-object v0, p0, Landroid/support/v7/widget/ConcatAdapter;->mController:Landroid/support/v7/widget/ConcatAdapterController;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ConcatAdapterController;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 260
    return-void
.end method

.method public removeAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;)Z"
        }
    .end annotation

    .line 174
    .local p1, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<+Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    iget-object v0, p0, Landroid/support/v7/widget/ConcatAdapter;->mController:Landroid/support/v7/widget/ConcatAdapterController;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ConcatAdapterController;->removeAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)Z

    move-result v0

    return v0
.end method

.method public setHasStableIds(Z)V
    .locals 2
    .param p1, "hasStableIds"    # Z

    .line 201
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Calling setHasStableIds is not allowed on the ConcatAdapter. Use the Config object passed in the constructor to control this behavior"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStateRestorationPolicy(Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;)V
    .locals 2
    .param p1, "strategy"    # Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 220
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Calling setStateRestorationPolicy is not allowed on the ConcatAdapter. This value is inferred from added adapters"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
