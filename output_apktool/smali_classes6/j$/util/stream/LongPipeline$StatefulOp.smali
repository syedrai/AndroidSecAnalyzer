.class abstract Lj$/util/stream/LongPipeline$StatefulOp;
.super Lj$/util/stream/LongPipeline;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/LongPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "StatefulOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/LongPipeline<",
        "TE_IN;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 625
    const-class v0, Lj$/util/stream/LongPipeline;

    return-void
.end method

.method constructor <init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;I)V
    .locals 0
    .param p2, "inputShape"    # Lj$/util/stream/StreamShape;
    .param p3, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/AbstractPipeline<",
            "*TE_IN;*>;",
            "Lj$/util/stream/StreamShape;",
            "I)V"
        }
    .end annotation

    .line 636
    .local p0, "this":Lj$/util/stream/LongPipeline$StatefulOp;, "Ljava/util/stream/LongPipeline$StatefulOp<TE_IN;>;"
    .local p1, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TE_IN;*>;"
    invoke-direct {p0, p1, p3}, Lj$/util/stream/LongPipeline;-><init>(Lj$/util/stream/AbstractPipeline;I)V

    .line 637
    nop

    .line 638
    return-void
.end method


# virtual methods
.method abstract opEvaluateParallel(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/function/IntFunction<",
            "[",
            "Ljava/lang/Long;",
            ">;)",
            "Lj$/util/stream/Node<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method final opIsStateful()Z
    .locals 1

    .line 642
    .local p0, "this":Lj$/util/stream/LongPipeline$StatefulOp;, "Ljava/util/stream/LongPipeline$StatefulOp<TE_IN;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic parallel()Lj$/util/stream/LongStream;
    .locals 1

    .line 625
    .local p0, "this":Lj$/util/stream/LongPipeline$StatefulOp;, "Ljava/util/stream/LongPipeline$StatefulOp<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/LongPipeline;->parallel()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/LongStream;

    return-object v0
.end method

.method public bridge synthetic sequential()Lj$/util/stream/LongStream;
    .locals 1

    .line 625
    .local p0, "this":Lj$/util/stream/LongPipeline$StatefulOp;, "Ljava/util/stream/LongPipeline$StatefulOp<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/LongPipeline;->sequential()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/LongStream;

    return-object v0
.end method
