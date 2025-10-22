.class final Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;
.super Lj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReduceEntriesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/concurrent/ConcurrentHashMap$BulkTask<",
        "TK;TV;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field nextRight:Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field result:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field rights:Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;Ljava/util/function/BiFunction;)V
    .locals 1
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/concurrent/ConcurrentHashMap$BulkTask<",
            "TK;TV;*>;III[",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<",
            "TK;TV;>;",
            "Ljava/util/function/BiFunction<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 5497
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    .local p1, "p":Lj$/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    .local p7, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/util/Map$Entry<TK;TV;>;Ljava/util/Map$Entry<TK;TV;>;+Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct/range {p0 .. p5}, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "p":Lj$/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local v0, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "p":Lj$/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p3, "b":I
    .local p4, "i":I
    .local p5, "f":I
    iput-object p6, p1, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->nextRight:Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    .line 5498
    iput-object p7, p1, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->reducer:Ljava/util/function/BiFunction;

    .line 5499
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 9

    .line 5503
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->reducer:Ljava/util/function/BiFunction;

    move-object v8, v0

    .local v8, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/util/Map$Entry<TK;TV;>;Ljava/util/Map$Entry<TK;TV;>;+Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_7

    .line 5504
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->baseIndex:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->batch:I

    if-lez v1, :cond_1

    iget v5, p0, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->baseLimit:I

    move v1, v5

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    .local v4, "h":I
    if-le v1, v0, :cond_0

    .line 5506
    invoke-virtual {p0, v2}, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->addToPendingCount(I)V

    .line 5507
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    iget v3, p0, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->batch:I

    iput v4, p0, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->baseLimit:I

    iget-object v6, p0, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;Ljava/util/function/BiFunction;)V

    iput-object v1, v2, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    .line 5509
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    .line 5504
    :cond_0
    move-object v2, p0

    goto :goto_1

    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_1
    move-object v2, p0

    .line 5511
    .end local v0    # "i":I
    :goto_1
    const/4 v0, 0x0

    .line 5512
    .local v0, "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :goto_2
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v3, v1

    .local v3, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_3

    .line 5513
    if-nez v0, :cond_2

    move-object v1, v3

    goto :goto_3

    :cond_2
    invoke-interface {v8, v0, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :goto_3
    move-object v0, v1

    goto :goto_2

    .line 5514
    .end local v3    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3
    iput-object v0, v2, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    .line 5516
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    .local v1, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_4
    if-eqz v1, :cond_8

    .line 5519
    move-object v3, v1

    check-cast v3, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    .line 5520
    .local v3, "t":Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    iget-object v4, v3, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    .line 5521
    .local v4, "s":Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    :goto_5
    if-eqz v4, :cond_6

    .line 5523
    iget-object v5, v4, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    move-object v6, v5

    .local v6, "sr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v5, :cond_5

    .line 5524
    iget-object v5, v3, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    move-object v7, v5

    .local v7, "tr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_6

    .line 5525
    :cond_4
    invoke-interface {v8, v7, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    :goto_6
    iput-object v5, v3, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    .line 5526
    .end local v7    # "tr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_5
    iget-object v5, v4, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->nextRight:Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    iput-object v5, v3, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    move-object v4, v5

    .line 5527
    .end local v6    # "sr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_5

    .line 5516
    .end local v3    # "t":Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    .end local v4    # "s":Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    :cond_6
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    goto :goto_4

    .line 5503
    .end local v0    # "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_7
    move-object v2, p0

    .line 5530
    :cond_8
    return-void
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    .line 5487
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->getRawResult()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final getRawResult()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 5500
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    return-object v0
.end method
