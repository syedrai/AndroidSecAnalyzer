.class final Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;
.super Lj$/util/stream/Nodes$SizedCollectorTask;
.source "Nodes.java"

# interfaces
.implements Lj$/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Nodes$SizedCollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/Nodes$SizedCollectorTask<",
        "TP_IN;",
        "Ljava/lang/Double;",
        "Lj$/util/stream/Sink$OfDouble;",
        "Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble<",
        "TP_IN;>;>;",
        "Lj$/util/stream/Sink$OfDouble;"
    }
.end annotation


# instance fields
.field private final array:[D


# direct methods
.method constructor <init>(Lj$/util/Spliterator;Lj$/util/stream/PipelineHelper;[D)V
    .locals 1
    .param p3, "array"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TP_IN;>;",
            "Lj$/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;[D)V"
        }
    .end annotation

    .line 2006
    .local p0, "this":Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble<TP_IN;>;"
    .local p1, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p2, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    array-length v0, p3

    invoke-direct {p0, p1, p2, v0}, Lj$/util/stream/Nodes$SizedCollectorTask;-><init>(Lj$/util/Spliterator;Lj$/util/stream/PipelineHelper;I)V

    .line 2007
    iput-object p3, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;->array:[D

    .line 2008
    return-void
.end method

.method constructor <init>(Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;Lj$/util/Spliterator;JJ)V
    .locals 9
    .param p3, "offset"    # J
    .param p5, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble<",
            "TP_IN;>;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;JJ)V"
        }
    .end annotation

    .line 2012
    .local p0, "this":Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble<TP_IN;>;"
    .local p1, "parent":Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble<TP_IN;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    iget-object v0, p1, Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;->array:[D

    array-length v8, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .end local p1    # "parent":Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble<TP_IN;>;"
    .end local p2    # "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .end local p3    # "offset":J
    .end local p5    # "length":J
    .local v2, "parent":Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble<TP_IN;>;"
    .local v3, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local v4, "offset":J
    .local v6, "length":J
    invoke-direct/range {v1 .. v8}, Lj$/util/stream/Nodes$SizedCollectorTask;-><init>(Lj$/util/stream/Nodes$SizedCollectorTask;Lj$/util/Spliterator;JJI)V

    .line 2013
    iget-object p1, v2, Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;->array:[D

    iput-object p1, v1, Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;->array:[D

    .line 2014
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 3
    .param p1, "value"    # D

    .line 2024
    .local p0, "this":Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble<TP_IN;>;"
    iget v0, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;->index:I

    iget v1, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;->fence:I

    if-ge v0, v1, :cond_0

    .line 2027
    iget-object v0, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;->array:[D

    iget v1, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;->index:I

    aput-wide p1, v0, v1

    .line 2028
    return-void

    .line 2025
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget v1, p0, Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic accept(Ljava/lang/Double;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Sink$OfDouble$-CC;->$default$accept(Lj$/util/stream/Sink$OfDouble;Ljava/lang/Double;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Sink$OfDouble$-CC;->$default$accept(Lj$/util/stream/Sink$OfDouble;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/DoubleConsumer$-CC;->$default$andThen(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;

    move-result-object p1

    return-object p1
.end method

.method makeChild(Lj$/util/Spliterator;JJ)Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;
    .locals 7
    .param p2, "offset"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TP_IN;>;JJ)",
            "Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble<",
            "TP_IN;>;"
        }
    .end annotation

    .line 2019
    .local p0, "this":Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble<TP_IN;>;"
    .local p1, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .end local p2    # "offset":J
    .end local p4    # "size":J
    .local v2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local v3, "offset":J
    .local v5, "size":J
    invoke-direct/range {v0 .. v6}, Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;-><init>(Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;Lj$/util/Spliterator;JJ)V

    return-object v0
.end method

.method bridge synthetic makeChild(Lj$/util/Spliterator;JJ)Lj$/util/stream/Nodes$SizedCollectorTask;
    .locals 0

    .line 1999
    .local p0, "this":Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble<TP_IN;>;"
    invoke-virtual/range {p0 .. p5}, Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;->makeChild(Lj$/util/Spliterator;JJ)Lj$/util/stream/Nodes$SizedCollectorTask$OfDouble;

    move-result-object p1

    return-object p1
.end method
