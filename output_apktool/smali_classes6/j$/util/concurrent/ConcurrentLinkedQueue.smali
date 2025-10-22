.class public Lj$/util/concurrent/ConcurrentLinkedQueue;
.super Ljava/util/AbstractQueue;
.source "ConcurrentLinkedQueue.java"

# interfaces
.implements Ljava/util/Queue;
.implements Ljava/io/Serializable;
.implements Lj$/util/Collection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/concurrent/ConcurrentLinkedQueue$Node;,
        Lj$/util/concurrent/ConcurrentLinkedQueue$Itr;,
        Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/util/Queue<",
        "TE;>;",
        "Ljava/io/Serializable;",
        "Lj$/util/Collection<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final HEAD:Lj$/com/android/tools/r8/DesugarVarHandle;

.field static final ITEM:Lj$/com/android/tools/r8/DesugarVarHandle;

.field private static final MAX_HOPS:I = 0x8

.field static final NEXT:Lj$/com/android/tools/r8/DesugarVarHandle;

.field private static final TAIL:Lj$/com/android/tools/r8/DesugarVarHandle;

.field private static final serialVersionUID:J = 0x2bafb2a664c708cL


# instance fields
.field volatile transient head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private volatile transient tail:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1064
    const-class v0, Lj$/util/concurrent/ConcurrentLinkedQueue;

    :try_start_0
    new-instance v1, Lj$/com/android/tools/r8/DesugarMethodHandlesLookup;

    invoke-direct {v1}, Lj$/com/android/tools/r8/DesugarMethodHandlesLookup;-><init>()V

    .line 1065
    .local v1, "l":Lj$/com/android/tools/r8/DesugarMethodHandlesLookup;
    const-string v2, "head"

    const-class v3, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-virtual {v1, v0, v2, v3}, Lj$/com/android/tools/r8/DesugarMethodHandlesLookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lj$/com/android/tools/r8/DesugarVarHandle;

    move-result-object v2

    sput-object v2, Lj$/util/concurrent/ConcurrentLinkedQueue;->HEAD:Lj$/com/android/tools/r8/DesugarVarHandle;

    .line 1067
    const-string v2, "tail"

    const-class v3, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-virtual {v1, v0, v2, v3}, Lj$/com/android/tools/r8/DesugarMethodHandlesLookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lj$/com/android/tools/r8/DesugarVarHandle;

    move-result-object v0

    sput-object v0, Lj$/util/concurrent/ConcurrentLinkedQueue;->TAIL:Lj$/com/android/tools/r8/DesugarVarHandle;

    .line 1069
    const-class v0, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    const-string v2, "item"

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lj$/com/android/tools/r8/DesugarMethodHandlesLookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lj$/com/android/tools/r8/DesugarVarHandle;

    move-result-object v0

    sput-object v0, Lj$/util/concurrent/ConcurrentLinkedQueue;->ITEM:Lj$/com/android/tools/r8/DesugarVarHandle;

    .line 1070
    const-class v0, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    const-string v2, "next"

    const-class v3, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-virtual {v1, v0, v2, v3}, Lj$/com/android/tools/r8/DesugarMethodHandlesLookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lj$/com/android/tools/r8/DesugarVarHandle;

    move-result-object v0

    sput-object v0, Lj$/util/concurrent/ConcurrentLinkedQueue;->NEXT:Lj$/com/android/tools/r8/DesugarVarHandle;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    .end local v1    # "l":Lj$/com/android/tools/r8/DesugarMethodHandlesLookup;
    nop

    .line 1074
    return-void

    .line 1071
    :catch_0
    move-exception v0

    .line 1072
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 1

    .line 244
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 245
    new-instance v0, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;-><init>()V

    iput-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->tail:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    iput-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 246
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 257
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 258
    const/4 v0, 0x0

    .local v0, "h":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    const/4 v1, 0x0

    .line 259
    .local v1, "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 260
    .local v3, "e":Ljava/lang/Object;, "TE;"
    new-instance v4, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5}, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    .line 261
    .local v4, "newNode":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v0, :cond_0

    .line 262
    move-object v1, v4

    move-object v0, v4

    goto :goto_1

    .line 264
    :cond_0
    move-object v5, v4

    .end local v1    # "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v5, "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    invoke-virtual {v1, v4}, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->appendRelaxed(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)V

    move-object v1, v5

    .line 265
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    .end local v4    # "newNode":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v5    # "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v1    # "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_1
    goto :goto_0

    .line 266
    :cond_1
    if-nez v0, :cond_2

    .line 267
    new-instance v2, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-direct {v2}, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;-><init>()V

    move-object v1, v2

    move-object v0, v2

    .line 268
    :cond_2
    iput-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 269
    iput-object v1, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->tail:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 270
    return-void
.end method

.method private bulkRemove(Ljava/util/function/Predicate;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 995
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    const/4 v0, 0x0

    .line 997
    .local v0, "removed":Z
    :goto_0
    const/16 v1, 0x8

    .line 1000
    .local v1, "hops":I
    iget-object v2, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v2, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v3, v2

    .local v3, "c":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    const/4 v4, 0x0

    .local v4, "pred":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_1
    if-eqz v2, :cond_8

    .line 1001
    iget-object v5, v2, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 1003
    .local v5, "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v6, v2, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    move-object v7, v6

    .local v7, "item":Ljava/lang/Object;, "TE;"
    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    :goto_2
    move v8, v6

    .local v8, "pAlive":Z
    if-eqz v6, :cond_2

    .line 1004
    invoke-interface {p1, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1005
    const/4 v6, 0x0

    invoke-virtual {v2, v7, v6}, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1006
    const/4 v0, 0x1

    .line 1007
    :cond_1
    const/4 v8, 0x0

    .line 1010
    :cond_2
    if-nez v8, :cond_3

    if-eqz v5, :cond_3

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_4

    :cond_3
    goto :goto_3

    .line 1021
    :cond_4
    if-ne v2, v5, :cond_7

    .line 1022
    goto :goto_0

    .line 1014
    :goto_3
    if-eq v3, v2, :cond_5

    move-object v6, v2

    .end local v3    # "c":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v6, "c":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    invoke-direct {p0, v4, v3, v2}, Lj$/util/concurrent/ConcurrentLinkedQueue;->tryCasSuccessor(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v3, v6

    .end local v6    # "c":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v3    # "c":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_5
    if-eqz v8, :cond_7

    move-object v6, v3

    .line 1017
    .end local v3    # "c":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v6    # "c":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_6
    const/16 v1, 0x8

    .line 1018
    move-object v3, v2

    .line 1019
    .end local v4    # "pred":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v3, "pred":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v4, v5

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    .line 1000
    .end local v6    # "c":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v7    # "item":Ljava/lang/Object;, "TE;"
    .end local v8    # "pAlive":Z
    .local v3, "c":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v4    # "pred":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_7
    move-object v2, v5

    goto :goto_1

    .line 1024
    .end local v2    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v3    # "c":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v4    # "pred":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v5    # "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_8
    return v0
.end method

.method static synthetic lambda$clear$0(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "e"    # Ljava/lang/Object;

    .line 984
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$removeAll$0(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "e"    # Ljava/lang/Object;

    .line 972
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$retainAll$0(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "e"    # Ljava/lang/Object;

    .line 980
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 840
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 843
    const/4 v0, 0x0

    .local v0, "h":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    const/4 v1, 0x0

    .line 844
    .local v1, "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    .local v3, "item":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 846
    new-instance v2, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-direct {v2, v3}, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    .line 847
    .local v2, "newNode":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v0, :cond_0

    .line 848
    move-object v1, v2

    move-object v0, v2

    goto :goto_1

    .line 850
    :cond_0
    move-object v4, v2

    .end local v1    # "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v4, "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    invoke-virtual {v1, v2}, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->appendRelaxed(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)V

    move-object v1, v4

    .line 851
    .end local v2    # "newNode":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v4    # "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v1    # "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_1
    goto :goto_0

    .line 852
    .end local v3    # "item":Ljava/lang/Object;
    :cond_1
    if-nez v0, :cond_2

    .line 853
    new-instance v2, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-direct {v2}, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;-><init>()V

    move-object v1, v2

    move-object v0, v2

    .line 854
    :cond_2
    iput-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 855
    iput-object v1, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->tail:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 856
    return-void
.end method

.method private skipDeadNodes(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)Lj$/util/concurrent/ConcurrentLinkedQueue$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;",
            "Lj$/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;",
            "Lj$/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;",
            "Lj$/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;)",
            "Lj$/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;"
        }
    .end annotation

    .line 337
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "pred":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p2, "c":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p3, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p4, "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez p4, :cond_1

    .line 339
    if-ne p2, p3, :cond_0

    return-object p1

    .line 340
    :cond_0
    move-object p4, p3

    .line 342
    :cond_1
    invoke-direct {p0, p1, p2, p4}, Lj$/util/concurrent/ConcurrentLinkedQueue;->tryCasSuccessor(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    sget-object v0, Lj$/util/concurrent/ConcurrentLinkedQueue;->ITEM:Lj$/com/android/tools/r8/DesugarVarHandle;

    .line 343
    invoke-virtual {v0, p1}, Lj$/com/android/tools/r8/DesugarVarHandle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 344
    :cond_2
    move-object v0, p1

    goto :goto_0

    :cond_3
    move-object v0, p3

    .line 342
    :goto_0
    return-object v0
.end method

.method private toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .param p1, "a"    # [Ljava/lang/Object;

    .line 633
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    move-object v0, p1

    .line 635
    .local v0, "x":[Ljava/lang/Object;
    :goto_0
    const/4 v1, 0x0

    .line 636
    .local v1, "size":I
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->first()Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v2

    .local v2, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_1
    if-eqz v2, :cond_4

    .line 638
    iget-object v3, v2, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    move-object v4, v3

    .local v4, "item":Ljava/lang/Object;, "TE;"
    if-eqz v3, :cond_2

    .line 639
    if-nez v0, :cond_0

    .line 640
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/Object;

    goto :goto_2

    .line 641
    :cond_0
    array-length v3, v0

    if-ne v1, v3, :cond_1

    .line 642
    add-int/lit8 v3, v1, 0x4

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 643
    :cond_1
    :goto_2
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "size":I
    .local v3, "size":I
    aput-object v4, v0, v1

    move v1, v3

    .line 645
    .end local v3    # "size":I
    .restart local v1    # "size":I
    :cond_2
    iget-object v3, v2, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v5, v3

    .end local v2    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v5, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-ne v2, v3, :cond_3

    .line 646
    goto :goto_0

    .line 647
    .end local v4    # "item":Ljava/lang/Object;, "TE;"
    :cond_3
    move-object v2, v5

    goto :goto_1

    .line 648
    .end local v5    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_4
    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 649
    new-array v2, v2, [Ljava/lang/Object;

    return-object v2

    .line 650
    :cond_5
    if-eqz p1, :cond_8

    array-length v3, p1

    if-gt v1, v3, :cond_8

    .line 651
    if-eq p1, v0, :cond_6

    .line 652
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 653
    :cond_6
    array-length v2, p1

    if-ge v1, v2, :cond_7

    .line 654
    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 655
    :cond_7
    return-object p1

    .line 657
    :cond_8
    array-length v2, v0

    if-ne v1, v2, :cond_9

    move-object v2, v0

    goto :goto_3

    :cond_9
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    :goto_3
    return-object v2
.end method

.method private tryCasSuccessor(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;",
            "Lj$/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;",
            "Lj$/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;)Z"
        }
    .end annotation

    .line 315
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "pred":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p2, "c":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p3, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eqz p1, :cond_0

    .line 316
    sget-object v0, Lj$/util/concurrent/ConcurrentLinkedQueue;->NEXT:Lj$/com/android/tools/r8/DesugarVarHandle;

    invoke-virtual {v0, p1, p2, p3}, Lj$/com/android/tools/r8/DesugarVarHandle;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 317
    :cond_0
    sget-object v0, Lj$/util/concurrent/ConcurrentLinkedQueue;->HEAD:Lj$/com/android/tools/r8/DesugarVarHandle;

    invoke-virtual {v0, p0, p2, p3}, Lj$/com/android/tools/r8/DesugarVarHandle;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    sget-object v0, Lj$/util/concurrent/ConcurrentLinkedQueue;->NEXT:Lj$/com/android/tools/r8/DesugarVarHandle;

    invoke-virtual {v0, p2, p2}, Lj$/com/android/tools/r8/DesugarVarHandle;->setRelease(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 319
    const/4 v0, 0x1

    return v0

    .line 321
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 818
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 821
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->first()Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    .local v0, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 823
    iget-object v1, v0, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "item":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_0

    .line 824
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 821
    .end local v2    # "item":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-virtual {p0, v0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->succ(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    goto :goto_0

    .line 828
    .end local v0    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 829
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 283
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 558
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    if-eq p1, p0, :cond_a

    .line 563
    const/4 v0, 0x0

    .local v0, "beginningOfTheEnd":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    const/4 v1, 0x0

    .line 564
    .local v1, "last":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 565
    .local v3, "e":Ljava/lang/Object;, "TE;"
    new-instance v4, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5}, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    .line 566
    .local v4, "newNode":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v0, :cond_0

    .line 567
    move-object v1, v4

    move-object v0, v4

    goto :goto_1

    .line 569
    :cond_0
    move-object v5, v4

    .end local v1    # "last":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v5, "last":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    invoke-virtual {v1, v4}, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->appendRelaxed(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)V

    move-object v1, v5

    .line 570
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    .end local v4    # "newNode":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v5    # "last":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v1    # "last":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_1
    goto :goto_0

    .line 571
    :cond_1
    if-nez v0, :cond_2

    .line 572
    const/4 v2, 0x0

    return v2

    .line 575
    :cond_2
    iget-object v2, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->tail:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v2, "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v3, v2

    .line 576
    .local v3, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_2
    iget-object v4, v3, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 577
    .local v4, "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v4, :cond_4

    .line 579
    sget-object v5, Lj$/util/concurrent/ConcurrentLinkedQueue;->NEXT:Lj$/com/android/tools/r8/DesugarVarHandle;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, v0}, Lj$/com/android/tools/r8/DesugarVarHandle;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 582
    sget-object v5, Lj$/util/concurrent/ConcurrentLinkedQueue;->TAIL:Lj$/com/android/tools/r8/DesugarVarHandle;

    invoke-virtual {v5, p0, v2, v1}, Lj$/com/android/tools/r8/DesugarVarHandle;->weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 585
    iget-object v2, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->tail:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 586
    iget-object v5, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v5, :cond_3

    .line 587
    sget-object v5, Lj$/util/concurrent/ConcurrentLinkedQueue;->TAIL:Lj$/com/android/tools/r8/DesugarVarHandle;

    invoke-virtual {v5, p0, v2, v1}, Lj$/com/android/tools/r8/DesugarVarHandle;->weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 589
    :cond_3
    const/4 v5, 0x1

    return v5

    .line 593
    :cond_4
    if-ne v3, v4, :cond_6

    .line 598
    iget-object v5, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->tail:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v6, v5

    .end local v2    # "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v6, "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eq v2, v5, :cond_5

    move-object v2, v6

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    :goto_3
    move-object v3, v2

    move-object v2, v6

    .end local v3    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v2, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_5

    .line 601
    .end local v6    # "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v2, "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v3    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_6
    if-eq v3, v2, :cond_8

    iget-object v5, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->tail:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v6, v5

    .end local v2    # "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v6    # "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eq v2, v5, :cond_7

    move-object v2, v6

    goto :goto_4

    :cond_7
    move-object v2, v6

    .end local v6    # "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v2    # "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_8
    move-object v6, v4

    :goto_4
    move-object v3, v6

    .line 602
    .end local v4    # "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_9
    :goto_5
    goto :goto_2

    .line 560
    .end local v0    # "beginningOfTheEnd":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v1    # "last":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v2    # "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v3    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 984
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    new-instance v0, Lj$/util/concurrent/ConcurrentLinkedQueue$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentLinkedQueue$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, v0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->bulkRemove(Ljava/util/function/Predicate;)Z

    .line 985
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 489
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 491
    :cond_0
    :goto_0
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v1, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    const/4 v2, 0x0

    .local v2, "pred":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_1
    if-eqz v1, :cond_6

    .line 492
    iget-object v3, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 494
    .local v3, "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v4, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    move-object v5, v4

    .local v5, "item":Ljava/lang/Object;, "TE;"
    if-eqz v4, :cond_2

    .line 495
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 496
    const/4 v0, 0x1

    return v0

    .line 497
    :cond_1
    move-object v2, v1

    move-object v1, v3

    goto :goto_1

    .line 499
    :cond_2
    move-object v4, v1

    .line 500
    .local v4, "c":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_2
    if-eqz v3, :cond_5

    iget-object v6, v3, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v6, :cond_3

    goto :goto_3

    .line 503
    :cond_3
    move-object v6, v3

    .end local v1    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v6, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-ne v1, v3, :cond_4

    goto :goto_0

    .line 499
    :cond_4
    iget-object v3, v6, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v1, v6

    goto :goto_2

    .line 501
    .end local v6    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v1    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_5
    :goto_3
    invoke-direct {p0, v2, v4, v1, v3}, Lj$/util/concurrent/ConcurrentLinkedQueue;->skipDeadNodes(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v2

    move-object v1, v3

    .line 505
    .end local v3    # "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v4    # "c":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v5    # "item":Ljava/lang/Object;, "TE;"
    goto :goto_1

    .line 506
    .end local v1    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v2    # "pred":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_6
    return v0
.end method

.method first()Lj$/util/concurrent/ConcurrentLinkedQueue$Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;"
        }
    .end annotation

    .line 429
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    nop

    :goto_0
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v0, "h":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v1, v0

    .line 430
    .local v1, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_1
    iget-object v2, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    .line 431
    .local v2, "hasItem":Z
    :goto_2
    if-nez v2, :cond_3

    iget-object v3, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v4, v3

    .local v4, "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v3, :cond_1

    goto :goto_3

    .line 435
    :cond_1
    if-ne v1, v4, :cond_2

    .line 436
    goto :goto_0

    .line 429
    .end local v2    # "hasItem":Z
    :cond_2
    move-object v1, v4

    goto :goto_1

    .line 432
    .end local v4    # "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v2    # "hasItem":Z
    :cond_3
    :goto_3
    invoke-virtual {p0, v0, v1}, Lj$/util/concurrent/ConcurrentLinkedQueue;->updateHead(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 433
    if-eqz v2, :cond_4

    move-object v3, v1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    return-object v3
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1053
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-virtual {p0, p1, v0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->forEachFrom(Ljava/util/function/Consumer;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 1055
    return-void
.end method

.method forEachFrom(Ljava/util/function/Consumer;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;",
            "Lj$/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 1033
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    .local p2, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    const/4 v0, 0x0

    .local v0, "pred":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    if-eqz p2, :cond_4

    .line 1034
    iget-object v1, p2, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 1036
    .local v1, "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v2, p2, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "item":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_0

    .line 1037
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1038
    move-object v0, p2

    move-object p2, v1

    goto :goto_0

    .line 1040
    :cond_0
    move-object v2, p2

    .line 1041
    .local v2, "c":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_1
    if-eqz v1, :cond_3

    iget-object v4, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v4, :cond_1

    goto :goto_2

    .line 1044
    :cond_1
    move-object v4, v1

    .end local p2    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v4, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-ne p2, v1, :cond_2

    const/4 p2, 0x0

    .end local v0    # "pred":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p2, "pred":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    .end local v4    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v0, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_3

    .line 1040
    .end local p2    # "pred":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v0, "pred":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v4    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_2
    iget-object v1, v4, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object p2, v4

    goto :goto_1

    .line 1042
    .end local v4    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p2, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_3
    :goto_2
    invoke-direct {p0, v0, v2, p2, v1}, Lj$/util/concurrent/ConcurrentLinkedQueue;->skipDeadNodes(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    move-object p2, v1

    .line 1046
    .end local v1    # "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v2    # "c":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v3    # "item":Ljava/lang/Object;, "TE;"
    :goto_3
    goto :goto_0

    .line 1047
    .end local v0    # "pred":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_4
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 447
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->first()Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 729
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    new-instance v0, Lj$/util/concurrent/ConcurrentLinkedQueue$Itr;

    invoke-direct {v0, p0}, Lj$/util/concurrent/ConcurrentLinkedQueue$Itr;-><init>(Lj$/util/concurrent/ConcurrentLinkedQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 355
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    .line 357
    .local v0, "newNode":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->tail:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v1, "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v2, v1

    .line 358
    .local v2, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    iget-object v3, v2, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 359
    .local v3, "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v3, :cond_1

    .line 361
    sget-object v4, Lj$/util/concurrent/ConcurrentLinkedQueue;->NEXT:Lj$/com/android/tools/r8/DesugarVarHandle;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v0}, Lj$/com/android/tools/r8/DesugarVarHandle;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 365
    if-eq v2, v1, :cond_0

    .line 366
    sget-object v4, Lj$/util/concurrent/ConcurrentLinkedQueue;->TAIL:Lj$/com/android/tools/r8/DesugarVarHandle;

    invoke-virtual {v4, p0, v1, v0}, Lj$/com/android/tools/r8/DesugarVarHandle;->weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 367
    :cond_0
    const/4 v4, 0x1

    return v4

    .line 371
    :cond_1
    if-ne v2, v3, :cond_3

    .line 376
    iget-object v4, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->tail:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v5, v4

    .end local v1    # "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v5, "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eq v1, v4, :cond_2

    move-object v1, v5

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    :goto_1
    move-object v2, v1

    move-object v1, v5

    .end local v2    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v1, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_3

    .line 379
    .end local v5    # "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v1, "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v2    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_3
    if-eq v2, v1, :cond_5

    iget-object v4, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->tail:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v5, v4

    .end local v1    # "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v5    # "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eq v1, v4, :cond_4

    move-object v1, v5

    goto :goto_2

    :cond_4
    move-object v1, v5

    .end local v5    # "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v1    # "t":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_5
    move-object v5, v3

    :goto_2
    move-object v2, v5

    .line 380
    .end local v3    # "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_6
    :goto_3
    goto :goto_0
.end method

.method public synthetic parallelStream()Lj$/util/stream/Stream;
    .locals 1

    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$parallelStream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 406
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    nop

    :goto_0
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v0, "h":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v1, v0

    .line 408
    .local v1, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_1
    iget-object v2, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "item":Ljava/lang/Object;, "TE;"
    if-nez v2, :cond_2

    iget-object v2, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v4, v2

    .local v4, "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v2, :cond_0

    goto :goto_2

    .line 413
    :cond_0
    if-ne v1, v4, :cond_1

    .line 414
    goto :goto_0

    .line 406
    .end local v3    # "item":Ljava/lang/Object;, "TE;"
    :cond_1
    move-object v1, v4

    goto :goto_1

    .line 410
    .end local v4    # "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v3    # "item":Ljava/lang/Object;, "TE;"
    :cond_2
    :goto_2
    invoke-virtual {p0, v0, v1}, Lj$/util/concurrent/ConcurrentLinkedQueue;->updateHead(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 411
    return-object v3
.end method

.method public poll()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 385
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    nop

    :goto_0
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v0, "h":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v1, v0

    .line 387
    .local v1, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_1
    iget-object v2, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "item":Ljava/lang/Object;, "TE;"
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v1, v3, v4}, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 390
    if-eq v1, v0, :cond_1

    .line 391
    iget-object v2, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v4, v2

    .local v4, "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eqz v2, :cond_0

    move-object v2, v4

    goto :goto_2

    :cond_0
    move-object v2, v1

    :goto_2
    invoke-virtual {p0, v0, v2}, Lj$/util/concurrent/ConcurrentLinkedQueue;->updateHead(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 392
    .end local v4    # "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_1
    return-object v3

    .line 394
    :cond_2
    iget-object v2, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v5, v2

    .local v5, "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v2, :cond_3

    .line 395
    invoke-virtual {p0, v0, v1}, Lj$/util/concurrent/ConcurrentLinkedQueue;->updateHead(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 396
    return-object v4

    .line 398
    :cond_3
    if-ne v1, v5, :cond_4

    .line 399
    goto :goto_0

    .line 385
    .end local v3    # "item":Ljava/lang/Object;, "TE;"
    :cond_4
    move-object v1, v5

    goto :goto_1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 522
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 524
    :cond_0
    :goto_0
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v1, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    const/4 v2, 0x0

    .local v2, "pred":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_1
    if-eqz v1, :cond_6

    .line 525
    iget-object v3, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 527
    .local v3, "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v4, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    move-object v5, v4

    .local v5, "item":Ljava/lang/Object;, "TE;"
    if-eqz v4, :cond_2

    .line 528
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v1, v5, v4}, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 529
    invoke-direct {p0, v2, v1, v1, v3}, Lj$/util/concurrent/ConcurrentLinkedQueue;->skipDeadNodes(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 530
    const/4 v0, 0x1

    return v0

    .line 532
    :cond_1
    move-object v2, v1

    move-object v1, v3

    goto :goto_1

    .line 534
    :cond_2
    move-object v4, v1

    .line 535
    .local v4, "c":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_2
    if-eqz v3, :cond_5

    iget-object v6, v3, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v6, :cond_3

    goto :goto_3

    .line 538
    :cond_3
    move-object v6, v3

    .end local v1    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v6, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-ne v1, v3, :cond_4

    goto :goto_0

    .line 534
    :cond_4
    iget-object v3, v6, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v1, v6

    goto :goto_2

    .line 536
    .end local v6    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v1    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_5
    :goto_3
    invoke-direct {p0, v2, v4, v1, v3}, Lj$/util/concurrent/ConcurrentLinkedQueue;->skipDeadNodes(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v2

    move-object v1, v3

    .line 540
    .end local v3    # "q":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v4    # "c":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v5    # "item":Ljava/lang/Object;, "TE;"
    goto :goto_1

    .line 541
    .end local v1    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v2    # "pred":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_6
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 971
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    new-instance v0, Lj$/util/concurrent/ConcurrentLinkedQueue$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lj$/util/concurrent/ConcurrentLinkedQueue$$ExternalSyntheticLambda1;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 963
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    invoke-direct {p0, p1}, Lj$/util/concurrent/ConcurrentLinkedQueue;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 979
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    new-instance v0, Lj$/util/concurrent/ConcurrentLinkedQueue$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lj$/util/concurrent/ConcurrentLinkedQueue$$ExternalSyntheticLambda0;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 4

    .line 468
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    nop

    :goto_0
    const/4 v0, 0x0

    .line 469
    .local v0, "count":I
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->first()Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    .local v1, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_1
    if-eqz v1, :cond_2

    .line 470
    iget-object v2, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 471
    add-int/lit8 v0, v0, 0x1

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    .line 472
    goto :goto_2

    .line 473
    :cond_0
    iget-object v2, v1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v3, v2

    .end local v1    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v3, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-ne v1, v2, :cond_1

    .line 474
    goto :goto_0

    .line 473
    :cond_1
    move-object v1, v3

    goto :goto_1

    .line 476
    .end local v3    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_2
    :goto_2
    return v0
.end method

.method public spliterator()Lj$/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 956
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    new-instance v0, Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;

    invoke-direct {v0, p0}, Lj$/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;-><init>(Lj$/util/concurrent/ConcurrentLinkedQueue;)V

    return-object v0
.end method

.method public synthetic stream()Lj$/util/stream/Stream;
    .locals 1

    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method final succ(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)Lj$/util/concurrent/ConcurrentLinkedQueue$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;)",
            "Lj$/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;"
        }
    .end annotation

    .line 302
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v0, p1, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v1, v0

    .end local p1    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v1, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-ne p1, v0, :cond_0

    .line 303
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentLinkedQueue;->head:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 304
    :cond_0
    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 675
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Collection$-CC;->$default$toArray(Ljava/util/Collection;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 715
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    invoke-direct {p0, p1}, Lj$/util/concurrent/ConcurrentLinkedQueue;->toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 606
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    const/4 v0, 0x0

    .line 608
    .local v0, "a":[Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 609
    .local v1, "charLength":I
    const/4 v2, 0x0

    .line 610
    .local v2, "size":I
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->first()Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v3

    .local v3, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_1
    if-eqz v3, :cond_4

    .line 612
    iget-object v4, v3, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    move-object v5, v4

    .local v5, "item":Ljava/lang/Object;, "TE;"
    if-eqz v4, :cond_2

    .line 613
    if-nez v0, :cond_0

    .line 614
    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/String;

    goto :goto_2

    .line 615
    :cond_0
    array-length v4, v0

    if-ne v2, v4, :cond_1

    .line 616
    mul-int/lit8 v4, v2, 0x2

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    .line 617
    :cond_1
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 618
    .local v4, "s":Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "size":I
    .local v6, "size":I
    aput-object v4, v0, v2

    .line 619
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    move v2, v6

    .line 621
    .end local v4    # "s":Ljava/lang/String;
    .end local v6    # "size":I
    .restart local v2    # "size":I
    :cond_2
    iget-object v4, v3, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v6, v4

    .end local v3    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v6, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-ne v3, v4, :cond_3

    .line 622
    goto :goto_0

    .line 623
    .end local v5    # "item":Ljava/lang/Object;, "TE;"
    :cond_3
    move-object v3, v6

    goto :goto_1

    .line 625
    .end local v6    # "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_4
    if-nez v2, :cond_5

    .line 626
    const-string v3, "[]"

    return-object v3

    .line 628
    :cond_5
    invoke-static {v0, v2, v1}, Lj$/util/concurrent/Helpers;->toString([Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method final updateHead(Lj$/util/concurrent/ConcurrentLinkedQueue$Node;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;",
            "Lj$/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 292
    .local p0, "this":Lj$/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, "h":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p2, "p":Lj$/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eq p1, p2, :cond_0

    sget-object v0, Lj$/util/concurrent/ConcurrentLinkedQueue;->HEAD:Lj$/com/android/tools/r8/DesugarVarHandle;

    invoke-virtual {v0, p0, p1, p2}, Lj$/com/android/tools/r8/DesugarVarHandle;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    sget-object v0, Lj$/util/concurrent/ConcurrentLinkedQueue;->NEXT:Lj$/com/android/tools/r8/DesugarVarHandle;

    invoke-virtual {v0, p1, p1}, Lj$/com/android/tools/r8/DesugarVarHandle;->setRelease(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 294
    :cond_0
    return-void
.end method
