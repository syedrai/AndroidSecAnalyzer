.class final enum Lcom/google/common/graph/Traverser$InsertionOrder$1;
.super Lcom/google/common/graph/Traverser$InsertionOrder;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Traverser$InsertionOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .line 485
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/graph/Traverser$InsertionOrder;-><init>(Ljava/lang/String;ILcom/google/common/graph/Traverser-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/graph/Traverser-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/graph/Traverser$InsertionOrder$1;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method insertInto(Ljava/util/Deque;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deque",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 488
    .local p1, "deque":Ljava/util/Deque;, "Ljava/util/Deque<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 489
    return-void
.end method
