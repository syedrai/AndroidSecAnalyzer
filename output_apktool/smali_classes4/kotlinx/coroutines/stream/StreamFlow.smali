.class final Lkotlinx/coroutines/stream/StreamFlow;
.super Ljava/lang/Object;
.source "Stream.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001e\u0010\n\u001a\u00020\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007H\u0096@\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u000cR\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlinx/coroutines/stream/StreamFlow;",
        "T",
        "Lkotlinx/coroutines/flow/Flow;",
        "j$/util/stream/Stream",
        "stream",
        "<init>",
        "(Lj$/util/stream/Stream;)V",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "collector",
        "",
        "collect",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lj$/util/stream/Stream;",
        "Lkotlinx/atomicfu/AtomicBoolean;",
        "consumed",
        "Lkotlinx/atomicfu/AtomicBoolean;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final consumed:Lkotlinx/atomicfu/AtomicBoolean;

.field private final stream:Lj$/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj$/util/stream/Stream;)V
    .locals 1
    .param p1, "stream"    # Lj$/util/stream/Stream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Stream<",
            "TT;>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/stream/StreamFlow;->stream:Lj$/util/stream/Stream;

    .line 16
    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/stream/StreamFlow;->consumed:Lkotlinx/atomicfu/AtomicBoolean;

    .line 15
    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "collector",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/stream/StreamFlow$collect$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;

    iget v1, v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/stream/StreamFlow$collect$1;-><init>(Lkotlinx/coroutines/stream/StreamFlow;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 18
    iget v3, v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    move-object p1, p0

    .local p1, "this":Lkotlinx/coroutines/stream/StreamFlow;
    iget-object v3, v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    iget-object v5, v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    .local v5, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 25
    .end local v5    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 18
    .end local p1    # "this":Lkotlinx/coroutines/stream/StreamFlow;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 19
    .local v3, "this":Lkotlinx/coroutines/stream/StreamFlow;
    .local p1, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    iget-object v5, v3, Lkotlinx/coroutines/stream/StreamFlow;->consumed:Lkotlinx/atomicfu/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 20
    nop

    .line 21
    :try_start_1
    iget-object v5, v3, Lkotlinx/coroutines/stream/StreamFlow;->stream:Lj$/util/stream/Stream;

    invoke-interface {v5}, Lj$/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v8, v5

    move-object v5, p1

    move-object p1, v3

    move-object v3, v8

    .end local v3    # "this":Lkotlinx/coroutines/stream/StreamFlow;
    .restart local v5    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .local p1, "this":Lkotlinx/coroutines/stream/StreamFlow;
    :goto_1
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 22
    .local v6, "value":Ljava/lang/Object;
    iput-object v5, v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->label:I

    invoke-interface {v5, v6, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v6    # "value":Ljava/lang/Object;
    if-ne v7, v2, :cond_1

    .line 18
    .end local p1    # "this":Lkotlinx/coroutines/stream/StreamFlow;
    return-object v2

    .line 22
    .restart local p1    # "this":Lkotlinx/coroutines/stream/StreamFlow;
    :cond_1
    :goto_2
    goto :goto_1

    .line 25
    .end local v5    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    :cond_2
    iget-object v2, p1, Lkotlinx/coroutines/stream/StreamFlow;->stream:Lj$/util/stream/Stream;

    invoke-interface {v2}, Lj$/util/stream/Stream;->close()V

    .line 26
    .end local p1    # "this":Lkotlinx/coroutines/stream/StreamFlow;
    nop

    .line 27
    .restart local p1    # "this":Lkotlinx/coroutines/stream/StreamFlow;
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 25
    .end local p1    # "this":Lkotlinx/coroutines/stream/StreamFlow;
    .restart local v3    # "this":Lkotlinx/coroutines/stream/StreamFlow;
    :catchall_1
    move-exception v2

    move-object p1, v3

    .end local v3    # "this":Lkotlinx/coroutines/stream/StreamFlow;
    .restart local p1    # "this":Lkotlinx/coroutines/stream/StreamFlow;
    :goto_3
    iget-object v3, p1, Lkotlinx/coroutines/stream/StreamFlow;->stream:Lj$/util/stream/Stream;

    invoke-interface {v3}, Lj$/util/stream/Stream;->close()V

    throw v2

    .line 19
    .end local p1    # "this":Lkotlinx/coroutines/stream/StreamFlow;
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v2, "Stream.consumeAsFlow can be collected only once"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
