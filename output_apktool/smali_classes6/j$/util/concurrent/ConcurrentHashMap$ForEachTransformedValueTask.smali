.class final Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;
.super Lj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachTransformedValueTask"
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
        "TK;TV;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final action:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "-TU;>;"
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
.method constructor <init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V
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
            "-TV;+TU;>;",
            "Ljava/util/function/Consumer<",
            "-TU;>;)V"
        }
    .end annotation

    .line 5123
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask<TK;TV;TU;>;"
    .local p1, "p":Lj$/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .local p7, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    invoke-direct/range {p0 .. p5}, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 5124
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
    iput-object p6, p1, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;->transformer:Ljava/util/function/Function;

    iput-object p7, p1, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;->action:Ljava/util/function/Consumer;

    .line 5125
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 9

    .line 5129
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask<TK;TV;TU;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;->transformer:Ljava/util/function/Function;

    move-object v7, v0

    .local v7, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    if-eqz v0, :cond_3

    iget-object v8, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;->action:Ljava/util/function/Consumer;

    move-object v0, v8

    .local v8, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    if-eqz v0, :cond_3

    .line 5131
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;->baseIndex:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;->batch:I

    if-lez v1, :cond_0

    iget v5, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;->baseLimit:I

    move v1, v5

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    .local v4, "h":I
    if-le v1, v0, :cond_0

    .line 5133
    invoke-virtual {p0, v2}, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;->addToPendingCount(I)V

    .line 5134
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;

    iget v3, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;->batch:I

    iput v4, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;->baseLimit:I

    iget-object v6, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    .line 5136
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    .line 5138
    .end local v0    # "i":I
    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_2

    .line 5140
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v7, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .local v2, "u":Ljava/lang/Object;, "TU;"
    if-eqz v0, :cond_1

    .line 5141
    invoke-interface {v8, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5142
    .end local v2    # "u":Ljava/lang/Object;, "TU;"
    :cond_1
    goto :goto_1

    .line 5143
    .end local v1    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;->propagateCompletion()V

    .line 5145
    .end local v8    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    :cond_3
    return-void
.end method
