.class final Lkotlinx/coroutines/ThreadState;
.super Lkotlinx/coroutines/JobNode;
.source "Interruptible.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInterruptible.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Interruptible.kt\nkotlinx/coroutines/ThreadState\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,161:1\n350#2,2:162\n350#2,2:164\n350#2,2:166\n*S KotlinDebug\n*F\n+ 1 Interruptible.kt\nkotlinx/coroutines/ThreadState\n*L\n103#1:162,2\n118#1:164,2\n142#1:166,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0010J\u0012\u0010\u0014\u001a\u00020\u00102\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n \u0008*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lkotlinx/coroutines/ThreadState;",
        "Lkotlinx/coroutines/JobNode;",
        "<init>",
        "()V",
        "_state",
        "Lkotlinx/atomicfu/AtomicInt;",
        "targetThread",
        "Ljava/lang/Thread;",
        "kotlin.jvm.PlatformType",
        "cancelHandle",
        "Lkotlinx/coroutines/DisposableHandle;",
        "onCancelling",
        "",
        "getOnCancelling",
        "()Z",
        "setup",
        "",
        "job",
        "Lkotlinx/coroutines/Job;",
        "clearInterrupt",
        "invoke",
        "cause",
        "",
        "invalidState",
        "",
        "state",
        "",
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
.field private final _state:Lkotlinx/atomicfu/AtomicInt;

.field private cancelHandle:Lkotlinx/coroutines/DisposableHandle;

.field private final targetThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lkotlinx/coroutines/JobNode;-><init>()V

    .line 92
    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/ThreadState;->_state:Lkotlinx/atomicfu/AtomicInt;

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/ThreadState;->targetThread:Ljava/lang/Thread;

    .line 62
    return-void
.end method

.method private final invalidState(I)Ljava/lang/Void;
    .locals 3
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final clearInterrupt()V
    .locals 6

    .line 118
    iget-object v0, p0, Lkotlinx/coroutines/ThreadState;->_state:Lkotlinx/atomicfu/AtomicInt;

    .local v0, "$this$loop$iv":Lkotlinx/atomicfu/AtomicInt;
    const/4 v1, 0x0

    .line 164
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 165
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->getValue()I

    move-result v2

    .local v2, "state":I
    const/4 v3, 0x0

    .line 119
    .local v3, "$i$a$-loop-ThreadState$clearInterrupt$1":I
    packed-switch v2, :pswitch_data_0

    .line 135
    :pswitch_0
    invoke-direct {p0, v2}, Lkotlinx/coroutines/ThreadState;->invalidState(I)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4

    .line 132
    :pswitch_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 133
    return-void

    .line 122
    :pswitch_2
    goto :goto_1

    .line 120
    :pswitch_3
    iget-object v4, p0, Lkotlinx/coroutines/ThreadState;->_state:Lkotlinx/atomicfu/AtomicInt;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    iget-object v4, p0, Lkotlinx/coroutines/ThreadState;->cancelHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 122
    :cond_0
    return-void

    .line 137
    :cond_1
    :goto_1
    nop

    .line 165
    .end local v2    # "state":I
    .end local v3    # "$i$a$-loop-ThreadState$clearInterrupt$1":I
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getOnCancelling()Z
    .locals 1

    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public invoke(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cause"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lkotlinx/coroutines/ThreadState;->_state:Lkotlinx/atomicfu/AtomicInt;

    .local v0, "$this$loop$iv":Lkotlinx/atomicfu/AtomicInt;
    const/4 v1, 0x0

    .line 166
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 167
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->getValue()I

    move-result v2

    .local v2, "state":I
    const/4 v3, 0x0

    .line 143
    .local v3, "$i$a$-loop-ThreadState$invoke$1":I
    packed-switch v2, :pswitch_data_0

    .line 154
    invoke-direct {p0, v2}, Lkotlinx/coroutines/ThreadState;->invalidState(I)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4

    .line 153
    :pswitch_0
    return-void

    .line 146
    :pswitch_1
    iget-object v4, p0, Lkotlinx/coroutines/ThreadState;->_state:Lkotlinx/atomicfu/AtomicInt;

    const/4 v5, 0x2

    invoke-virtual {v4, v2, v5}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    iget-object v4, p0, Lkotlinx/coroutines/ThreadState;->targetThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 148
    iget-object v4, p0, Lkotlinx/coroutines/ThreadState;->_state:Lkotlinx/atomicfu/AtomicInt;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V

    .line 149
    return-void

    .line 156
    :cond_0
    nop

    .line 167
    .end local v2    # "state":I
    .end local v3    # "$i$a$-loop-ThreadState$invoke$1":I
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final setup(Lkotlinx/coroutines/Job;)V
    .locals 6
    .param p1, "job"    # Lkotlinx/coroutines/Job;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "job"
        }
    .end annotation

    .line 101
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/JobNode;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Lkotlinx/coroutines/JobKt;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZLkotlinx/coroutines/JobNode;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/ThreadState;->cancelHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 103
    iget-object v0, p0, Lkotlinx/coroutines/ThreadState;->_state:Lkotlinx/atomicfu/AtomicInt;

    .local v0, "$this$loop$iv":Lkotlinx/atomicfu/AtomicInt;
    const/4 v1, 0x0

    .line 162
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 163
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->getValue()I

    move-result v2

    .local v2, "state":I
    const/4 v4, 0x0

    .line 104
    .local v4, "$i$a$-loop-ThreadState$setup$1":I
    packed-switch v2, :pswitch_data_0

    .line 109
    :pswitch_0
    invoke-direct {p0, v2}, Lkotlinx/coroutines/ThreadState;->invalidState(I)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3

    .line 108
    :pswitch_1
    return-void

    .line 106
    :pswitch_2
    iget-object v5, p0, Lkotlinx/coroutines/ThreadState;->_state:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v5, v2, v3}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    .line 111
    :cond_0
    nop

    .line 163
    .end local v2    # "state":I
    .end local v4    # "$i$a$-loop-ThreadState$setup$1":I
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
