.class Lj$/util/stream/IntPipeline$2;
.super Lj$/util/stream/LongPipeline$StatelessOp;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/IntPipeline;->asLongStream()Lj$/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/LongPipeline$StatelessOp<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lj$/util/stream/IntPipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;I)V
    .locals 0
    .param p1, "this$0"    # Lj$/util/stream/IntPipeline;
    .param p3, "inputShape"    # Lj$/util/stream/StreamShape;
    .param p4, "opFlags"    # I

    .line 203
    .local p0, "this":Lj$/util/stream/IntPipeline$2;, "Ljava/util/stream/IntPipeline$2;"
    .local p2, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    invoke-direct {p0, p2, p3, p4}, Lj$/util/stream/LongPipeline$StatelessOp;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lj$/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;)",
            "Lj$/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 206
    .local p0, "this":Lj$/util/stream/IntPipeline$2;, "Ljava/util/stream/IntPipeline$2;"
    .local p2, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Long;>;"
    new-instance v0, Lj$/util/stream/IntPipeline$2$1;

    invoke-direct {v0, p0, p2}, Lj$/util/stream/IntPipeline$2$1;-><init>(Lj$/util/stream/IntPipeline$2;Lj$/util/stream/Sink;)V

    return-object v0
.end method
