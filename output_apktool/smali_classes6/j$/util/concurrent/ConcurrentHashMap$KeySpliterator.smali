.class final Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator;
.super Lj$/util/concurrent/ConcurrentHashMap$Traverser;
.source "ConcurrentHashMap.java"

# interfaces
.implements Lj$/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeySpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/concurrent/ConcurrentHashMap$Traverser<",
        "TK;TV;>;",
        "Lj$/util/Spliterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field est:J


# direct methods
.method constructor <init>([Lj$/util/concurrent/ConcurrentHashMap$Node;IIIJ)V
    .locals 0
    .param p2, "size"    # I
    .param p3, "index"    # I
    .param p4, "limit"    # I
    .param p5, "est"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;IIIJ)V"
        }
    .end annotation

    .line 3555
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator<TK;TV;>;"
    .local p1, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 3556
    iput-wide p5, p0, Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator;->est:J

    .line 3557
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 3584
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator<TK;TV;>;"
    const/16 v0, 0x1101

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 3581
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator<TK;TV;>;"
    iget-wide v0, p0, Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator;->est:J

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)V"
        }
    .end annotation

    .line 3567
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-eqz p1, :cond_1

    .line 3568
    :goto_0
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 3569
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 3570
    .end local v1    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_0
    return-void

    .line 3567
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public synthetic getComparator()Ljava/util/Comparator;
    .locals 1

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getComparator(Lj$/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getExactSizeIfKnown()J
    .locals 2

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getExactSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$hasCharacteristics(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)Z"
        }
    .end annotation

    .line 3573
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-eqz p1, :cond_1

    .line 3575
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    .line 3576
    const/4 v0, 0x0

    return v0

    .line 3577
    :cond_0
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3578
    const/4 v0, 0x1

    return v0

    .line 3573
    .end local v1    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 3550
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator;->trySplit()Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3561
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator<TK;TV;>;"
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator;->baseIndex:I

    move v1, v0

    .local v1, "i":I
    iget v2, p0, Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator;->baseLimit:I

    move v7, v2

    .local v7, "f":I
    add-int/2addr v0, v2

    const/4 v2, 0x1

    ushr-int/lit8 v6, v0, 0x1

    move v0, v6

    .local v6, "h":I
    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3562
    :cond_0
    new-instance v3, Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator;

    iget-object v4, p0, Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    iget v5, p0, Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator;->baseSize:I

    iput v6, p0, Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator;->baseLimit:I

    iget-wide v8, p0, Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator;->est:J

    ushr-long/2addr v8, v2

    iput-wide v8, p0, Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator;->est:J

    invoke-direct/range {v3 .. v9}, Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;IIIJ)V

    move-object v0, v3

    .line 3561
    :goto_0
    return-object v0
.end method
