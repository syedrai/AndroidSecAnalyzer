.class public Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;
.super Ljava/lang/Object;
.source "AsyncListDiffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$ListListener;,
        Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$MainThreadExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final sMainThreadExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field final mConfig:Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$ListListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field mMainThreadExecutor:Ljava/util/concurrent/Executor;

.field mMaxScheduledGeneration:I

.field private mReadOnlyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mUpdateCallback:Landroid/support/v7/util/ListUpdateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 131
    new-instance v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$MainThreadExecutor;

    invoke-direct {v0}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$MainThreadExecutor;-><init>()V

    sput-object v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/util/ListUpdateCallback;Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;)V
    .locals 1
    .param p1, "listUpdateCallback"    # Landroid/support/v7/util/ListUpdateCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/ListUpdateCallback;",
            "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig<",
            "TT;>;)V"
        }
    .end annotation

    .line 178
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer<TT;>;"
    .local p2, "config":Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;, "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mListeners:Ljava/util/List;

    .line 195
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 179
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mUpdateCallback:Landroid/support/v7/util/ListUpdateCallback;

    .line 180
    iput-object p2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mConfig:Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    .line 181
    invoke-virtual {p2}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p2}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 184
    :cond_0
    sget-object v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 186
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/util/DiffUtil$ItemCallback;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$Adapter;",
            "Landroid/support/v7/util/DiffUtil$ItemCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 162
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer<TT;>;"
    .local p2, "diffCallback":Landroid/support/v7/util/DiffUtil$ItemCallback;, "Landroid/support/v7/util/DiffUtil$ItemCallback<TT;>;"
    new-instance v0, Landroid/support/v7/util/AdapterListUpdateCallback;

    invoke-direct {v0, p1}, Landroid/support/v7/util/AdapterListUpdateCallback;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    new-instance v1, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;

    invoke-direct {v1, p2}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;-><init>(Landroid/support/v7/util/DiffUtil$ItemCallback;)V

    .line 163
    invoke-virtual {v1}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->build()Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    move-result-object v1

    .line 162
    invoke-direct {p0, v0, v1}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;-><init>(Landroid/support/v7/util/ListUpdateCallback;Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;)V

    .line 164
    return-void
.end method

.method private onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 3
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

    .line 372
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer<TT;>;"
    .local p1, "previousList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$ListListener;

    .line 373
    .local v1, "listener":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$ListListener;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$ListListener<TT;>;"
    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    invoke-interface {v1, p1, v2}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$ListListener;->onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V

    .line 374
    .end local v1    # "listener":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$ListListener;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$ListListener<TT;>;"
    goto :goto_0

    .line 375
    :cond_0
    if-eqz p2, :cond_1

    .line 376
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 378
    :cond_1
    return-void
.end method


# virtual methods
.method public addListListener(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$ListListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$ListListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 389
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer<TT;>;"
    .local p1, "listener":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$ListListener;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$ListListener<TT;>;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    return-void
.end method

.method public getCurrentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 213
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer<TT;>;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    return-object v0
.end method

.method latchList(Ljava/util/List;Landroid/support/v7/util/DiffUtil$DiffResult;Ljava/lang/Runnable;)V
    .locals 2
    .param p2, "diffResult"    # Landroid/support/v7/util/DiffUtil$DiffResult;
    .param p3, "commitCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroid/support/v7/util/DiffUtil$DiffResult;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 361
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer<TT;>;"
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 362
    .local v0, "previousList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mList:Ljava/util/List;

    .line 364
    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 365
    iget-object v1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mUpdateCallback:Landroid/support/v7/util/ListUpdateCallback;

    invoke-virtual {p2, v1}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/util/ListUpdateCallback;)V

    .line 366
    invoke-direct {p0, v0, p3}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 367
    return-void
.end method

.method public removeListListener(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$ListListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$ListListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 400
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer<TT;>;"
    .local p1, "listener":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$ListListener;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$ListListener<TT;>;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 401
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

    .line 228
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer<TT;>;"
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method

.method public submitList(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 8
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

    .line 251
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer<TT;>;"
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mMaxScheduledGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mMaxScheduledGeneration:I

    move v5, v0

    .line 253
    .local v5, "runGeneration":I
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mList:Ljava/util/List;

    if-ne p1, v0, :cond_1

    .line 255
    if-eqz p2, :cond_0

    .line 256
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 258
    :cond_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 264
    .local v0, "previousList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 266
    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 267
    .local v2, "countRemoved":I
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mList:Ljava/util/List;

    .line 268
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 270
    iget-object v3, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mUpdateCallback:Landroid/support/v7/util/ListUpdateCallback;

    invoke-interface {v3, v1, v2}, Landroid/support/v7/util/ListUpdateCallback;->onRemoved(II)V

    .line 271
    invoke-direct {p0, v0, p2}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 272
    return-void

    .line 276
    .end local v2    # "countRemoved":I
    :cond_2
    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mList:Ljava/util/List;

    if-nez v2, :cond_3

    .line 277
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mList:Ljava/util/List;

    .line 278
    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 280
    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mUpdateCallback:Landroid/support/v7/util/ListUpdateCallback;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v1, v3}, Landroid/support/v7/util/ListUpdateCallback;->onInserted(II)V

    .line 281
    invoke-direct {p0, v0, p2}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 282
    return-void

    .line 285
    :cond_3
    iget-object v3, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mList:Ljava/util/List;

    .line 286
    .local v3, "oldList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mConfig:Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    invoke-virtual {v1}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;->getBackgroundThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    new-instance v1, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    .end local p1    # "newList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local p2    # "commitCallback":Ljava/lang/Runnable;
    .local v4, "newList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local v6, "commitCallback":Ljava/lang/Runnable;
    invoke-direct/range {v1 .. v6}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;-><init>(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V

    invoke-interface {v7, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 354
    return-void
.end method
