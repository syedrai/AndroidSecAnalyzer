.class Lj$/util/stream/DoublePipeline$4$1;
.super Lj$/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/DoublePipeline$4;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedDouble<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$mapper:Ljava/util/function/DoubleToLongFunction;


# direct methods
.method constructor <init>(Lj$/util/stream/DoublePipeline$4;Lj$/util/stream/Sink;Ljava/util/function/DoubleToLongFunction;)V
    .locals 0
    .param p1, "this$1"    # Lj$/util/stream/DoublePipeline$4;

    .line 249
    .local p0, "this":Lj$/util/stream/DoublePipeline$4$1;, "Ljava/util/stream/DoublePipeline$4$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p3, p0, Lj$/util/stream/DoublePipeline$4$1;->val$mapper:Ljava/util/function/DoubleToLongFunction;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedDouble;-><init>(Lj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 3
    .param p1, "t"    # D

    .line 252
    .local p0, "this":Lj$/util/stream/DoublePipeline$4$1;, "Ljava/util/stream/DoublePipeline$4$1;"
    iget-object v0, p0, Lj$/util/stream/DoublePipeline$4$1;->downstream:Lj$/util/stream/Sink;

    iget-object v1, p0, Lj$/util/stream/DoublePipeline$4$1;->val$mapper:Ljava/util/function/DoubleToLongFunction;

    invoke-interface {v1, p1, p2}, Ljava/util/function/DoubleToLongFunction;->applyAsLong(D)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->accept(J)V

    .line 253
    return-void
.end method
