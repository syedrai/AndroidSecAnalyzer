.class final Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;
.super Ljava/lang/Object;
.source "ConcurrentLinkedQueue.java"

# interfaces
.implements Lj$/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentLinkedQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CLQSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field batch:I

.field current:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field exhausted:Z

.field final synthetic this$0:Lj$/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method constructor <init>(Lj$/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 0
    .param p1, "this$0"    # Lj$/util/concurrent/ConcurrentLinkedQueue;

    .line 859
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.CLQSpliterator;"
    iput-object p1, p0, Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->this$0:Lj$/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private current()Lj$/util/concurrent/ConcurrentLinkedQueue$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;"
        }
    .end annotation

    .line 924
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.CLQSpliterator;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->current:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v1, v0

    .local v1, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->exhausted:Z

    if-nez v0, :cond_0

    .line 925
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->this$0:Lj$/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->first()Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    move-object v1, v0

    invoke-direct {p0, v0}, Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->setCurrent(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 926
    :cond_0
    return-object v1
.end method

.method private setCurrent(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 918
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.CLQSpliterator;"
    .local p1, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iput-object p1, p0, Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->current:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez p1, :cond_0

    .line 919
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->exhausted:Z

    .line 920
    :cond_0
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 932
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.CLQSpliterator;"
    const/16 v0, 0x1110

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 929
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.CLQSpliterator;"
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 889
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.CLQSpliterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->current()Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eqz v0, :cond_0

    .line 892
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->current:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 893
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->exhausted:Z

    .line 894
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->this$0:Lj$/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1, v1}, Lj$/util/concurrent/ConcurrentLinkedQueue;->forEachFrom(Ljava/util/function/Consumer;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 896
    :cond_0
    return-void
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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 899
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.CLQSpliterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->current()Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eqz v0, :cond_3

    .line 904
    :cond_0
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    .line 905
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v2, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v3, v2

    .end local v1    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v3, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-ne v1, v2, :cond_1

    .line 906
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->this$0:Lj$/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentLinkedQueue;->first()Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    .end local v3    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v1    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_0

    .line 905
    .end local v1    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v3    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_1
    move-object v1, v3

    .line 907
    .end local v3    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v1    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    if-nez v0, :cond_2

    if-nez v1, :cond_0

    .line 908
    :cond_2
    invoke-direct {p0, v1}, Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->setCurrent(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 909
    if-eqz v0, :cond_3

    .line 910
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 911
    const/4 v2, 0x1

    return v2

    .line 914
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public trySplit()Lj$/util/Spliterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 867
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.CLQSpliterator;"
    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->current()Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v3, v0

    .local v3, "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v0, :cond_0

    goto :goto_2

    .line 869
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    iget v4, p0, Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->batch:I

    add-int/lit8 v4, v4, 0x1

    const/high16 v5, 0x2000000

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->batch:I

    .line 870
    .local v4, "n":I
    const/4 v5, 0x0

    .line 873
    .local v5, "a":[Ljava/lang/Object;
    :cond_1
    iget-object v6, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    move-object v7, v6

    .local v7, "e":Ljava/lang/Object;, "TE;"
    if-eqz v6, :cond_3

    .line 874
    if-nez v5, :cond_2

    .line 875
    new-array v5, v4, [Ljava/lang/Object;

    .line 876
    :cond_2
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "i":I
    .local v6, "i":I
    aput-object v7, v5, v0

    move v0, v6

    .line 878
    .end local v6    # "i":I
    .restart local v0    # "i":I
    :cond_3
    move-object v6, v3

    .end local v1    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v6, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-ne v1, v3, :cond_4

    .line 879
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->this$0:Lj$/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentLinkedQueue;->first()Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    .end local v6    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v1    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_0

    .line 878
    .end local v1    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v6    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_4
    move-object v1, v6

    .line 880
    .end local v6    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v7    # "e":Ljava/lang/Object;, "TE;"
    .restart local v1    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_5

    iget-object v6, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v3, v6

    if-eqz v6, :cond_5

    if-lt v0, v4, :cond_1

    .line 881
    :cond_5
    invoke-direct {p0, v1}, Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->setCurrent(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 882
    if-nez v0, :cond_6

    goto :goto_1

    .line 883
    :cond_6
    const/4 v2, 0x0

    const/16 v6, 0x1110

    invoke-static {v5, v2, v0, v6}, Lj$/util/Spliterators;->spliterator([Ljava/lang/Object;III)Lj$/util/Spliterator;

    move-result-object v2

    .line 882
    :goto_1
    return-object v2

    .line 868
    .end local v0    # "i":I
    .end local v3    # "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v4    # "n":I
    .end local v5    # "a":[Ljava/lang/Object;
    :cond_7
    :goto_2
    return-object v2
.end method
