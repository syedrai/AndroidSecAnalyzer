.class public final Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__EmittersKt;->onCompletion(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,108:1\n143#2,13:109\n156#2,6:123\n326#3:122\n*S KotlinDebug\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n155#1:122\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005H\u0096@\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1",
        "Lkotlinx/coroutines/flow/Flow;",
        "collect",
        "",
        "collector",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field final synthetic $action$inlined:Lkotlin/jvm/functions/Function3;

.field final synthetic $this_onCompletion$inlined:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;->$this_onCompletion$inlined:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;->$action$inlined:Lkotlin/jvm/functions/Function3;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 141
    iget v3, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->label:I

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
    const/4 p1, 0x0

    .local p1, "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/internal/SafeCollector;

    .local v2, "sc":Lkotlinx/coroutines/flow/internal/SafeCollector;
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 126
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 141
    .end local v2    # "sc":Lkotlinx/coroutines/flow/internal/SafeCollector;
    .end local p1    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    :pswitch_1
    const/4 p1, 0x0

    .restart local p1    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v2    # "e":Ljava/lang/Throwable;
    .end local p1    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    :pswitch_2
    move-object p1, p0

    .local p1, "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
    const/4 v3, 0x0

    .local v3, "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    iget-object v4, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    .local v4, "$this$onCompletion_u24lambda_u242":Lkotlinx/coroutines/flow/FlowCollector;
    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 111
    .end local v4    # "$this$onCompletion_u24lambda_u242":Lkotlinx/coroutines/flow/FlowCollector;
    :catchall_1
    move-exception v4

    goto :goto_4

    .line 141
    .end local v3    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    .end local p1    # "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
    :pswitch_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 107
    .local v3, "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
    .local p1, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    move-object v4, p1

    .end local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v4    # "$this$onCompletion_u24lambda_u242":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 p1, 0x0

    .line 109
    .local p1, "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    nop

    .line 110
    :try_start_2
    iget-object v5, v3, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;->$this_onCompletion$inlined:Lkotlinx/coroutines/flow/Flow;

    iput-object v4, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->label:I

    invoke-interface {v5, v4, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne v5, v2, :cond_1

    .line 141
    .end local v3    # "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
    return-object v2

    .line 110
    .restart local v3    # "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
    :cond_1
    move-object v8, v3

    move v3, p1

    move-object p1, v8

    .local v3, "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    .local p1, "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
    :goto_1
    nop

    .line 121
    new-instance v5, Lkotlinx/coroutines/flow/internal/SafeCollector;

    .end local v4    # "$this$onCompletion_u24lambda_u242":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v6, 0x0

    .line 122
    .local v6, "$i$f$currentCoroutineContext":I
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v7

    .line 121
    .end local v6    # "$i$f$currentCoroutineContext":I
    invoke-direct {v5, v4, v7}, Lkotlinx/coroutines/flow/internal/SafeCollector;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)V

    .line 123
    .local v5, "sc":Lkotlinx/coroutines/flow/internal/SafeCollector;
    nop

    .line 124
    :try_start_3
    iget-object v4, p1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;->$action$inlined:Lkotlin/jvm/functions/Function3;

    iput-object v5, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->label:I

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local p1    # "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
    if-ne v4, v2, :cond_2

    .line 141
    return-object v2

    .line 124
    :cond_2
    move p1, v3

    move-object v2, v5

    .line 126
    .end local v3    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    .end local v5    # "sc":Lkotlinx/coroutines/flow/internal/SafeCollector;
    .local v2, "sc":Lkotlinx/coroutines/flow/internal/SafeCollector;
    .local p1, "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    :goto_2
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/internal/SafeCollector;->releaseIntercepted()V

    .line 127
    .end local v2    # "sc":Lkotlinx/coroutines/flow/internal/SafeCollector;
    nop

    .line 128
    .restart local v2    # "sc":Lkotlinx/coroutines/flow/internal/SafeCollector;
    nop

    .line 107
    .end local v2    # "sc":Lkotlinx/coroutines/flow/internal/SafeCollector;
    .end local p1    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 108
    return-object p1

    .line 126
    .restart local v3    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    .restart local v5    # "sc":Lkotlinx/coroutines/flow/internal/SafeCollector;
    :catchall_2
    move-exception p1

    move v2, v3

    move-object v3, p1

    move p1, v2

    move-object v2, v5

    .end local v3    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    .end local v5    # "sc":Lkotlinx/coroutines/flow/internal/SafeCollector;
    .restart local v2    # "sc":Lkotlinx/coroutines/flow/internal/SafeCollector;
    .restart local p1    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    :goto_3
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/internal/SafeCollector;->releaseIntercepted()V

    throw v3

    .line 111
    .end local v2    # "sc":Lkotlinx/coroutines/flow/internal/SafeCollector;
    .local v3, "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
    :catchall_3
    move-exception v4

    move-object v8, v3

    move v3, p1

    move-object p1, v8

    .line 117
    .local v3, "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    .local v4, "e":Ljava/lang/Throwable;
    .local p1, "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
    :goto_4
    new-instance v5, Lkotlinx/coroutines/flow/ThrowingCollector;

    invoke-direct {v5, v4}, Lkotlinx/coroutines/flow/ThrowingCollector;-><init>(Ljava/lang/Throwable;)V

    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v6, p1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;->$action$inlined:Lkotlin/jvm/functions/Function3;

    iput-object v4, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1;->label:I

    invoke-static {v5, v6, v4, v0}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt;->access$invokeSafely$FlowKt__EmittersKt(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/functions/Function3;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
    if-ne p1, v2, :cond_3

    .line 141
    return-object v2

    .line 117
    :cond_3
    move p1, v3

    move-object v2, v4

    .line 118
    .end local v3    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    .end local v4    # "e":Ljava/lang/Throwable;
    .local v2, "e":Ljava/lang/Throwable;
    .local p1, "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1":I
    :goto_5
    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
