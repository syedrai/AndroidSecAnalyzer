.class Lj$/util/stream/DoublePipeline$2;
.super Lj$/util/stream/DoublePipeline$StatelessOp;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/DoublePipeline;->map(Ljava/util/function/DoubleUnaryOperator;)Lj$/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/DoublePipeline$StatelessOp<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$mapper:Ljava/util/function/DoubleUnaryOperator;


# direct methods
.method constructor <init>(Lj$/util/stream/DoublePipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/DoubleUnaryOperator;)V
    .locals 0
    .param p1, "this$0"    # Lj$/util/stream/DoublePipeline;
    .param p3, "inputShape"    # Lj$/util/stream/StreamShape;
    .param p4, "opFlags"    # I

    .line 206
    .local p0, "this":Lj$/util/stream/DoublePipeline$2;, "Ljava/util/stream/DoublePipeline$2;"
    .local p2, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    iput-object p5, p0, Lj$/util/stream/DoublePipeline$2;->val$mapper:Ljava/util/function/DoubleUnaryOperator;

    invoke-direct {p0, p2, p3, p4}, Lj$/util/stream/DoublePipeline$StatelessOp;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;I)V

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
            "Ljava/lang/Double;",
            ">;)",
            "Lj$/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 209
    .local p0, "this":Lj$/util/stream/DoublePipeline$2;, "Ljava/util/stream/DoublePipeline$2;"
    .local p2, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Double;>;"
    new-instance v0, Lj$/util/stream/DoublePipeline$2$1;

    iget-object v1, p0, Lj$/util/stream/DoublePipeline$2;->val$mapper:Ljava/util/function/DoubleUnaryOperator;

    invoke-direct {v0, p0, p2, v1}, Lj$/util/stream/DoublePipeline$2$1;-><init>(Lj$/util/stream/DoublePipeline$2;Lj$/util/stream/Sink;Ljava/util/function/DoubleUnaryOperator;)V

    return-object v0
.end method
