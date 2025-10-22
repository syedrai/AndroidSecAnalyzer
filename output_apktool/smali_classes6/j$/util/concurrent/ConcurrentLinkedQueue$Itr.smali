.class Lj$/util/concurrent/ConcurrentLinkedQueue$Itr;
.super Ljava/lang/Object;
.source "ConcurrentLinkedQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentLinkedQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private lastRet:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private nextNode:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lj$/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method constructor <init>(Lj$/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 5

    .line 751
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue$Itr;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Itr;"
    iput-object p1, p0, Lj$/util/concurrent/ConcurrentLinkedQueue$Itr;->this$0:Lj$/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    :goto_0
    iget-object v0, p1, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v1, v0

    .line 756
    .local v0, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v1, "h":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_1
    iget-object v2, v0, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "item":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_0

    .line 757
    iput-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 758
    iput-object v3, p0, Lj$/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 759
    goto :goto_2

    .line 761
    :cond_0
    iget-object v2, v0, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v4, v2

    .local v4, "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v2, :cond_1

    .line 762
    nop

    .line 766
    .end local v3    # "item":Ljava/lang/Object;, "TE;"
    .end local v4    # "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_2
    invoke-virtual {p1, v1, v0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->updateHead(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 767
    return-void

    .line 763
    .restart local v3    # "item":Ljava/lang/Object;, "TE;"
    .restart local v4    # "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_1
    if-ne v0, v4, :cond_2

    .line 764
    goto :goto_0

    .line 754
    .end local v3    # "item":Ljava/lang/Object;, "TE;"
    :cond_2
    move-object v0, v4

    goto :goto_1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 772
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue$Itr;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Itr;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 776
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue$Itr;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Itr;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 777
    .local v0, "pred":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eqz v0, :cond_3

    .line 779
    iput-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue$Itr;->lastRet:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 780
    const/4 v1, 0x0

    .line 782
    .local v1, "item":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lj$/util/concurrent/ConcurrentLinkedQueue$Itr;->this$0:Lj$/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->succ(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v2

    .line 783
    .local v2, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    if-eqz v2, :cond_2

    iget-object v3, v2, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    move-object v1, v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 790
    :cond_0
    iget-object v3, p0, Lj$/util/concurrent/ConcurrentLinkedQueue$Itr;->this$0:Lj$/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, v2}, Lj$/util/concurrent/ConcurrentLinkedQueue;->succ(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v3

    move-object v4, v3

    .local v4, "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eqz v3, :cond_1

    .line 791
    sget-object v3, Lj$/util/concurrent/ConcurrentLinkedQueue;->NEXT:Lj$/com/android/tools/r8/DesugarVarHandle;

    invoke-virtual {v3, v0, v2, v4}, Lj$/com/android/tools/r8/DesugarVarHandle;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 782
    :cond_1
    move-object v2, v4

    goto :goto_0

    .line 784
    .end local v4    # "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_2
    :goto_1
    iput-object v2, p0, Lj$/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 785
    iget-object v3, p0, Lj$/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 786
    .local v3, "x":Ljava/lang/Object;, "TE;"
    iput-object v1, p0, Lj$/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 787
    return-object v3

    .line 777
    .end local v1    # "item":Ljava/lang/Object;, "TE;"
    .end local v2    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v3    # "x":Ljava/lang/Object;, "TE;"
    :cond_3
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove()V
    .locals 2

    .line 798
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue$Itr;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Itr;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue$Itr;->lastRet:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 799
    .local v0, "l":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eqz v0, :cond_0

    .line 801
    const/4 v1, 0x0

    iput-object v1, v0, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    .line 802
    iput-object v1, p0, Lj$/util/concurrent/ConcurrentLinkedQueue$Itr;->lastRet:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 803
    return-void

    .line 799
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method
