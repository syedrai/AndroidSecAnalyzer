.class Lj$/util/stream/ReferencePipeline$2;
.super Lj$/util/stream/ReferencePipeline$StatelessOp;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/ReferencePipeline;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/ReferencePipeline$StatelessOp<",
        "TP_OUT;TP_OUT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$predicate:Ljava/util/function/Predicate;


# direct methods
.method constructor <init>(Lj$/util/stream/ReferencePipeline;Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/Predicate;)V
    .locals 0
    .param p1, "this$0"    # Lj$/util/stream/ReferencePipeline;
    .param p3, "inputShape"    # Lj$/util/stream/StreamShape;
    .param p4, "opFlags"    # I

    .line 165
    .local p0, "this":Lj$/util/stream/ReferencePipeline$2;, "Ljava/util/stream/ReferencePipeline$2;"
    .local p2, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TP_OUT;*>;"
    iput-object p5, p0, Lj$/util/stream/ReferencePipeline$2;->val$predicate:Ljava/util/function/Predicate;

    invoke-direct {p0, p2, p3, p4}, Lj$/util/stream/ReferencePipeline$StatelessOp;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;I)V

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
            "TP_OUT;>;)",
            "Lj$/util/stream/Sink<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 168
    .local p0, "this":Lj$/util/stream/ReferencePipeline$2;, "Ljava/util/stream/ReferencePipeline$2;"
    .local p2, "sink":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<TP_OUT;>;"
    new-instance v0, Lj$/util/stream/ReferencePipeline$2$1;

    iget-object v1, p0, Lj$/util/stream/ReferencePipeline$2;->val$predicate:Ljava/util/function/Predicate;

    invoke-direct {v0, p0, p2, v1}, Lj$/util/stream/ReferencePipeline$2$1;-><init>(Lj$/util/stream/ReferencePipeline$2;Lj$/util/stream/Sink;Ljava/util/function/Predicate;)V

    return-object v0
.end method
