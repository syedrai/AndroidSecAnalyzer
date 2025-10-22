.class Landroid/support/v7/widget/NestedAdapterWrapper;
.super Ljava/lang/Object;
.source "NestedAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/NestedAdapterWrapper$Callback;
    }
.end annotation


# instance fields
.field public final adapter:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapterObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field mCachedItemCount:I

.field final mCallback:Landroid/support/v7/widget/NestedAdapterWrapper$Callback;

.field private final mStableIdLookup:Landroid/support/v7/widget/StableIdStorage$StableIdLookup;

.field private final mViewTypeLookup:Landroid/support/v7/widget/ViewTypeStorage$ViewTypeLookup;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/NestedAdapterWrapper$Callback;Landroid/support/v7/widget/ViewTypeStorage;Landroid/support/v7/widget/StableIdStorage$StableIdLookup;)V
    .locals 2
    .param p2, "callback"    # Landroid/support/v7/widget/NestedAdapterWrapper$Callback;
    .param p3, "viewTypeStorage"    # Landroid/support/v7/widget/ViewTypeStorage;
    .param p4, "stableIdLookup"    # Landroid/support/v7/widget/StableIdStorage$StableIdLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;",
            "Landroid/support/v7/widget/NestedAdapterWrapper$Callback;",
            "Landroid/support/v7/widget/ViewTypeStorage;",
            "Landroid/support/v7/widget/StableIdStorage$StableIdLookup;",
            ")V"
        }
    .end annotation

    .line 125
    .local p1, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/support/v7/widget/NestedAdapterWrapper$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/NestedAdapterWrapper$1;-><init>(Landroid/support/v7/widget/NestedAdapterWrapper;)V

    iput-object v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper;->mAdapterObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 126
    iput-object p1, p0, Landroid/support/v7/widget/NestedAdapterWrapper;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 127
    iput-object p2, p0, Landroid/support/v7/widget/NestedAdapterWrapper;->mCallback:Landroid/support/v7/widget/NestedAdapterWrapper$Callback;

    .line 128
    invoke-interface {p3, p0}, Landroid/support/v7/widget/ViewTypeStorage;->createViewTypeWrapper(Landroid/support/v7/widget/NestedAdapterWrapper;)Landroid/support/v7/widget/ViewTypeStorage$ViewTypeLookup;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper;->mViewTypeLookup:Landroid/support/v7/widget/ViewTypeStorage$ViewTypeLookup;

    .line 129
    iput-object p4, p0, Landroid/support/v7/widget/NestedAdapterWrapper;->mStableIdLookup:Landroid/support/v7/widget/StableIdStorage$StableIdLookup;

    .line 130
    iget-object v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper;->mCachedItemCount:I

    .line 131
    iget-object v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Landroid/support/v7/widget/NestedAdapterWrapper;->mAdapterObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 132
    return-void
.end method


# virtual methods
.method dispose()V
    .locals 2

    .line 136
    iget-object v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Landroid/support/v7/widget/NestedAdapterWrapper;->mAdapterObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 137
    iget-object v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper;->mViewTypeLookup:Landroid/support/v7/widget/ViewTypeStorage$ViewTypeLookup;

    invoke-interface {v0}, Landroid/support/v7/widget/ViewTypeStorage$ViewTypeLookup;->dispose()V

    .line 138
    return-void
.end method

.method getCachedItemCount()I
    .locals 1

    .line 141
    iget v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper;->mCachedItemCount:I

    return v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "localPosition"    # I

    .line 160
    iget-object v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    .line 161
    .local v0, "localItemId":J
    iget-object v2, p0, Landroid/support/v7/widget/NestedAdapterWrapper;->mStableIdLookup:Landroid/support/v7/widget/StableIdStorage$StableIdLookup;

    invoke-interface {v2, v0, v1}, Landroid/support/v7/widget/StableIdStorage$StableIdLookup;->localToGlobal(J)J

    move-result-wide v2

    return-wide v2
.end method

.method getItemViewType(I)I
    .locals 2
    .param p1, "localPosition"    # I

    .line 145
    iget-object v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper;->mViewTypeLookup:Landroid/support/v7/widget/ViewTypeStorage$ViewTypeLookup;

    iget-object v1, p0, Landroid/support/v7/widget/NestedAdapterWrapper;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v7/widget/ViewTypeStorage$ViewTypeLookup;->localToGlobal(I)I

    move-result v0

    return v0
.end method

.method onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "localPosition"    # I

    .line 156
    iget-object v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->bindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 157
    return-void
.end method

.method onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "globalViewType"    # I

    .line 151
    iget-object v0, p0, Landroid/support/v7/widget/NestedAdapterWrapper;->mViewTypeLookup:Landroid/support/v7/widget/ViewTypeStorage$ViewTypeLookup;

    invoke-interface {v0, p2}, Landroid/support/v7/widget/ViewTypeStorage$ViewTypeLookup;->globalToLocal(I)I

    move-result v0

    .line 152
    .local v0, "localType":I
    iget-object v1, p0, Landroid/support/v7/widget/NestedAdapterWrapper;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    return-object v1
.end method
