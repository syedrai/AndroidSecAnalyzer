.class final Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;
.super Lj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceMappingsToIntTask"
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final basis:I

.field nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/IntBinaryOperator;

.field result:I

.field rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/ToIntBiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToIntBiFunction<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;Ljava/util/function/ToIntBiFunction;ILjava/util/function/IntBinaryOperator;)V
    .locals 1
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .param p8, "basis"    # I
    .param p9, "reducer"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/concurrent/ConcurrentHashMap$BulkTask<",
            "TK;TV;*>;III[",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<",
            "TK;TV;>;",
            "Ljava/util/function/ToIntBiFunction<",
            "-TK;-TV;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")V"
        }
    .end annotation

    .line 6313
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<TK;TV;>;"
    .local p1, "p":Lj$/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<TK;TV;>;"
    .local p7, "transformer":Ljava/util/function/ToIntBiFunction;, "Ljava/util/function/ToIntBiFunction<-TK;-TV;>;"
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
    iput-object p6, p1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    .line 6314
    iput-object p7, p1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->transformer:Ljava/util/function/ToIntBiFunction;

    .line 6315
    iput p8, p1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->basis:I

    iput-object p9, p1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    .line 6316
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 11

    .line 6321
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->transformer:Ljava/util/function/ToIntBiFunction;

    move-object v8, v0

    .local v8, "transformer":Ljava/util/function/ToIntBiFunction;, "Ljava/util/function/ToIntBiFunction<-TK;-TV;>;"
    if-eqz v0, :cond_5

    iget-object v10, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    move-object v0, v10

    .local v10, "reducer":Ljava/util/function/IntBinaryOperator;
    if-eqz v0, :cond_4

    .line 6323
    iget v9, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->basis:I

    .line 6324
    .local v9, "r":I
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->baseIndex:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->batch:I

    if-lez v1, :cond_1

    iget v5, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->baseLimit:I

    move v1, v5

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    .local v4, "h":I
    if-le v1, v0, :cond_0

    .line 6326
    invoke-virtual {p0, v2}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->addToPendingCount(I)V

    .line 6327
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    iget v3, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->batch:I

    iput v4, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->baseLimit:I

    iget-object v6, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;Ljava/util/function/ToIntBiFunction;ILjava/util/function/IntBinaryOperator;)V

    iput-object v1, v2, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    .line 6329
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    .line 6324
    :cond_0
    move-object v2, p0

    goto :goto_1

    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_1
    move-object v2, p0

    .line 6331
    .end local v0    # "i":I
    :goto_1
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_2

    .line 6332
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v3, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v8, v0, v3}, Ljava/util/function/ToIntBiFunction;->applyAsInt(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v10, v9, v0}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v9

    goto :goto_1

    .line 6333
    .end local v1    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    iput v9, v2, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->result:I

    .line 6335
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    .local v0, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_2
    if-eqz v0, :cond_6

    .line 6338
    move-object v1, v0

    check-cast v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    .line 6339
    .local v1, "t":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<TK;TV;>;"
    iget-object v3, v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    .line 6340
    .local v3, "s":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<TK;TV;>;"
    :goto_3
    if-eqz v3, :cond_3

    .line 6341
    iget v4, v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->result:I

    iget v5, v3, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->result:I

    invoke-interface {v10, v4, v5}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v4

    iput v4, v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->result:I

    .line 6342
    iget-object v4, v3, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    iput-object v4, v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    move-object v3, v4

    goto :goto_3

    .line 6335
    .end local v1    # "t":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<TK;TV;>;"
    .end local v3    # "s":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<TK;TV;>;"
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    goto :goto_2

    .line 6321
    .end local v0    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v9    # "r":I
    :cond_4
    move-object v2, p0

    goto :goto_4

    .end local v10    # "reducer":Ljava/util/function/IntBinaryOperator;
    :cond_5
    move-object v2, p0

    .line 6346
    :cond_6
    :goto_4
    return-void
.end method

.method public final getRawResult()Ljava/lang/Integer;
    .locals 1

    .line 6317
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<TK;TV;>;"
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->result:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    .line 6299
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<TK;TV;>;"
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->getRawResult()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
