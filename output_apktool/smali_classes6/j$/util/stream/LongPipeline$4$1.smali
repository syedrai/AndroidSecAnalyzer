.class Lj$/util/stream/LongPipeline$4$1;
.super Lj$/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/LongPipeline$4;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedLong<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$mapper:Ljava/util/function/LongToIntFunction;


# direct methods
.method constructor <init>(Lj$/util/stream/LongPipeline$4;Lj$/util/stream/Sink;Ljava/util/function/LongToIntFunction;)V
    .locals 0
    .param p1, "this$1"    # Lj$/util/stream/LongPipeline$4;

    .line 248
    .local p0, "this":Lj$/util/stream/LongPipeline$4$1;, "Ljava/util/stream/LongPipeline$4$1;"
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p3, p0, Lj$/util/stream/LongPipeline$4$1;->val$mapper:Ljava/util/function/LongToIntFunction;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedLong;-><init>(Lj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 2
    .param p1, "t"    # J

    .line 251
    .local p0, "this":Lj$/util/stream/LongPipeline$4$1;, "Ljava/util/stream/LongPipeline$4$1;"
    iget-object v0, p0, Lj$/util/stream/LongPipeline$4$1;->downstream:Lj$/util/stream/Sink;

    iget-object v1, p0, Lj$/util/stream/LongPipeline$4$1;->val$mapper:Ljava/util/function/LongToIntFunction;

    invoke-interface {v1, p1, p2}, Ljava/util/function/LongToIntFunction;->applyAsInt(J)I

    move-result v1

    invoke-interface {v0, v1}, Lj$/util/stream/Sink;->accept(I)V

    .line 252
    return-void
.end method
