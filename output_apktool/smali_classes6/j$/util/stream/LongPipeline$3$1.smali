.class Lj$/util/stream/LongPipeline$3$1;
.super Lj$/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/LongPipeline$3;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedLong<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$mapper:Ljava/util/function/LongUnaryOperator;


# direct methods
.method constructor <init>(Lj$/util/stream/LongPipeline$3;Lj$/util/stream/Sink;Ljava/util/function/LongUnaryOperator;)V
    .locals 0
    .param p1, "this$1"    # Lj$/util/stream/LongPipeline$3;

    .line 225
    .local p0, "this":Lj$/util/stream/LongPipeline$3$1;, "Ljava/util/stream/LongPipeline$3$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p3, p0, Lj$/util/stream/LongPipeline$3$1;->val$mapper:Ljava/util/function/LongUnaryOperator;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedLong;-><init>(Lj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 3
    .param p1, "t"    # J

    .line 228
    .local p0, "this":Lj$/util/stream/LongPipeline$3$1;, "Ljava/util/stream/LongPipeline$3$1;"
    iget-object v0, p0, Lj$/util/stream/LongPipeline$3$1;->downstream:Lj$/util/stream/Sink;

    iget-object v1, p0, Lj$/util/stream/LongPipeline$3$1;->val$mapper:Ljava/util/function/LongUnaryOperator;

    invoke-interface {v1, p1, p2}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->accept(J)V

    .line 229
    return-void
.end method
