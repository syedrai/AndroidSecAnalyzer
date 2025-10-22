.class final Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;
.super Lj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SearchKeysTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/concurrent/ConcurrentHashMap$BulkTask<",
        "TK;TV;TU;>;"
    }
.end annotation


# instance fields
.field final result:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TU;>;"
        }
    .end annotation
.end field

.field final searchFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-TK;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V
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
            "Ljava/util/function/Function<",
            "-TK;+TU;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TU;>;)V"
        }
    .end annotation

    .line 5224
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask<TK;TV;TU;>;"
    .local p1, "p":Lj$/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .local p7, "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TU;>;"
    invoke-direct/range {p0 .. p5}, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 5225
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
    iput-object p6, p1, Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;->searchFunction:Ljava/util/function/Function;

    iput-object p7, p1, Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5226
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 9

    .line 5231
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask<TK;TV;TU;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;->searchFunction:Ljava/util/function/Function;

    move-object v7, v0

    .local v7, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    if-eqz v0, :cond_4

    iget-object v8, p0, Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v0, v8

    .local v8, "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TU;>;"
    if-eqz v0, :cond_4

    .line 5233
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;->baseIndex:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;->batch:I

    if-lez v1, :cond_1

    iget v5, p0, Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;->baseLimit:I

    move v1, v5

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    .local v4, "h":I
    if-le v1, v0, :cond_1

    .line 5235
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5236
    return-void

    .line 5237
    :cond_0
    invoke-virtual {p0, v2}, Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;->addToPendingCount(I)V

    .line 5238
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;

    iget v3, p0, Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;->batch:I

    iput v4, p0, Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;->baseLimit:I

    iget-object v6, p0, Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 5240
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    .line 5242
    .end local v0    # "i":I
    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_1
    :goto_1
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 5245
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_2

    .line 5246
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;->propagateCompletion()V

    .line 5247
    goto :goto_2

    .line 5249
    :cond_2
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v7, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .local v2, "u":Ljava/lang/Object;, "TU;"
    if-eqz v0, :cond_3

    .line 5250
    const/4 v0, 0x0

    invoke-static {v8, v0, v2}, Lj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5251
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;->quietlyCompleteRoot()V

    goto :goto_2

    .line 5254
    .end local v1    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v2    # "u":Ljava/lang/Object;, "TU;"
    :cond_3
    goto :goto_1

    .line 5256
    .end local v8    # "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TU;>;"
    :cond_4
    :goto_2
    return-void
.end method

.method public final getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 5227
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask<TK;TV;TU;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
