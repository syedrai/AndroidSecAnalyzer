.class Lj$/util/stream/IntPipeline$5$1;
.super Lj$/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/IntPipeline$5;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedInt<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$mapper:Ljava/util/function/IntToLongFunction;


# direct methods
.method constructor <init>(Lj$/util/stream/IntPipeline$5;Lj$/util/stream/Sink;Ljava/util/function/IntToLongFunction;)V
    .locals 0
    .param p1, "this$1"    # Lj$/util/stream/IntPipeline$5;

    .line 266
    .local p0, "this":Lj$/util/stream/IntPipeline$5$1;, "Ljava/util/stream/IntPipeline$5$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p3, p0, Lj$/util/stream/IntPipeline$5$1;->val$mapper:Ljava/util/function/IntToLongFunction;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedInt;-><init>(Lj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 3
    .param p1, "t"    # I

    .line 269
    .local p0, "this":Lj$/util/stream/IntPipeline$5$1;, "Ljava/util/stream/IntPipeline$5$1;"
    iget-object v0, p0, Lj$/util/stream/IntPipeline$5$1;->downstream:Lj$/util/stream/Sink;

    iget-object v1, p0, Lj$/util/stream/IntPipeline$5$1;->val$mapper:Ljava/util/function/IntToLongFunction;

    invoke-interface {v1, p1}, Ljava/util/function/IntToLongFunction;->applyAsLong(I)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->accept(J)V

    .line 270
    return-void
.end method
