.class Lj$/util/stream/IntPipeline$10;
.super Lj$/util/stream/IntPipeline$StatelessOp;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/IntPipeline;->peek(Ljava/util/function/IntConsumer;)Lj$/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/IntPipeline$StatelessOp<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Ljava/util/function/IntConsumer;


# direct methods
.method constructor <init>(Lj$/util/stream/IntPipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/IntConsumer;)V
    .locals 0
    .param p1, "this$0"    # Lj$/util/stream/IntPipeline;
    .param p3, "inputShape"    # Lj$/util/stream/StreamShape;
    .param p4, "opFlags"    # I

    .line 380
    .local p0, "this":Lj$/util/stream/IntPipeline$10;, "Ljava/util/stream/IntPipeline$10;"
    .local p2, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    iput-object p5, p0, Lj$/util/stream/IntPipeline$10;->val$action:Ljava/util/function/IntConsumer;

    invoke-direct {p0, p2, p3, p4}, Lj$/util/stream/IntPipeline$StatelessOp;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
    .locals 2
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lj$/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lj$/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 383
    .local p0, "this":Lj$/util/stream/IntPipeline$10;, "Ljava/util/stream/IntPipeline$10;"
    .local p2, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Integer;>;"
    new-instance v0, Lj$/util/stream/IntPipeline$10$1;

    iget-object v1, p0, Lj$/util/stream/IntPipeline$10;->val$action:Ljava/util/function/IntConsumer;

    invoke-direct {v0, p0, p2, v1}, Lj$/util/stream/IntPipeline$10$1;-><init>(Lj$/util/stream/IntPipeline$10;Lj$/util/stream/Sink;Ljava/util/function/IntConsumer;)V

    return-object v0
.end method
