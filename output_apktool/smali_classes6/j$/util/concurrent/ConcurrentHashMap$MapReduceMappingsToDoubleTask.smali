.class final Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;
.super Lj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceMappingsToDoubleTask"
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
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final basis:D

.field nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/DoubleBinaryOperator;

.field result:D

.field rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/ToDoubleBiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToDoubleBiFunction<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;Ljava/util/function/ToDoubleBiFunction;DLjava/util/function/DoubleBinaryOperator;)V
    .locals 1
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .param p8, "basis"    # D
    .param p10, "reducer"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/concurrent/ConcurrentHashMap$BulkTask<",
            "TK;TV;*>;III[",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<",
            "TK;TV;>;",
            "Ljava/util/function/ToDoubleBiFunction<",
            "-TK;-TV;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")V"
        }
    .end annotation

    .line 5913
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    .local p1, "p":Lj$/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    .local p7, "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
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
    iput-object p6, p1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    .line 5914
    iput-object p7, p1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->transformer:Ljava/util/function/ToDoubleBiFunction;

    .line 5915
    iput-wide p8, p1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->basis:D

    iput-object p10, p1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->reducer:Ljava/util/function/DoubleBinaryOperator;

    .line 5916
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 12

    .line 5921
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->transformer:Ljava/util/function/ToDoubleBiFunction;

    move-object v8, v0

    .local v8, "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    if-eqz v0, :cond_5

    iget-object v11, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->reducer:Ljava/util/function/DoubleBinaryOperator;

    move-object v0, v11

    .local v11, "reducer":Ljava/util/function/DoubleBinaryOperator;
    if-eqz v0, :cond_4

    .line 5923
    iget-wide v9, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->basis:D

    .line 5924
    .local v9, "r":D
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->baseIndex:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->batch:I

    if-lez v1, :cond_1

    iget v5, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->baseLimit:I

    move v1, v5

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    .local v4, "h":I
    if-le v1, v0, :cond_0

    .line 5926
    invoke-virtual {p0, v2}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->addToPendingCount(I)V

    .line 5927
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    iget v3, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->batch:I

    iput v4, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->baseLimit:I

    iget-object v6, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;Ljava/util/function/ToDoubleBiFunction;DLjava/util/function/DoubleBinaryOperator;)V

    iput-object v1, v2, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    .line 5929
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    .line 5924
    :cond_0
    move-object v2, p0

    goto :goto_1

    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_1
    move-object v2, p0

    .line 5931
    .end local v0    # "i":I
    :goto_1
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_2

    .line 5932
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v3, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v8, v0, v3}, Ljava/util/function/ToDoubleBiFunction;->applyAsDouble(Ljava/lang/Object;Ljava/lang/Object;)D

    move-result-wide v3

    invoke-interface {v11, v9, v10, v3, v4}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v9

    goto :goto_1

    .line 5933
    .end local v1    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    iput-wide v9, v2, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->result:D

    .line 5935
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    .local v0, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_2
    if-eqz v0, :cond_6

    .line 5938
    move-object v1, v0

    check-cast v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    .line 5939
    .local v1, "t":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    iget-object v3, v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    .line 5940
    .local v3, "s":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    :goto_3
    if-eqz v3, :cond_3

    .line 5941
    iget-wide v4, v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->result:D

    iget-wide v6, v3, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->result:D

    invoke-interface {v11, v4, v5, v6, v7}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v4

    iput-wide v4, v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->result:D

    .line 5942
    iget-object v4, v3, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    iput-object v4, v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    move-object v3, v4

    goto :goto_3

    .line 5935
    .end local v1    # "t":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    .end local v3    # "s":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    goto :goto_2

    .line 5921
    .end local v0    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v9    # "r":D
    :cond_4
    move-object v2, p0

    goto :goto_4

    .end local v11    # "reducer":Ljava/util/function/DoubleBinaryOperator;
    :cond_5
    move-object v2, p0

    .line 5946
    :cond_6
    :goto_4
    return-void
.end method

.method public final getRawResult()Ljava/lang/Double;
    .locals 2

    .line 5917
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    iget-wide v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->result:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    .line 5899
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask<TK;TV;>;"
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->getRawResult()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
