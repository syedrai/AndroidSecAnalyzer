.class Lj$/util/stream/SliceOps$4;
.super Lj$/util/stream/DoublePipeline$StatefulOp;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/SliceOps;->makeDouble(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/DoublePipeline$StatefulOp<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$limit:J

.field final synthetic val$skip:J


# direct methods
.method constructor <init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;IJJ)V
    .locals 0
    .param p2, "inputShape"    # Lj$/util/stream/StreamShape;
    .param p3, "opFlags"    # I

    .line 449
    .local p1, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    iput-wide p4, p0, Lj$/util/stream/SliceOps$4;->val$skip:J

    iput-wide p6, p0, Lj$/util/stream/SliceOps$4;->val$limit:J

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/DoublePipeline$StatefulOp;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;I)V

    return-void
.end method

.method static synthetic lambda$opEvaluateParallelLazy$0(I)[Ljava/lang/Double;
    .locals 1
    .param p0, "x$0"    # I

    .line 476
    new-array v0, p0, [Ljava/lang/Double;

    return-object v0
.end method


# virtual methods
.method opEvaluateParallel(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/function/IntFunction<",
            "[",
            "Ljava/lang/Double;",
            ">;)",
            "Lj$/util/stream/Node<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 485
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Double;>;"
    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v6

    .line 486
    .local v6, "size":J
    const-wide/16 v1, 0x0

    const/4 v8, 0x1

    cmp-long v3, v6, v1

    if-lez v3, :cond_0

    const/16 v1, 0x4000

    move-object/from16 v3, p2

    invoke-interface {v3, v1}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    invoke-virtual/range {p1 .. p1}, Lj$/util/stream/PipelineHelper;->getSourceShape()Lj$/util/stream/StreamShape;

    move-result-object v9

    iget-wide v11, p0, Lj$/util/stream/SliceOps$4;->val$skip:J

    iget-wide v13, p0, Lj$/util/stream/SliceOps$4;->val$limit:J

    move-object v10, v3

    invoke-static/range {v9 .. v14}, Lj$/util/stream/SliceOps;->-$$Nest$smsliceSpliterator(Lj$/util/stream/StreamShape;Lj$/util/Spliterator;JJ)Lj$/util/Spliterator;

    move-result-object v1

    .line 493
    .local v1, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    move-object/from16 v9, p1

    invoke-static {v9, v1, v8}, Lj$/util/stream/Nodes;->collectDouble(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Z)Lj$/util/stream/Node$OfDouble;

    move-result-object v2

    return-object v2

    .line 486
    .end local v1    # "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    :cond_0
    move-object/from16 v9, p1

    .line 494
    sget-object v1, Lj$/util/stream/StreamOpFlag;->ORDERED:Lj$/util/stream/StreamOpFlag;

    invoke-virtual {v9}, Lj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 495
    nop

    .line 496
    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/PipelineHelper;->wrapSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v1

    check-cast v1, Lj$/util/Spliterator$OfDouble;

    iget-wide v2, p0, Lj$/util/stream/SliceOps$4;->val$skip:J

    iget-wide v4, p0, Lj$/util/stream/SliceOps$4;->val$limit:J

    .line 495
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lj$/util/stream/SliceOps$4;->unorderedSkipLimitSpliterator(Lj$/util/Spliterator$OfDouble;JJJ)Lj$/util/Spliterator$OfDouble;

    move-result-object v1

    .line 502
    move-wide v10, v6

    .end local v6    # "size":J
    .local v1, "s":Lj$/util/Spliterator$OfDouble;
    .local v10, "size":J
    invoke-static {p0, v1, v8}, Lj$/util/stream/Nodes;->collectDouble(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Z)Lj$/util/stream/Node$OfDouble;

    move-result-object v2

    return-object v2

    .line 505
    .end local v1    # "s":Lj$/util/Spliterator$OfDouble;
    .end local v10    # "size":J
    .restart local v6    # "size":J
    :cond_1
    new-instance v1, Lj$/util/stream/SliceOps$SliceTask;

    iget-wide v5, p0, Lj$/util/stream/SliceOps$4;->val$skip:J

    iget-wide v7, p0, Lj$/util/stream/SliceOps$4;->val$limit:J

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v0, v1

    move-object v2, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lj$/util/stream/SliceOps$SliceTask;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    .line 506
    invoke-virtual {v0}, Lj$/util/stream/SliceOps$SliceTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Node;

    .line 505
    return-object v0
.end method

.method opEvaluateParallelLazy(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;)",
            "Lj$/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 464
    .local p1, "helper":Lj$/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v6

    .line 465
    .local v6, "size":J
    const-wide/16 v1, 0x0

    cmp-long v3, v6, v1

    if-lez v3, :cond_0

    const/16 v1, 0x4000

    move-object/from16 v8, p2

    invoke-interface {v8, v1}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 466
    new-instance v9, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;

    .line 467
    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/PipelineHelper;->wrapSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lj$/util/Spliterator$OfDouble;

    iget-wide v11, p0, Lj$/util/stream/SliceOps$4;->val$skip:J

    iget-wide v1, p0, Lj$/util/stream/SliceOps$4;->val$skip:J

    iget-wide v3, p0, Lj$/util/stream/SliceOps$4;->val$limit:J

    .line 469
    invoke-static {v1, v2, v3, v4}, Lj$/util/stream/SliceOps;->-$$Nest$smcalcSliceFence(JJ)J

    move-result-wide v13

    invoke-direct/range {v9 .. v14}, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;-><init>(Lj$/util/Spliterator$OfDouble;JJ)V

    .line 466
    return-object v9

    .line 465
    :cond_0
    move-object/from16 v8, p2

    .line 470
    :cond_1
    sget-object v1, Lj$/util/stream/StreamOpFlag;->ORDERED:Lj$/util/stream/StreamOpFlag;

    invoke-virtual/range {p1 .. p1}, Lj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 471
    nop

    .line 472
    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/PipelineHelper;->wrapSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v1

    check-cast v1, Lj$/util/Spliterator$OfDouble;

    iget-wide v2, p0, Lj$/util/stream/SliceOps$4;->val$skip:J

    iget-wide v4, p0, Lj$/util/stream/SliceOps$4;->val$limit:J

    .line 471
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lj$/util/stream/SliceOps$4;->unorderedSkipLimitSpliterator(Lj$/util/Spliterator$OfDouble;JJJ)Lj$/util/Spliterator$OfDouble;

    move-result-object v1

    move-wide v9, v6

    .end local v6    # "size":J
    .local v9, "size":J
    return-object v1

    .line 476
    .end local v9    # "size":J
    .restart local v6    # "size":J
    :cond_2
    new-instance v1, Lj$/util/stream/SliceOps$SliceTask;

    new-instance v4, Lj$/util/stream/SliceOps$4$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lj$/util/stream/SliceOps$4$$ExternalSyntheticLambda0;-><init>()V

    iget-wide v5, p0, Lj$/util/stream/SliceOps$4;->val$skip:J

    iget-wide v7, p0, Lj$/util/stream/SliceOps$4;->val$limit:J

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v0, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lj$/util/stream/SliceOps$SliceTask;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    .line 477
    invoke-virtual {v0}, Lj$/util/stream/SliceOps$SliceTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Node;

    invoke-interface {v0}, Lj$/util/stream/Node;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    .line 476
    return-object v0
.end method

.method opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
    .locals 7
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lj$/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;)",
            "Lj$/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 512
    .local p2, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Double;>;"
    new-instance v0, Lj$/util/stream/SliceOps$4$1;

    iget-wide v3, p0, Lj$/util/stream/SliceOps$4;->val$skip:J

    iget-wide v5, p0, Lj$/util/stream/SliceOps$4;->val$limit:J

    move-object v1, p0

    move-object v2, p2

    .end local p2    # "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Double;>;"
    .local v2, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Double;>;"
    invoke-direct/range {v0 .. v6}, Lj$/util/stream/SliceOps$4$1;-><init>(Lj$/util/stream/SliceOps$4;Lj$/util/stream/Sink;JJ)V

    return-object v0
.end method

.method unorderedSkipLimitSpliterator(Lj$/util/Spliterator$OfDouble;JJJ)Lj$/util/Spliterator$OfDouble;
    .locals 6
    .param p1, "s"    # Lj$/util/Spliterator$OfDouble;
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .param p6, "sizeIfKnown"    # J

    .line 452
    cmp-long v0, p2, p6

    if-gtz v0, :cond_1

    .line 455
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    sub-long v0, p6, p2

    if-ltz v2, :cond_0

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    move-wide p4, v0

    .line 456
    const-wide/16 p2, 0x0

    move-wide v2, p2

    move-wide v4, p4

    goto :goto_0

    .line 452
    :cond_1
    move-wide v2, p2

    move-wide v4, p4

    .line 458
    .end local p2    # "skip":J
    .end local p4    # "limit":J
    .local v2, "skip":J
    .local v4, "limit":J
    :goto_0
    new-instance v0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;

    move-object v1, p1

    .end local p1    # "s":Lj$/util/Spliterator$OfDouble;
    .local v1, "s":Lj$/util/Spliterator$OfDouble;
    invoke-direct/range {v0 .. v5}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;-><init>(Lj$/util/Spliterator$OfDouble;JJ)V

    return-object v0
.end method
