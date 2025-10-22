.class final Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;
.super Lj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceValuesTask"
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
.field nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask<",
            "TK;TV;TU;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "-TU;-TU;+TU;>;"
        }
    .end annotation
.end field

.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask<",
            "TK;TV;TU;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-TV;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V
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
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask<",
            "TK;TV;TU;>;",
            "Ljava/util/function/Function<",
            "-TV;+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TU;-TU;+TU;>;)V"
        }
    .end annotation

    .line 5599
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask<TK;TV;TU;>;"
    .local p1, "p":Lj$/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask<TK;TV;TU;>;"
    .local p7, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .local p8, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
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
    iput-object p6, p1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;

    .line 5600
    iput-object p7, p1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->transformer:Ljava/util/function/Function;

    .line 5601
    iput-object p8, p1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->reducer:Ljava/util/function/BiFunction;

    .line 5602
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 10

    .line 5607
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask<TK;TV;TU;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->transformer:Ljava/util/function/Function;

    move-object v8, v0

    .local v8, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    if-eqz v0, :cond_9

    iget-object v9, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->reducer:Ljava/util/function/BiFunction;

    move-object v0, v9

    .local v9, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    if-eqz v0, :cond_8

    .line 5609
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->baseIndex:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->batch:I

    if-lez v1, :cond_1

    iget v5, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->baseLimit:I

    move v1, v5

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    .local v4, "h":I
    if-le v1, v0, :cond_0

    .line 5611
    invoke-virtual {p0, v2}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->addToPendingCount(I)V

    .line 5612
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;

    iget v3, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->batch:I

    iput v4, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->baseLimit:I

    iget-object v6, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    iput-object v1, v2, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;

    .line 5614
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    .line 5609
    :cond_0
    move-object v2, p0

    goto :goto_1

    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_1
    move-object v2, p0

    .line 5616
    .end local v0    # "i":I
    :goto_1
    const/4 v0, 0x0

    .line 5617
    .local v0, "r":Ljava/lang/Object;, "TU;"
    :goto_2
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v3, v1

    .local v3, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_4

    .line 5619
    iget-object v1, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v8, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    .local v4, "u":Ljava/lang/Object;, "TU;"
    if-eqz v1, :cond_3

    .line 5620
    if-nez v0, :cond_2

    move-object v1, v4

    goto :goto_3

    :cond_2
    invoke-interface {v9, v0, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_3
    move-object v0, v1

    .line 5621
    .end local v4    # "u":Ljava/lang/Object;, "TU;"
    :cond_3
    goto :goto_2

    .line 5622
    .end local v3    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4
    iput-object v0, v2, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->result:Ljava/lang/Object;

    .line 5624
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    .local v1, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_4
    if-eqz v1, :cond_a

    .line 5627
    move-object v3, v1

    check-cast v3, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;

    .line 5628
    .local v3, "t":Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask<TK;TV;TU;>;"
    iget-object v4, v3, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;

    .line 5629
    .local v4, "s":Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask<TK;TV;TU;>;"
    :goto_5
    if-eqz v4, :cond_7

    .line 5631
    iget-object v5, v4, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->result:Ljava/lang/Object;

    move-object v6, v5

    .local v6, "sr":Ljava/lang/Object;, "TU;"
    if-eqz v5, :cond_6

    .line 5632
    iget-object v5, v3, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->result:Ljava/lang/Object;

    move-object v7, v5

    .local v7, "tr":Ljava/lang/Object;, "TU;"
    if-nez v5, :cond_5

    move-object v5, v6

    goto :goto_6

    .line 5633
    :cond_5
    invoke-interface {v9, v7, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_6
    iput-object v5, v3, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->result:Ljava/lang/Object;

    .line 5634
    .end local v7    # "tr":Ljava/lang/Object;, "TU;"
    :cond_6
    iget-object v5, v4, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;

    iput-object v5, v3, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;

    move-object v4, v5

    .line 5635
    .end local v6    # "sr":Ljava/lang/Object;, "TU;"
    goto :goto_5

    .line 5624
    .end local v3    # "t":Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask<TK;TV;TU;>;"
    .end local v4    # "s":Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask<TK;TV;TU;>;"
    :cond_7
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    goto :goto_4

    .line 5607
    .end local v0    # "r":Ljava/lang/Object;, "TU;"
    .end local v1    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_8
    move-object v2, p0

    goto :goto_7

    .end local v9    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    :cond_9
    move-object v2, p0

    .line 5638
    :cond_a
    :goto_7
    return-void
.end method

.method public final getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 5603
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask<TK;TV;TU;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->result:Ljava/lang/Object;

    return-object v0
.end method
