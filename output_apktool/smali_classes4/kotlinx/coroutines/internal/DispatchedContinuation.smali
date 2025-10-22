.class public final Lkotlinx/coroutines/internal/DispatchedContinuation;
.super Lkotlinx/coroutines/DispatchedTask;
.source "DispatchedContinuation.kt"

# interfaces
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
.implements Lkotlin/coroutines/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/DispatchedTask<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Lkotlin/coroutines/Continuation<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDispatchedContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n+ 5 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 6 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,297:1\n224#1,8:369\n236#1:377\n237#1,2:388\n239#1:392\n154#2,2:298\n154#2,2:300\n154#2,2:302\n154#2,2:304\n1#3:306\n1#3:312\n1#3:353\n277#4,5:307\n282#4,12:313\n294#4:347\n277#4,5:348\n282#4,12:354\n294#4:407\n186#5,3:325\n189#5,14:333\n186#5,3:366\n189#5,14:393\n116#6,5:328\n128#6,10:378\n139#6,2:390\n128#6,13:408\n*S KotlinDebug\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n*L\n214#1:369,8\n215#1:377\n215#1:388,2\n215#1:392\n72#1:298,2\n98#1:300,2\n142#1:302,2\n162#1:304,2\n195#1:312\n213#1:353\n195#1:307,5\n195#1:313,12\n195#1:347\n213#1:348,5\n213#1:354,12\n213#1:407\n195#1:325,3\n195#1:333,14\n213#1:366,3\n213#1:393,14\n196#1:328,5\n215#1:378,10\n215#1:390,2\n236#1:408,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u00042\u0008\u0012\u0004\u0012\u0002H\u00010\u0005B\u001d\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\u0012\u001a\n\u0018\u00010\u0013j\u0004\u0018\u0001`\u0014H\u0016\u00a2\u0006\u0002\u0010\u0015J\r\u0010\u001d\u001a\u00020\u001eH\u0000\u00a2\u0006\u0002\u0008\u001fJ\r\u0010 \u001a\u00020!H\u0000\u00a2\u0006\u0002\u0008\"J\r\u0010#\u001a\u00020!H\u0000\u00a2\u0006\u0002\u0008$J\u0015\u0010%\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u001aH\u0000\u00a2\u0006\u0002\u0008&J\u001b\u0010\'\u001a\u0004\u0018\u00010(2\n\u0010\u0008\u001a\u0006\u0012\u0002\u0008\u00030)H\u0000\u00a2\u0006\u0002\u0008*J\u0015\u0010+\u001a\u00020\u001e2\u0006\u0010,\u001a\u00020(H\u0000\u00a2\u0006\u0002\u0008-J\u000f\u0010.\u001a\u0004\u0018\u00010\u000cH\u0010\u00a2\u0006\u0002\u0008/J\u001b\u00103\u001a\u00020!2\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00028\u000005H\u0016\u00a2\u0006\u0002\u00106J\u001e\u00107\u001a\u00020!2\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00028\u000005H\u0080\u0008\u00a2\u0006\u0004\u00088\u00106J\u0018\u00109\u001a\u00020\u001e2\u0008\u0010:\u001a\u0004\u0018\u00010\u000cH\u0080\u0008\u00a2\u0006\u0002\u0008;J\u001e\u0010<\u001a\u00020!2\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00028\u000005H\u0080\u0008\u00a2\u0006\u0004\u0008=\u00106J\u001f\u0010>\u001a\u00020!2\u0006\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00028\u0000H\u0000\u00a2\u0006\u0004\u0008B\u0010CJ\u0008\u0010D\u001a\u00020EH\u0016R\u0010\u0010\u0006\u001a\u00020\u00078\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u0016\u001a\u00020\u000c8\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0019\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u001a8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u001a\u00100\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00058PX\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u00102R\u0012\u0010?\u001a\u00020@X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008F\u0010G\u00a8\u0006H"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/DispatchedContinuation;",
        "T",
        "Lkotlinx/coroutines/DispatchedTask;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Lkotlinx/coroutines/internal/CoroutineStackFrame;",
        "Lkotlin/coroutines/Continuation;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "continuation",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/Continuation;)V",
        "_state",
        "",
        "get_state$kotlinx_coroutines_core$annotations",
        "()V",
        "callerFrame",
        "getCallerFrame",
        "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "getStackTraceElement",
        "Ljava/lang/StackTraceElement;",
        "Lkotlinx/coroutines/internal/StackTraceElement;",
        "()Ljava/lang/StackTraceElement;",
        "countOrElement",
        "_reusableCancellableContinuation",
        "Lkotlinx/atomicfu/AtomicRef;",
        "reusableCancellableContinuation",
        "Lkotlinx/coroutines/CancellableContinuationImpl;",
        "getReusableCancellableContinuation",
        "()Lkotlinx/coroutines/CancellableContinuationImpl;",
        "isReusable",
        "",
        "isReusable$kotlinx_coroutines_core",
        "awaitReusability",
        "",
        "awaitReusability$kotlinx_coroutines_core",
        "release",
        "release$kotlinx_coroutines_core",
        "claimReusableCancellableContinuation",
        "claimReusableCancellableContinuation$kotlinx_coroutines_core",
        "tryReleaseClaimedContinuation",
        "",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "tryReleaseClaimedContinuation$kotlinx_coroutines_core",
        "postponeCancellation",
        "cause",
        "postponeCancellation$kotlinx_coroutines_core",
        "takeState",
        "takeState$kotlinx_coroutines_core",
        "delegate",
        "getDelegate$kotlinx_coroutines_core",
        "()Lkotlin/coroutines/Continuation;",
        "resumeWith",
        "result",
        "Lkotlin/Result;",
        "(Ljava/lang/Object;)V",
        "resumeCancellableWith",
        "resumeCancellableWith$kotlinx_coroutines_core",
        "resumeCancelled",
        "state",
        "resumeCancelled$kotlinx_coroutines_core",
        "resumeUndispatchedWith",
        "resumeUndispatchedWith$kotlinx_coroutines_core",
        "dispatchYield",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "value",
        "dispatchYield$kotlinx_coroutines_core",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V",
        "toString",
        "",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
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
.field private final _reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/atomicfu/AtomicRef<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public _state:Ljava/lang/Object;

.field public final continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final countOrElement:Ljava/lang/Object;

.field public final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .param p1, "dispatcher"    # Lkotlinx/coroutines/CoroutineDispatcher;
    .param p2, "continuation"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dispatcher",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    .line 15
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lkotlinx/coroutines/DispatchedTask;-><init>(I)V

    .line 13
    iput-object p1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 14
    iput-object p2, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    .line 18
    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->access$getUNDEFINED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 22
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/internal/ThreadContextKt;->threadContextElements(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    .line 52
    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    .line 12
    return-void
.end method

.method private final getReusableCancellableContinuation()Lkotlinx/coroutines/CancellableContinuationImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/CancellableContinuationImpl<",
            "*>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static synthetic get_state$kotlinx_coroutines_core$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final awaitReusability$kotlinx_coroutines_core()V
    .locals 5

    .line 72
    iget-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    .local v0, "$this$loop$iv":Lkotlinx/atomicfu/AtomicRef;
    const/4 v1, 0x0

    .line 298
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 299
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "it":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 73
    .local v3, "$i$a$-loop-DispatchedContinuation$awaitReusability$1":I
    sget-object v4, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    if-eq v2, v4, :cond_0

    return-void

    .line 74
    :cond_0
    nop

    .line 299
    .end local v2    # "it":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop-DispatchedContinuation$awaitReusability$1":I
    goto :goto_0
.end method

.method public final claimReusableCancellableContinuation$kotlinx_coroutines_core()Lkotlinx/coroutines/CancellableContinuationImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/CancellableContinuationImpl<",
            "TT;>;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    .local v0, "$this$loop$iv":Lkotlinx/atomicfu/AtomicRef;
    const/4 v1, 0x0

    .line 300
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 301
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 99
    .local v3, "$i$a$-loop-DispatchedContinuation$claimReusableCancellableContinuation$1":I
    nop

    .line 100
    if-nez v2, :cond_0

    .line 105
    iget-object v4, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    sget-object v5, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {v4, v5}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    .line 106
    const/4 v4, 0x0

    return-object v4

    .line 109
    :cond_0
    instance-of v4, v2, Lkotlinx/coroutines/CancellableContinuationImpl;

    if-eqz v4, :cond_1

    .line 110
    iget-object v4, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    sget-object v5, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {v4, v2, v5}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 111
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/CancellableContinuationImpl;

    return-object v4

    .line 114
    :cond_1
    sget-object v4, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    if-eq v2, v4, :cond_3

    .line 118
    instance-of v4, v2, Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inconsistent state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 124
    :cond_3
    :goto_1
    nop

    .line 301
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop-DispatchedContinuation$claimReusableCancellableContinuation$1":I
    goto :goto_0
.end method

.method public final dispatchYield$kotlinx_coroutines_core(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "TT;)V"
        }
    .end annotation

    .line 243
    iput-object p2, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 244
    const/4 v0, 0x1

    iput v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->resumeMode:I

    .line 245
    iget-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, p1, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 246
    return-void
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 2

    .line 19
    iget-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate$kotlinx_coroutines_core()Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    .line 186
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isReusable$kotlinx_coroutines_core()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final postponeCancellation$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z
    .locals 7
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cause"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    .local v0, "$this$loop$iv":Lkotlinx/atomicfu/AtomicRef;
    const/4 v1, 0x0

    .line 304
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 305
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 163
    .local v3, "$i$a$-loop-DispatchedContinuation$postponeCancellation$1":I
    nop

    .line 164
    sget-object v4, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 165
    iget-object v4, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    sget-object v6, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {v4, v6, p1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 166
    return v5

    .line 168
    :cond_0
    instance-of v4, v2, Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    return v5

    .line 171
    :cond_1
    iget-object v4, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 172
    const/4 v4, 0x0

    return v4

    .line 175
    :cond_2
    nop

    .line 305
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop-DispatchedContinuation$postponeCancellation$1":I
    goto :goto_0
.end method

.method public final release$kotlinx_coroutines_core()V
    .locals 1

    .line 83
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->awaitReusability$kotlinx_coroutines_core()V

    .line 84
    invoke-direct {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getReusableCancellableContinuation()Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChild$kotlinx_coroutines_core()V

    .line 85
    :cond_0
    return-void
.end method

.method public final resumeCancellableWith$kotlinx_coroutines_core(Ljava/lang/Object;)V
    .locals 21
    .param p1, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 207
    .local v2, "$i$f$resumeCancellableWith$kotlinx_coroutines_core":I
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/CompletionStateKt;->toState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 208
    .local v3, "state":Ljava/lang/Object;
    iget-object v0, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {v0, v4}, Lkotlinx/coroutines/CoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 209
    iput-object v3, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 210
    iput v4, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->resumeMode:I

    .line 211
    iget-object v0, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v5}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    move/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v3, p1

    goto/16 :goto_7

    .line 213
    :cond_0
    const/4 v0, 0x1

    .local v0, "mode$iv":I
    move-object/from16 v5, p0

    .local v5, "$this$executeUnconfined_u24default$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    move v6, v0

    .line 348
    .end local v0    # "mode$iv":I
    .local v6, "mode$iv":I
    nop

    .line 349
    const/4 v7, 0x0

    .line 348
    .local v7, "doYield$iv":Z
    const/4 v8, 0x0

    .line 352
    .local v8, "$i$f$executeUnconfined":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    const/4 v0, 0x0

    .line 352
    .local v0, "$i$a$-assert-DispatchedContinuationKt$executeUnconfined$1$iv":I
    nop

    .line 354
    .end local v0    # "$i$a$-assert-DispatchedContinuationKt$executeUnconfined$1$iv":I
    :cond_1
    sget-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->INSTANCE:Lkotlinx/coroutines/ThreadLocalEventLoop;

    invoke-virtual {v0}, Lkotlinx/coroutines/ThreadLocalEventLoop;->getEventLoop$kotlinx_coroutines_core()Lkotlinx/coroutines/EventLoop;

    move-result-object v9

    .line 356
    .local v9, "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    nop

    .line 357
    invoke-virtual {v9}, Lkotlinx/coroutines/EventLoop;->isUnconfinedLoopActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    iput-object v3, v5, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 360
    iput v6, v5, Lkotlinx/coroutines/internal/DispatchedContinuation;->resumeMode:I

    .line 361
    move-object v0, v5

    check-cast v0, Lkotlinx/coroutines/DispatchedTask;

    invoke-virtual {v9, v0}, Lkotlinx/coroutines/EventLoop;->dispatchUnconfined(Lkotlinx/coroutines/DispatchedTask;)V

    .line 362
    move/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v3, p1

    goto/16 :goto_6

    .line 365
    :cond_2
    move-object v10, v5

    check-cast v10, Lkotlinx/coroutines/DispatchedTask;

    .local v10, "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    const/4 v11, 0x0

    .line 366
    .local v11, "$i$f$runUnconfinedEventLoop":I
    invoke-virtual {v9, v4}, Lkotlinx/coroutines/EventLoop;->incrementUseCount(Z)V

    .line 367
    nop

    .line 368
    const/4 v12, 0x0

    .line 214
    .local v12, "$i$a$-executeUnconfined$default-DispatchedContinuation$resumeCancellableWith$1":I
    move-object/from16 v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    const/4 v13, 0x0

    .line 369
    .local v13, "$i$f$resumeCancelled$kotlinx_coroutines_core":I
    :try_start_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v14

    sget-object v15, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v15, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v14, v15}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v14

    check-cast v14, Lkotlinx/coroutines/Job;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 370
    .local v14, "job$iv":Lkotlinx/coroutines/Job;
    if-eqz v14, :cond_3

    :try_start_1
    invoke-interface {v14}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v15

    if-nez v15, :cond_3

    .line 371
    invoke-interface {v14}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v15

    .line 372
    .local v15, "cause$iv":Ljava/util/concurrent/CancellationException;
    move-object v4, v15

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v4}, Lkotlinx/coroutines/internal/DispatchedContinuation;->cancelCompletedResult$kotlinx_coroutines_core(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 373
    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    sget-object v16, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object/from16 v16, v15

    check-cast v16, Ljava/lang/Throwable;

    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v0

    .end local v0    # "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .local v17, "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    invoke-static/range {v16 .. v16}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    const/4 v0, 0x1

    goto :goto_0

    .line 397
    .end local v12    # "$i$a$-executeUnconfined$default-DispatchedContinuation$resumeCancellableWith$1":I
    .end local v13    # "$i$f$resumeCancelled$kotlinx_coroutines_core":I
    .end local v14    # "job$iv":Lkotlinx/coroutines/Job;
    .end local v15    # "cause$iv":Ljava/util/concurrent/CancellationException;
    .end local v17    # "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    :catchall_0
    move-exception v0

    move/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v3, p1

    goto/16 :goto_4

    .line 370
    .restart local v0    # "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .restart local v12    # "$i$a$-executeUnconfined$default-DispatchedContinuation$resumeCancellableWith$1":I
    .restart local v13    # "$i$f$resumeCancelled$kotlinx_coroutines_core":I
    .restart local v14    # "job$iv":Lkotlinx/coroutines/Job;
    :cond_3
    move-object/from16 v17, v0

    .line 376
    .end local v0    # "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .restart local v17    # "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    const/4 v0, 0x0

    .line 214
    .end local v13    # "$i$f$resumeCancelled$kotlinx_coroutines_core":I
    .end local v14    # "job$iv":Lkotlinx/coroutines/Job;
    .end local v17    # "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    :goto_0
    if-nez v0, :cond_9

    .line 215
    move-object/from16 v4, p0

    .local v4, "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    const/4 v13, 0x0

    .line 377
    .local v13, "$i$f$resumeUndispatchedWith$kotlinx_coroutines_core":I
    :try_start_2
    iget-object v0, v4, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    iget-object v14, v4, Lkotlinx/coroutines/internal/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    .local v14, "countOrElement$iv$iv":Ljava/lang/Object;
    move-object v15, v0

    .local v15, "continuation$iv$iv":Lkotlin/coroutines/Continuation;
    const/16 v16, 0x0

    .line 378
    .local v16, "$i$f$withContinuationContext":I
    invoke-interface {v15}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    move-object/from16 v17, v0

    .line 379
    .local v17, "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    move-object/from16 v1, v17

    .end local v17    # "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    .local v1, "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    invoke-static {v1, v14}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    .line 380
    .local v17, "oldValue$iv$iv":Ljava/lang/Object;
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move/from16 v18, v2

    move-object/from16 v2, v17

    .end local v17    # "oldValue$iv$iv":Ljava/lang/Object;
    .local v2, "oldValue$iv$iv":Ljava/lang/Object;
    .local v18, "$i$f$resumeCancellableWith$kotlinx_coroutines_core":I
    if-eq v2, v0, :cond_4

    .line 382
    :try_start_3
    invoke-static {v15, v1, v2}, Lkotlinx/coroutines/CoroutineContextKt;->updateUndispatchedCompletion(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lkotlinx/coroutines/UndispatchedCoroutine;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 397
    .end local v1    # "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v2    # "oldValue$iv$iv":Ljava/lang/Object;
    .end local v4    # "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .end local v12    # "$i$a$-executeUnconfined$default-DispatchedContinuation$resumeCancellableWith$1":I
    .end local v13    # "$i$f$resumeUndispatchedWith$kotlinx_coroutines_core":I
    .end local v14    # "countOrElement$iv$iv":Ljava/lang/Object;
    .end local v15    # "continuation$iv$iv":Lkotlin/coroutines/Continuation;
    .end local v16    # "$i$f$withContinuationContext":I
    :catchall_1
    move-exception v0

    move-object/from16 v20, v3

    move-object/from16 v3, p1

    goto :goto_4

    .line 384
    .restart local v1    # "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    .restart local v2    # "oldValue$iv$iv":Ljava/lang/Object;
    .restart local v4    # "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .restart local v12    # "$i$a$-executeUnconfined$default-DispatchedContinuation$resumeCancellableWith$1":I
    .restart local v13    # "$i$f$resumeUndispatchedWith$kotlinx_coroutines_core":I
    .restart local v14    # "countOrElement$iv$iv":Ljava/lang/Object;
    .restart local v15    # "continuation$iv$iv":Lkotlin/coroutines/Continuation;
    .restart local v16    # "$i$f$withContinuationContext":I
    :cond_4
    const/4 v0, 0x0

    .line 380
    :goto_1
    move-object/from16 v17, v0

    .line 386
    .local v17, "undispatchedCompletion$iv$iv":Lkotlinx/coroutines/UndispatchedCoroutine;
    nop

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "$i$a$-withContinuationContext-DispatchedContinuation$resumeUndispatchedWith$1$iv":I
    move/from16 v19, v0

    .end local v0    # "$i$a$-withContinuationContext-DispatchedContinuation$resumeUndispatchedWith$1$iv":I
    .local v19, "$i$a$-withContinuationContext-DispatchedContinuation$resumeUndispatchedWith$1$iv":I
    :try_start_4
    iget-object v0, v4, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v20, v3

    move-object/from16 v3, p1

    .end local v3    # "state":Ljava/lang/Object;
    .local v20, "state":Ljava/lang/Object;
    :try_start_5
    invoke-interface {v0, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 389
    nop

    .end local v19    # "$i$a$-withContinuationContext-DispatchedContinuation$resumeUndispatchedWith$1$iv":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 387
    nop

    .line 390
    if-eqz v17, :cond_5

    :try_start_6
    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 391
    :cond_5
    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :cond_6
    nop

    .line 387
    nop

    .line 392
    .end local v1    # "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v2    # "oldValue$iv$iv":Ljava/lang/Object;
    .end local v14    # "countOrElement$iv$iv":Ljava/lang/Object;
    .end local v15    # "continuation$iv$iv":Lkotlin/coroutines/Continuation;
    .end local v16    # "$i$f$withContinuationContext":I
    .end local v17    # "undispatchedCompletion$iv$iv":Lkotlinx/coroutines/UndispatchedCoroutine;
    goto :goto_3

    .line 390
    .restart local v1    # "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    .restart local v2    # "oldValue$iv$iv":Ljava/lang/Object;
    .restart local v14    # "countOrElement$iv$iv":Ljava/lang/Object;
    .restart local v15    # "continuation$iv$iv":Lkotlin/coroutines/Continuation;
    .restart local v16    # "$i$f$withContinuationContext":I
    .restart local v17    # "undispatchedCompletion$iv$iv":Lkotlinx/coroutines/UndispatchedCoroutine;
    :catchall_2
    move-exception v0

    goto :goto_2

    .end local v20    # "state":Ljava/lang/Object;
    .restart local v3    # "state":Ljava/lang/Object;
    :catchall_3
    move-exception v0

    move-object/from16 v20, v3

    move-object/from16 v3, p1

    .end local v3    # "state":Ljava/lang/Object;
    .restart local v20    # "state":Ljava/lang/Object;
    :goto_2
    if-eqz v17, :cond_7

    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 391
    :cond_7
    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :cond_8
    nop

    .end local v5    # "$this$executeUnconfined_u24default$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .end local v6    # "mode$iv":I
    .end local v7    # "doYield$iv":Z
    .end local v8    # "$i$f$executeUnconfined":I
    .end local v9    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    .end local v10    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .end local v11    # "$i$f$runUnconfinedEventLoop":I
    .end local v18    # "$i$f$resumeCancellableWith$kotlinx_coroutines_core":I
    .end local v20    # "state":Ljava/lang/Object;
    .end local p1    # "result":Ljava/lang/Object;
    throw v0

    .line 214
    .end local v1    # "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v4    # "this_$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .end local v13    # "$i$f$resumeUndispatchedWith$kotlinx_coroutines_core":I
    .end local v14    # "countOrElement$iv$iv":Ljava/lang/Object;
    .end local v15    # "continuation$iv$iv":Lkotlin/coroutines/Continuation;
    .end local v16    # "$i$f$withContinuationContext":I
    .end local v17    # "undispatchedCompletion$iv$iv":Lkotlinx/coroutines/UndispatchedCoroutine;
    .local v2, "$i$f$resumeCancellableWith$kotlinx_coroutines_core":I
    .restart local v3    # "state":Ljava/lang/Object;
    .restart local v5    # "$this$executeUnconfined_u24default$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .restart local v6    # "mode$iv":I
    .restart local v7    # "doYield$iv":Z
    .restart local v8    # "$i$f$executeUnconfined":I
    .restart local v9    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    .restart local v10    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .restart local v11    # "$i$f$runUnconfinedEventLoop":I
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_9
    move/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v3, p1

    .line 217
    .end local v2    # "$i$f$resumeCancellableWith$kotlinx_coroutines_core":I
    .end local v3    # "state":Ljava/lang/Object;
    .restart local v18    # "$i$f$resumeCancellableWith$kotlinx_coroutines_core":I
    .restart local v20    # "state":Ljava/lang/Object;
    :goto_3
    nop

    .line 368
    .end local v12    # "$i$a$-executeUnconfined$default-DispatchedContinuation$resumeCancellableWith$1":I
    nop

    .line 393
    :cond_a
    nop

    .line 395
    invoke-virtual {v9}, Lkotlinx/coroutines/EventLoop;->processUnconfinedEvent()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-nez v0, :cond_a

    goto :goto_5

    .line 397
    :catchall_4
    move-exception v0

    goto :goto_4

    .end local v18    # "$i$f$resumeCancellableWith$kotlinx_coroutines_core":I
    .end local v20    # "state":Ljava/lang/Object;
    .restart local v2    # "$i$f$resumeCancellableWith$kotlinx_coroutines_core":I
    .restart local v3    # "state":Ljava/lang/Object;
    :catchall_5
    move-exception v0

    move/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v3, p1

    .line 402
    .end local v2    # "$i$f$resumeCancellableWith$kotlinx_coroutines_core":I
    .end local v3    # "state":Ljava/lang/Object;
    .local v0, "e$iv$iv":Ljava/lang/Throwable;
    .restart local v18    # "$i$f$resumeCancellableWith$kotlinx_coroutines_core":I
    .restart local v20    # "state":Ljava/lang/Object;
    :goto_4
    :try_start_7
    invoke-virtual {v10, v0}, Lkotlinx/coroutines/DispatchedTask;->handleFatalException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 404
    .end local v0    # "e$iv$iv":Ljava/lang/Throwable;
    :goto_5
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lkotlinx/coroutines/EventLoop;->decrementUseCount(Z)V

    .line 405
    nop

    .line 406
    nop

    .line 407
    .end local v10    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .end local v11    # "$i$f$runUnconfinedEventLoop":I
    nop

    .line 357
    :goto_6
    nop

    .line 219
    .end local v5    # "$this$executeUnconfined_u24default$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .end local v6    # "mode$iv":I
    .end local v7    # "doYield$iv":Z
    .end local v8    # "$i$f$executeUnconfined":I
    .end local v9    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    :goto_7
    return-void

    .line 404
    .restart local v5    # "$this$executeUnconfined_u24default$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .restart local v6    # "mode$iv":I
    .restart local v7    # "doYield$iv":Z
    .restart local v8    # "$i$f$executeUnconfined":I
    .restart local v9    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    .restart local v10    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .restart local v11    # "$i$f$runUnconfinedEventLoop":I
    :catchall_6
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lkotlinx/coroutines/EventLoop;->decrementUseCount(Z)V

    throw v0
.end method

.method public final resumeCancelled$kotlinx_coroutines_core(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "state"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x0

    .line 224
    .local v0, "$i$f$resumeCancelled$kotlinx_coroutines_core":I
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v2, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Job;

    .line 225
    .local v1, "job":Lkotlinx/coroutines/Job;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 226
    invoke-interface {v1}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v2

    .line 227
    .local v2, "cause":Ljava/util/concurrent/CancellationException;
    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, v3}, Lkotlinx/coroutines/internal/DispatchedContinuation;->cancelCompletedResult$kotlinx_coroutines_core(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 228
    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v4}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 229
    const/4 v3, 0x1

    return v3

    .line 231
    .end local v2    # "cause":Ljava/util/concurrent/CancellationException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public final resumeUndispatchedWith$kotlinx_coroutines_core(Ljava/lang/Object;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    const/4 v0, 0x0

    .line 236
    .local v0, "$i$f$resumeUndispatchedWith$kotlinx_coroutines_core":I
    iget-object v1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    .local v1, "continuation$iv":Lkotlin/coroutines/Continuation;
    iget-object v2, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    .local v2, "countOrElement$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 408
    .local v3, "$i$f$withContinuationContext":I
    invoke-interface {v1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 409
    .local v4, "context$iv":Lkotlin/coroutines/CoroutineContext;
    invoke-static {v4, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 410
    .local v5, "oldValue$iv":Ljava/lang/Object;
    sget-object v6, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    if-eq v5, v6, :cond_0

    .line 412
    invoke-static {v1, v4, v5}, Lkotlinx/coroutines/CoroutineContextKt;->updateUndispatchedCompletion(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lkotlinx/coroutines/UndispatchedCoroutine;

    move-result-object v6

    goto :goto_0

    .line 414
    :cond_0
    const/4 v6, 0x0

    .line 410
    :goto_0
    nop

    .line 416
    .local v6, "undispatchedCompletion$iv":Lkotlinx/coroutines/UndispatchedCoroutine;
    nop

    .line 417
    const/4 v7, 0x0

    .line 237
    .local v7, "$i$a$-withContinuationContext-DispatchedContinuation$resumeUndispatchedWith$1":I
    :try_start_0
    iget-object v8, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    invoke-interface {v8, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 238
    nop

    .end local v7    # "$i$a$-withContinuationContext-DispatchedContinuation$resumeUndispatchedWith$1":I
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    nop

    .line 419
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 420
    :cond_1
    invoke-static {v4, v5}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :cond_2
    nop

    .line 417
    nop

    .line 239
    .end local v1    # "continuation$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "countOrElement$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$withContinuationContext":I
    .end local v4    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v5    # "oldValue$iv":Ljava/lang/Object;
    .end local v6    # "undispatchedCompletion$iv":Lkotlinx/coroutines/UndispatchedCoroutine;
    return-void

    .line 419
    .restart local v1    # "continuation$iv":Lkotlin/coroutines/Continuation;
    .restart local v2    # "countOrElement$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$withContinuationContext":I
    .restart local v4    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .restart local v5    # "oldValue$iv":Ljava/lang/Object;
    .restart local v6    # "undispatchedCompletion$iv":Lkotlinx/coroutines/UndispatchedCoroutine;
    :catchall_0
    move-exception v7

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 420
    :cond_3
    invoke-static {v4, v5}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :cond_4
    throw v7
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 16
    .param p1, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 189
    move-object/from16 v1, p0

    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/CompletionStateKt;->toState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 190
    .local v2, "state":Ljava/lang/Object;
    iget-object v0, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    invoke-virtual {v0, v3}, Lkotlinx/coroutines/CoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iput-object v2, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 192
    const/4 v0, 0x0

    iput v0, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->resumeMode:I

    .line 193
    iget-object v0, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v4}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    move-object/from16 v1, p1

    goto/16 :goto_4

    .line 195
    :cond_0
    const/4 v3, 0x0

    .local v3, "mode$iv":I
    move-object/from16 v4, p0

    .line 307
    .local v4, "$this$executeUnconfined_u24default$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    nop

    .line 308
    const/4 v5, 0x0

    .line 307
    .local v5, "doYield$iv":Z
    const/4 v6, 0x0

    .line 311
    .local v6, "$i$f$executeUnconfined":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    const/4 v0, 0x0

    .line 311
    .local v0, "$i$a$-assert-DispatchedContinuationKt$executeUnconfined$1$iv":I
    nop

    .line 313
    .end local v0    # "$i$a$-assert-DispatchedContinuationKt$executeUnconfined$1$iv":I
    :cond_1
    sget-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->INSTANCE:Lkotlinx/coroutines/ThreadLocalEventLoop;

    invoke-virtual {v0}, Lkotlinx/coroutines/ThreadLocalEventLoop;->getEventLoop$kotlinx_coroutines_core()Lkotlinx/coroutines/EventLoop;

    move-result-object v7

    .line 315
    .local v7, "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    nop

    .line 316
    invoke-virtual {v7}, Lkotlinx/coroutines/EventLoop;->isUnconfinedLoopActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    iput-object v2, v4, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 319
    iput v3, v4, Lkotlinx/coroutines/internal/DispatchedContinuation;->resumeMode:I

    .line 320
    move-object v0, v4

    check-cast v0, Lkotlinx/coroutines/DispatchedTask;

    invoke-virtual {v7, v0}, Lkotlinx/coroutines/EventLoop;->dispatchUnconfined(Lkotlinx/coroutines/DispatchedTask;)V

    .line 321
    move-object/from16 v1, p1

    goto :goto_3

    .line 324
    :cond_2
    move-object v8, v4

    check-cast v8, Lkotlinx/coroutines/DispatchedTask;

    .local v8, "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    const/4 v9, 0x0

    .line 325
    .local v9, "$i$f$runUnconfinedEventLoop":I
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lkotlinx/coroutines/EventLoop;->incrementUseCount(Z)V

    .line 326
    nop

    .line 327
    const/4 v11, 0x0

    .line 196
    .local v11, "$i$a$-executeUnconfined$default-DispatchedContinuation$resumeWith$1":I
    :try_start_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iget-object v12, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    .local v12, "countOrElement$iv":Ljava/lang/Object;
    move-object v13, v0

    .local v13, "context$iv":Lkotlin/coroutines/CoroutineContext;
    const/4 v14, 0x0

    .line 328
    .local v14, "$i$f$withCoroutineContext":I
    invoke-static {v13, v12}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v15, v0

    .line 329
    .local v15, "oldValue$iv":Ljava/lang/Object;
    nop

    .line 330
    const/4 v0, 0x0

    .line 197
    .local v0, "$i$a$-withCoroutineContext-DispatchedContinuation$resumeWith$1$1":I
    :try_start_1
    iget-object v10, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p1

    :try_start_2
    invoke-interface {v10, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 198
    nop

    .end local v0    # "$i$a$-withCoroutineContext-DispatchedContinuation$resumeWith$1$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    nop

    .line 332
    :try_start_3
    invoke-static {v13, v15}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 330
    nop

    .line 199
    .end local v12    # "countOrElement$iv":Ljava/lang/Object;
    .end local v13    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v14    # "$i$f$withCoroutineContext":I
    .end local v15    # "oldValue$iv":Ljava/lang/Object;
    nop

    .line 327
    .end local v11    # "$i$a$-executeUnconfined$default-DispatchedContinuation$resumeWith$1":I
    nop

    .line 333
    :cond_3
    nop

    .line 335
    invoke-virtual {v7}, Lkotlinx/coroutines/EventLoop;->processUnconfinedEvent()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 332
    .restart local v11    # "$i$a$-executeUnconfined$default-DispatchedContinuation$resumeWith$1":I
    .restart local v12    # "countOrElement$iv":Ljava/lang/Object;
    .restart local v13    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .restart local v14    # "$i$f$withCoroutineContext":I
    .restart local v15    # "oldValue$iv":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v1, p1

    :goto_0
    invoke-static {v13, v15}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "mode$iv":I
    .end local v4    # "$this$executeUnconfined_u24default$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .end local v5    # "doYield$iv":Z
    .end local v6    # "$i$f$executeUnconfined":I
    .end local v7    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    .end local v8    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .end local v9    # "$i$f$runUnconfinedEventLoop":I
    .end local p1    # "result":Ljava/lang/Object;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 337
    .end local v11    # "$i$a$-executeUnconfined$default-DispatchedContinuation$resumeWith$1":I
    .end local v12    # "countOrElement$iv":Ljava/lang/Object;
    .end local v13    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v14    # "$i$f$withCoroutineContext":I
    .end local v15    # "oldValue$iv":Ljava/lang/Object;
    .restart local v2    # "state":Ljava/lang/Object;
    .restart local v3    # "mode$iv":I
    .restart local v4    # "$this$executeUnconfined_u24default$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .restart local v5    # "doYield$iv":Z
    .restart local v6    # "$i$f$executeUnconfined":I
    .restart local v7    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    .restart local v8    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .restart local v9    # "$i$f$runUnconfinedEventLoop":I
    .restart local p1    # "result":Ljava/lang/Object;
    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object/from16 v1, p1

    .line 342
    .local v0, "e$iv$iv":Ljava/lang/Throwable;
    :goto_1
    :try_start_4
    invoke-virtual {v8, v0}, Lkotlinx/coroutines/DispatchedTask;->handleFatalException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 344
    .end local v0    # "e$iv$iv":Ljava/lang/Throwable;
    :goto_2
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lkotlinx/coroutines/EventLoop;->decrementUseCount(Z)V

    .line 345
    nop

    .line 346
    nop

    .line 347
    .end local v8    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .end local v9    # "$i$f$runUnconfinedEventLoop":I
    nop

    .line 316
    :goto_3
    nop

    .line 201
    .end local v3    # "mode$iv":I
    .end local v4    # "$this$executeUnconfined_u24default$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .end local v5    # "doYield$iv":Z
    .end local v6    # "$i$f$executeUnconfined":I
    .end local v7    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    :goto_4
    return-void

    .line 344
    .restart local v3    # "mode$iv":I
    .restart local v4    # "$this$executeUnconfined_u24default$iv":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .restart local v5    # "doYield$iv":Z
    .restart local v6    # "$i$f$executeUnconfined":I
    .restart local v7    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    .restart local v8    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .restart local v9    # "$i$f$runUnconfinedEventLoop":I
    :catchall_4
    move-exception v0

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lkotlinx/coroutines/EventLoop;->decrementUseCount(Z)V

    throw v0
.end method

.method public takeState$kotlinx_coroutines_core()Ljava/lang/Object;
    .locals 3

    .line 179
    iget-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 180
    .local v0, "state":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    const/4 v1, 0x0

    .line 180
    .local v1, "$i$a$-assert-DispatchedContinuation$takeState$1":I
    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->access$getUNDEFINED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .end local v1    # "$i$a$-assert-DispatchedContinuation$takeState$1":I
    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 181
    :cond_2
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->access$getUNDEFINED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 182
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 249
    iget-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlinx/coroutines/DebugStringsKt;->toDebugString(Lkotlin/coroutines/Continuation;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DispatchedContinuation["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tryReleaseClaimedContinuation$kotlinx_coroutines_core(Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Throwable;
    .locals 7
    .param p1, "continuation"    # Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    .local v0, "$this$loop$iv":Lkotlinx/atomicfu/AtomicRef;
    const/4 v1, 0x0

    .line 302
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 303
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 144
    .local v3, "$i$a$-loop-DispatchedContinuation$tryReleaseClaimedContinuation$1":I
    nop

    .line 145
    sget-object v4, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    .line 146
    iget-object v4, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    sget-object v6, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {v4, v6, p1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v5

    .line 154
    :cond_0
    nop

    .line 303
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop-DispatchedContinuation$tryReleaseClaimedContinuation$1":I
    goto :goto_0

    .line 148
    .restart local v2    # "state":Ljava/lang/Object;
    .restart local v3    # "$i$a$-loop-DispatchedContinuation$tryReleaseClaimedContinuation$1":I
    :cond_1
    instance-of v4, v2, Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 149
    iget-object v4, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v4, v2, v5}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 150
    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    return-object v4

    .line 149
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Failed requirement."

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 150
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inconsistent state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
