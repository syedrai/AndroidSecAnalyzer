.class public final synthetic Lcom/google/common/collect/Streams$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic f$0:[Lj$/util/stream/IntStream;


# direct methods
.method public synthetic constructor <init>([Lj$/util/stream/IntStream;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda1;->f$0:[Lj$/util/stream/IntStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda1;->f$0:[Lj$/util/stream/IntStream;

    invoke-static {v0}, Lcom/google/common/collect/Streams;->lambda$concat$3([Lj$/util/stream/IntStream;)V

    return-void
.end method
