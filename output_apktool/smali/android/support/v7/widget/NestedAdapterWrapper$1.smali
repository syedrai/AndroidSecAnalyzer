.class Landroid/support/v7/widget/NestedAdapterWrapper$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "NestedAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/NestedAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/NestedAdapterWrapper;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/NestedAdapterWrapper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/NestedAdapterWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 47
    iput-object p1, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 50
    iget-object v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    iget-object v1, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    iget-object v1, v1, Landroid/support/v7/widget/NestedAdapterWrapper;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/NestedAdapterWrapper;->mCachedItemCount:I

    .line 51
    iget-object v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    iget-object v0, v0, Landroid/support/v7/widget/NestedAdapterWrapper;->mCallback:Landroid/support/v7/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/NestedAdapterWrapper$Callback;->onChanged(Landroid/support/v7/widget/NestedAdapterWrapper;)V

    .line 52
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 56
    iget-object v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    iget-object v0, v0, Landroid/support/v7/widget/NestedAdapterWrapper;->mCallback:Landroid/support/v7/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/support/v7/widget/NestedAdapterWrapper$Callback;->onItemRangeChanged(Landroid/support/v7/widget/NestedAdapterWrapper;IILjava/lang/Object;)V

    .line 62
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    iget-object v0, v0, Landroid/support/v7/widget/NestedAdapterWrapper;->mCallback:Landroid/support/v7/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/support/v7/widget/NestedAdapterWrapper$Callback;->onItemRangeChanged(Landroid/support/v7/widget/NestedAdapterWrapper;IILjava/lang/Object;)V

    .line 73
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 77
    iget-object v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    iget v1, v0, Landroid/support/v7/widget/NestedAdapterWrapper;->mCachedItemCount:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/support/v7/widget/NestedAdapterWrapper;->mCachedItemCount:I

    .line 78
    iget-object v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    iget-object v0, v0, Landroid/support/v7/widget/NestedAdapterWrapper;->mCallback:Landroid/support/v7/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v7/widget/NestedAdapterWrapper$Callback;->onItemRangeInserted(Landroid/support/v7/widget/NestedAdapterWrapper;II)V

    .line 82
    iget-object v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    iget v0, v0, Landroid/support/v7/widget/NestedAdapterWrapper;->mCachedItemCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    iget-object v0, v0, Landroid/support/v7/widget/NestedAdapterWrapper;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 83
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getStateRestorationPolicy()Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    iget-object v0, v0, Landroid/support/v7/widget/NestedAdapterWrapper;->mCallback:Landroid/support/v7/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/NestedAdapterWrapper$Callback;->onStateRestorationPolicyChanged(Landroid/support/v7/widget/NestedAdapterWrapper;)V

    .line 86
    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 2
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .line 104
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "moving more than 1 item is not supported in RecyclerView"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 106
    iget-object v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    iget-object v0, v0, Landroid/support/v7/widget/NestedAdapterWrapper;->mCallback:Landroid/support/v7/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v7/widget/NestedAdapterWrapper$Callback;->onItemRangeMoved(Landroid/support/v7/widget/NestedAdapterWrapper;II)V

    .line 111
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 90
    iget-object v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    iget v1, v0, Landroid/support/v7/widget/NestedAdapterWrapper;->mCachedItemCount:I

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/support/v7/widget/NestedAdapterWrapper;->mCachedItemCount:I

    .line 91
    iget-object v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    iget-object v0, v0, Landroid/support/v7/widget/NestedAdapterWrapper;->mCallback:Landroid/support/v7/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v7/widget/NestedAdapterWrapper$Callback;->onItemRangeRemoved(Landroid/support/v7/widget/NestedAdapterWrapper;II)V

    .line 96
    iget-object v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    iget v0, v0, Landroid/support/v7/widget/NestedAdapterWrapper;->mCachedItemCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    iget-object v0, v0, Landroid/support/v7/widget/NestedAdapterWrapper;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 97
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getStateRestorationPolicy()Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;

    if-ne v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    iget-object v0, v0, Landroid/support/v7/widget/NestedAdapterWrapper;->mCallback:Landroid/support/v7/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/NestedAdapterWrapper$Callback;->onStateRestorationPolicyChanged(Landroid/support/v7/widget/NestedAdapterWrapper;)V

    .line 100
    :cond_0
    return-void
.end method

.method public onStateRestorationPolicyChanged()V
    .locals 2

    .line 115
    iget-object v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    iget-object v0, v0, Landroid/support/v7/widget/NestedAdapterWrapper;->mCallback:Landroid/support/v7/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Landroid/support/v7/widget/NestedAdapterWrapper$1;->this$0:Landroid/support/v7/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/NestedAdapterWrapper$Callback;->onStateRestorationPolicyChanged(Landroid/support/v7/widget/NestedAdapterWrapper;)V

    .line 118
    return-void
.end method
