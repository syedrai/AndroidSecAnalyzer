.class final Lj$/util/concurrent/ConcurrentHashMap$TreeNode;
.super Lj$/util/concurrent/ConcurrentHashMap$Node;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TreeNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/concurrent/ConcurrentHashMap$Node<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field prev:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field red:Z

.field right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)V
    .locals 0
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Lj$/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2716
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "val":Ljava/lang/Object;, "TV;"
    .local p4, "next":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p5, "parent":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2717
    iput-object p5, p0, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2718
    return-void
.end method


# virtual methods
.method find(ILjava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap$Node;
    .locals 1
    .param p1, "h"    # I
    .param p2, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2721
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v0

    return-object v0
.end method

.method final findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;
    .locals 7
    .param p1, "h"    # I
    .param p2, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lj$/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2729
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p3, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_b

    .line 2730
    move-object v0, p0

    .line 2733
    .local v0, "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_0
    iget-object v1, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v1, "pl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v2, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2734
    .local v2, "pr":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget v3, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    move v4, v3

    .local v4, "ph":I
    if-le v3, p1, :cond_1

    .line 2735
    move-object v0, v1

    goto :goto_1

    .line 2736
    :cond_1
    if-ge v4, p1, :cond_2

    .line 2737
    move-object v0, v2

    goto :goto_1

    .line 2738
    :cond_2
    iget-object v3, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    move-object v5, v3

    .local v5, "pk":Ljava/lang/Object;, "TK;"
    if-eq v3, p2, :cond_a

    if-eqz v5, :cond_3

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 2740
    :cond_3
    if-nez v1, :cond_4

    .line 2741
    move-object v0, v2

    goto :goto_1

    .line 2742
    :cond_4
    if-nez v2, :cond_5

    .line 2743
    move-object v0, v1

    goto :goto_1

    .line 2744
    :cond_5
    if-nez p3, :cond_6

    .line 2745
    invoke-static {p2}, Lj$/util/concurrent/ConcurrentHashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    move-object p3, v3

    if-eqz v3, :cond_8

    .line 2746
    :cond_6
    invoke-static {p3, p2, v5}, Lj$/util/concurrent/ConcurrentHashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    move v6, v3

    .local v6, "dir":I
    if-eqz v3, :cond_8

    .line 2747
    if-gez v6, :cond_7

    move-object v3, v1

    goto :goto_0

    :cond_7
    move-object v3, v2

    :goto_0
    move-object v0, v3

    .end local v0    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v3, "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_1

    .line 2748
    .end local v3    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v6    # "dir":I
    .restart local v0    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_8
    invoke-virtual {v2, p1, p2, p3}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v3

    move-object v6, v3

    .local v6, "q":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v3, :cond_9

    .line 2749
    return-object v6

    .line 2751
    :cond_9
    move-object v0, v1

    .line 2752
    .end local v1    # "pl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v2    # "pr":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v4    # "ph":I
    .end local v5    # "pk":Ljava/lang/Object;, "TK;"
    .end local v6    # "q":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_1
    if-nez v0, :cond_0

    goto :goto_3

    .line 2739
    .restart local v1    # "pl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v2    # "pr":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v4    # "ph":I
    .restart local v5    # "pk":Ljava/lang/Object;, "TK;"
    :cond_a
    :goto_2
    return-object v0

    .line 2754
    .end local v0    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v1    # "pl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v2    # "pr":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v4    # "ph":I
    .end local v5    # "pk":Ljava/lang/Object;, "TK;"
    :cond_b
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method
