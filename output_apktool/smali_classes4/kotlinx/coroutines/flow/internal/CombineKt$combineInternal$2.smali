.class final Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Combine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/internal/CombineKt;->combineInternal(Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2"
    f = "Combine.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x33,
        0x49,
        0x4c
    }
    m = "invokeSuspend"
    n = {
        "latestValues",
        "resultChannel",
        "lastReceivedEpoch",
        "remainingAbsentValues",
        "currentEpoch",
        "latestValues",
        "resultChannel",
        "lastReceivedEpoch",
        "remainingAbsentValues",
        "currentEpoch",
        "latestValues",
        "resultChannel",
        "lastReceivedEpoch",
        "remainingAbsentValues",
        "currentEpoch"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field final synthetic $arrayFactory:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "[TT;>;"
        }
    .end annotation
.end field

.field final synthetic $flows:[Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "TR;>;"
        }
    .end annotation
.end field

.field final synthetic $transform:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TR;>;[TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>([Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$flows",
            "$arrayFactory",
            "$transform",
            "$this_combineInternal",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function0<",
            "[TT;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TR;>;-[TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Lkotlin/jvm/functions/Function3;

    iput-object p4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/Flow;

    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Lkotlin/jvm/functions/Function3;

    iget-object v4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;-><init>([Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p1",
            "p2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$result"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 16
    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    packed-switch v2, :pswitch_data_0

    .end local p0    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local p0    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    :pswitch_0
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    iget v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    .local v3, "currentEpoch":B
    iget v4, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    .local v4, "remainingAbsentValues":I
    iget-object v5, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    check-cast v5, [B

    .local v5, "lastReceivedEpoch":[B
    iget-object v6, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/Channel;

    .local v6, "resultChannel":Lkotlinx/coroutines/channels/Channel;
    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    .local v7, "latestValues":[Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v10, v4

    move v4, v3

    move-object v3, v5

    move v5, v10

    move-object v15, v6

    move-object v6, v0

    move-object v10, v7

    goto/16 :goto_6

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v3    # "currentEpoch":B
    .end local v4    # "remainingAbsentValues":I
    .end local v5    # "lastReceivedEpoch":[B
    .end local v6    # "resultChannel":Lkotlinx/coroutines/channels/Channel;
    .end local v7    # "latestValues":[Ljava/lang/Object;
    :pswitch_1
    move-object/from16 v2, p1

    .restart local v2    # "$result":Ljava/lang/Object;
    iget v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    .restart local v3    # "currentEpoch":B
    iget v4, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    .restart local v4    # "remainingAbsentValues":I
    iget-object v5, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    check-cast v5, [B

    .restart local v5    # "lastReceivedEpoch":[B
    iget-object v6, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/Channel;

    .restart local v6    # "resultChannel":Lkotlinx/coroutines/channels/Channel;
    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    .restart local v7    # "latestValues":[Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v10, v4

    move v4, v3

    move-object v3, v5

    move v5, v10

    move-object v15, v6

    move-object v6, v0

    move-object v10, v7

    goto/16 :goto_5

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v3    # "currentEpoch":B
    .end local v4    # "remainingAbsentValues":I
    .end local v5    # "lastReceivedEpoch":[B
    .end local v6    # "resultChannel":Lkotlinx/coroutines/channels/Channel;
    .end local v7    # "latestValues":[Ljava/lang/Object;
    :pswitch_2
    move-object/from16 v2, p1

    .restart local v2    # "$result":Ljava/lang/Object;
    iget v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    .restart local v3    # "currentEpoch":B
    iget v4, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    .restart local v4    # "remainingAbsentValues":I
    iget-object v5, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    check-cast v5, [B

    .restart local v5    # "lastReceivedEpoch":[B
    iget-object v6, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/Channel;

    .restart local v6    # "resultChannel":Lkotlinx/coroutines/channels/Channel;
    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    .restart local v7    # "latestValues":[Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v2

    check-cast v8, Lkotlinx/coroutines/channels/ChannelResult;

    invoke-virtual {v8}, Lkotlinx/coroutines/channels/ChannelResult;->unbox-impl()Ljava/lang/Object;

    move-result-object v8

    move v15, v4

    move v4, v3

    move-object v3, v5

    move v5, v15

    move-object v15, v6

    move-object v6, v0

    goto :goto_2

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v3    # "currentEpoch":B
    .end local v4    # "remainingAbsentValues":I
    .end local v5    # "lastReceivedEpoch":[B
    .end local v6    # "resultChannel":Lkotlinx/coroutines/channels/Channel;
    .end local v7    # "latestValues":[Ljava/lang/Object;
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    .restart local v2    # "$result":Ljava/lang/Object;
    iget-object v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    .line 17
    .local v4, "$this$flowScope":Lkotlinx/coroutines/CoroutineScope;
    iget-object v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/Flow;

    array-length v3, v3

    .line 18
    .local v3, "size":I
    if-nez v3, :cond_0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 19
    :cond_0
    new-array v5, v3, [Ljava/lang/Object;

    .line 20
    .local v5, "latestValues":[Ljava/lang/Object;
    sget-object v6, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->UNINITIALIZED:Lkotlinx/coroutines/internal/Symbol;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    .line 21
    move-object v10, v5

    .end local v5    # "latestValues":[Ljava/lang/Object;
    .local v10, "latestValues":[Ljava/lang/Object;
    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static {v3, v6, v6, v5, v6}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v15

    .line 22
    .local v15, "resultChannel":Lkotlinx/coroutines/channels/Channel;
    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v14, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 23
    .local v14, "nonClosed":Ljava/util/concurrent/atomic/AtomicInteger;
    move/from16 v17, v3

    .line 24
    .local v17, "remainingAbsentValues":I
    const/4 v5, 0x0

    move v13, v5

    .local v13, "i":I
    :goto_0
    if-ge v13, v3, :cond_1

    .line 26
    new-instance v11, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;

    iget-object v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/Flow;

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v16}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;-><init>([Lkotlinx/coroutines/flow/Flow;ILjava/util/concurrent/atomic/AtomicInteger;Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    move-object v7, v11

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 24
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 45
    .end local v4    # "$this$flowScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v13    # "i":I
    .end local v14    # "nonClosed":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_1
    new-array v3, v3, [B

    .line 46
    .local v3, "lastReceivedEpoch":[B
    const/4 v4, 0x0

    move-object v6, v0

    move/from16 v5, v17

    .line 47
    .end local v17    # "remainingAbsentValues":I
    .end local p0    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    .local v4, "currentEpoch":B
    .local v5, "remainingAbsentValues":I
    .local v6, "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    :goto_1
    nop

    .line 48
    add-int/lit8 v7, v4, 0x1

    int-to-byte v4, v7

    .line 51
    move-object v7, v6

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v10, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    iput-object v15, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    iput-object v3, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    iput v5, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    iput v4, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    const/4 v8, 0x1

    iput v8, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    invoke-interface {v15, v7}, Lkotlinx/coroutines/channels/Channel;->receiveCatching-JP2dKIU(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_2

    .line 16
    return-object v1

    .line 51
    :cond_2
    move-object v7, v10

    .end local v10    # "latestValues":[Ljava/lang/Object;
    .restart local v7    # "latestValues":[Ljava/lang/Object;
    :goto_2
    invoke-static {v8}, Lkotlinx/coroutines/channels/ChannelResult;->getOrNull-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/collections/IndexedValue;

    if-nez v8, :cond_3

    .line 80
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 52
    .local v8, "element":Lkotlin/collections/IndexedValue;
    :cond_3
    :goto_3
    nop

    .line 53
    invoke-virtual {v8}, Lkotlin/collections/IndexedValue;->getIndex()I

    move-result v9

    .line 55
    .local v9, "index":I
    aget-object v10, v7, v9

    .line 56
    .local v10, "previous":Ljava/lang/Object;
    invoke-virtual {v8}, Lkotlin/collections/IndexedValue;->getValue()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v7, v9

    .line 57
    .end local v8    # "element":Lkotlin/collections/IndexedValue;
    sget-object v8, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->UNINITIALIZED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v10, v8, :cond_4

    add-int/lit8 v5, v5, -0x1

    .line 60
    .end local v10    # "previous":Ljava/lang/Object;
    :cond_4
    aget-byte v8, v3, v9

    if-eq v8, v4, :cond_6

    .line 61
    int-to-byte v8, v4

    aput-byte v8, v3, v9

    .line 62
    invoke-interface {v15}, Lkotlinx/coroutines/channels/Channel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlinx/coroutines/channels/ChannelResult;->getOrNull-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/collections/IndexedValue;

    if-nez v8, :cond_5

    goto :goto_4

    .end local v9    # "index":I
    .restart local v8    # "element":Lkotlin/collections/IndexedValue;
    :cond_5
    goto :goto_3

    .line 66
    .end local v8    # "element":Lkotlin/collections/IndexedValue;
    :cond_6
    :goto_4
    if-nez v5, :cond_a

    .line 71
    iget-object v8, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Lkotlin/jvm/functions/Function0;

    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    .line 72
    .local v8, "results":[Ljava/lang/Object;
    if-nez v8, :cond_8

    .line 73
    .end local v8    # "results":[Ljava/lang/Object;
    iget-object v8, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Lkotlin/jvm/functions/Function3;

    iget-object v9, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v7, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    iput-object v15, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    iput-object v3, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    iput v5, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    iput v4, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    const/4 v10, 0x2

    iput v10, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    invoke-interface {v8, v9, v7, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_7

    .line 16
    return-object v1

    .line 73
    :cond_7
    move-object v10, v7

    .end local v7    # "latestValues":[Ljava/lang/Object;
    .local v10, "latestValues":[Ljava/lang/Object;
    :goto_5
    goto :goto_1

    .line 75
    .end local v10    # "latestValues":[Ljava/lang/Object;
    .restart local v7    # "latestValues":[Ljava/lang/Object;
    .restart local v8    # "results":[Ljava/lang/Object;
    :cond_8
    const/16 v12, 0xe

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 76
    iget-object v9, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Lkotlin/jvm/functions/Function3;

    iget-object v10, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v7, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    iput-object v15, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    iput-object v3, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    iput v5, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    iput v4, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    const/4 v11, 0x3

    iput v11, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    invoke-interface {v9, v10, v8, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "results":[Ljava/lang/Object;
    if-ne v8, v1, :cond_9

    .line 16
    return-object v1

    .line 76
    :cond_9
    move-object v10, v7

    .end local v7    # "latestValues":[Ljava/lang/Object;
    .restart local v10    # "latestValues":[Ljava/lang/Object;
    :goto_6
    goto/16 :goto_1

    .line 66
    .end local v10    # "latestValues":[Ljava/lang/Object;
    .restart local v7    # "latestValues":[Ljava/lang/Object;
    :cond_a
    move-object v10, v7

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
