.class public Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;
.super Ljava/lang/Object;
.source "Semaphore.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSemaphore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreAndMutexImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 5 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 6 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreSegment\n*L\n1#1,396:1\n200#1,10:410\n200#1,10:420\n1#2:397\n369#3,12:398\n68#4,3:430\n41#4:433\n42#4,8:436\n68#4,3:447\n41#4:450\n42#4,8:453\n154#5,2:434\n154#5,2:451\n374#6:444\n374#6:445\n366#6:446\n377#6:461\n366#6:462\n374#6:463\n*S KotlinDebug\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreAndMutexImpl\n*L\n192#1:410,10\n216#1:420,10\n182#1:398,12\n284#1:430,3\n284#1:433\n284#1:436,8\n318#1:447,3\n318#1:450\n318#1:453,8\n284#1:434,2\n318#1:451,2\n288#1:444\n294#1:445\n308#1:446\n323#1:461\n329#1:462\n332#1:463\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0010\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0006\u0010\u0018\u001a\u00020\u0019J\u000e\u0010\u001a\u001a\u00020\u0016H\u0086@\u00a2\u0006\u0002\u0010\u001bJ\u000e\u0010\u001c\u001a\u00020\u0016H\u0082@\u00a2\u0006\u0002\u0010\u001bJ\u0016\u0010\u001a\u001a\u00020\u00162\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u001eH\u0005Jb\u0010\u001a\u001a\u00020\u0016\"\u0004\u0008\u0000\u0010\u001f2\u0006\u0010\u001d\u001a\u0002H\u001f2!\u0010 \u001a\u001d\u0012\u0013\u0012\u0011H\u001f\u00a2\u0006\u000c\u0008\"\u0012\u0008\u0008#\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u00190!2!\u0010$\u001a\u001d\u0012\u0013\u0012\u0011H\u001f\u00a2\u0006\u000c\u0008\"\u0012\u0008\u0008#\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u00160!H\u0083\u0008\u00a2\u0006\u0002\u0010%J\u001e\u0010&\u001a\u00020\u00162\n\u0010\'\u001a\u0006\u0012\u0002\u0008\u00030(2\u0008\u0010)\u001a\u0004\u0018\u00010\u0001H\u0004J\u0008\u0010*\u001a\u00020\u0003H\u0002J\u0006\u0010+\u001a\u00020\u0016J\u0008\u0010,\u001a\u00020\u0016H\u0002J\u0010\u0010-\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020.H\u0002J\u0008\u0010/\u001a\u00020\u0019H\u0002J\u000c\u00100\u001a\u00020\u0019*\u00020\u0001H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0010\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R&\u0010\u0013\u001a\u001a\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00160\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;",
        "",
        "permits",
        "",
        "acquiredPermits",
        "<init>",
        "(II)V",
        "head",
        "Lkotlinx/atomicfu/AtomicRef;",
        "Lkotlinx/coroutines/sync/SemaphoreSegment;",
        "deqIdx",
        "Lkotlinx/atomicfu/AtomicLong;",
        "tail",
        "enqIdx",
        "_availablePermits",
        "Lkotlinx/atomicfu/AtomicInt;",
        "availablePermits",
        "getAvailablePermits",
        "()I",
        "onCancellationRelease",
        "Lkotlin/Function3;",
        "",
        "",
        "Lkotlin/coroutines/CoroutineContext;",
        "tryAcquire",
        "",
        "acquire",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "acquireSlowPath",
        "waiter",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "W",
        "suspend",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "onAcquired",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "onAcquireRegFunction",
        "select",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "ignoredParam",
        "decPermits",
        "release",
        "coerceAvailablePermitsAtMaximum",
        "addAcquireToQueue",
        "Lkotlinx/coroutines/Waiter;",
        "tryResumeNextFromQueue",
        "tryResumeAcquire",
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
.field private final _availablePermits:Lkotlinx/atomicfu/AtomicInt;

.field private final deqIdx:Lkotlinx/atomicfu/AtomicLong;

.field private final enqIdx:Lkotlinx/atomicfu/AtomicLong;

.field private final head:Lkotlinx/atomicfu/AtomicRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/atomicfu/AtomicRef<",
            "Lkotlinx/coroutines/sync/SemaphoreSegment;",
            ">;"
        }
    .end annotation
.end field

.field private final onCancellationRelease:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final permits:I

.field private final tail:Lkotlinx/atomicfu/AtomicRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/atomicfu/AtomicRef<",
            "Lkotlinx/coroutines/sync/SemaphoreSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$quHWd3GaEfdSVzfk9OcZcQLfclQ(Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;Ljava/lang/Throwable;Lkotlin/Unit;Lkotlin/coroutines/CoroutineContext;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->onCancellationRelease$lambda$2(Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;Ljava/lang/Throwable;Lkotlin/Unit;Lkotlin/coroutines/CoroutineContext;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(II)V
    .locals 5
    .param p1, "permits"    # I
    .param p2, "acquiredPermits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "permits",
            "acquiredPermits"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->permits:I

    .line 127
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->atomic(J)Lkotlinx/atomicfu/AtomicLong;

    move-result-object v2

    iput-object v2, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->deqIdx:Lkotlinx/atomicfu/AtomicLong;

    .line 129
    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->atomic(J)Lkotlinx/atomicfu/AtomicLong;

    move-result-object v2

    iput-object v2, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->enqIdx:Lkotlinx/atomicfu/AtomicLong;

    .line 131
    nop

    .line 132
    iget v2, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->permits:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 133
    if-ltz p2, :cond_1

    iget v2, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->permits:I

    if-gt p2, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 134
    new-instance v2, Lkotlinx/coroutines/sync/SemaphoreSegment;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, v0, v1, v3, v4}, Lkotlinx/coroutines/sync/SemaphoreSegment;-><init>(JLkotlinx/coroutines/sync/SemaphoreSegment;I)V

    .line 135
    .local v2, "s":Lkotlinx/coroutines/sync/SemaphoreSegment;
    invoke-static {v2}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->head:Lkotlinx/atomicfu/AtomicRef;

    .line 136
    invoke-static {v2}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->tail:Lkotlinx/atomicfu/AtomicRef;

    .line 137
    .end local v2    # "s":Lkotlinx/coroutines/sync/SemaphoreSegment;
    nop

    .line 146
    iget v0, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->permits:I

    sub-int/2addr v0, p2

    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->_availablePermits:Lkotlinx/atomicfu/AtomicInt;

    .line 149
    new-instance v0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;)V

    iput-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->onCancellationRelease:Lkotlin/jvm/functions/Function3;

    .line 90
    return-void

    .line 397
    :cond_2
    const/4 v0, 0x0

    .line 133
    .local v0, "$i$a$-require-SemaphoreAndMutexImpl$2":I
    iget v1, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->permits:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The number of acquired permits should be in 0.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-SemaphoreAndMutexImpl$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 397
    :cond_3
    const/4 v0, 0x0

    .line 132
    .local v0, "$i$a$-require-SemaphoreAndMutexImpl$1":I
    iget v1, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->permits:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Semaphore should have at least 1 permit, but had "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-SemaphoreAndMutexImpl$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final synthetic access$acquireSlowPath(Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 89
    invoke-direct {p0, p1}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->acquireSlowPath(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$addAcquireToQueue(Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;Lkotlinx/coroutines/Waiter;)Z
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;
    .param p1, "waiter"    # Lkotlinx/coroutines/Waiter;

    .line 89
    invoke-direct {p0, p1}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->addAcquireToQueue(Lkotlinx/coroutines/Waiter;)Z

    move-result v0

    return v0
.end method

.method private final acquire(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1, "waiter"    # Ljava/lang/Object;
    .param p2, "suspend"    # Lkotlin/jvm/functions/Function1;
    .param p3, "onAcquired"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "waiter",
            "suspend",
            "onAcquired"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<W:",
            "Ljava/lang/Object;",
            ">(TW;",
            "Lkotlin/jvm/functions/Function1<",
            "-TW;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TW;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 200
    .local v0, "$i$f$acquire":I
    :cond_0
    nop

    .line 202
    invoke-direct {p0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->decPermits()I

    move-result v1

    .line 204
    .local v1, "p":I
    if-lez v1, :cond_1

    .line 205
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void

    .line 209
    :cond_1
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void
.end method

.method private final acquireSlowPath(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 182
    const/4 v0, 0x0

    .line 398
    .local v0, "$i$f$suspendCancellableCoroutineReusable":I
    move-object v1, p1

    .local v1, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 399
    .local v2, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    invoke-static {v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/CancellableContinuationKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v3

    .line 400
    .local v3, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    nop

    .line 401
    move-object v4, v3

    .local v4, "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v5, 0x0

    .line 184
    .local v5, "$i$a$-suspendCancellableCoroutineReusable-SemaphoreAndMutexImpl$acquireSlowPath$2":I
    :try_start_0
    move-object v6, v4

    check-cast v6, Lkotlinx/coroutines/Waiter;

    invoke-static {p0, v6}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->access$addAcquireToQueue(Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;Lkotlinx/coroutines/Waiter;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 188
    move-object v6, v4

    check-cast v6, Lkotlinx/coroutines/CancellableContinuation;

    invoke-virtual {p0, v6}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->acquire(Lkotlinx/coroutines/CancellableContinuation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    nop

    .line 401
    .end local v4    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v5    # "$i$a$-suspendCancellableCoroutineReusable-SemaphoreAndMutexImpl$acquireSlowPath$2":I
    :cond_0
    nop

    .line 408
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 398
    .end local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .end local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_2

    return-object v1

    .line 409
    :cond_2
    nop

    .end local v0    # "$i$f$suspendCancellableCoroutineReusable":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 189
    return-object v0

    .line 402
    .restart local v0    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    :catchall_0
    move-exception v4

    .line 405
    .local v4, "e$iv":Ljava/lang/Throwable;
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation$kotlinx_coroutines_core()V

    .line 406
    throw v4
.end method

.method private final addAcquireToQueue(Lkotlinx/coroutines/Waiter;)Z
    .locals 25
    .param p1, "waiter"    # Lkotlinx/coroutines/Waiter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "waiter"
        }
    .end annotation

    .line 281
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->tail:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v2}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/sync/SemaphoreSegment;

    .line 282
    .local v2, "curTail":Lkotlinx/coroutines/sync/SemaphoreSegment;
    iget-object v3, v0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->enqIdx:Lkotlinx/atomicfu/AtomicLong;

    invoke-virtual {v3}, Lkotlinx/atomicfu/AtomicLong;->getAndIncrement()J

    move-result-wide v3

    .line 283
    .local v3, "enqIdx":J
    sget-object v5, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1;->INSTANCE:Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1;

    check-cast v5, Lkotlin/reflect/KFunction;

    .line 284
    .local v5, "createNewSegment":Lkotlin/reflect/KFunction;
    iget-object v6, v0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->tail:Lkotlinx/atomicfu/AtomicRef;

    .local v6, "$this$findSegmentAndMoveForward$iv":Lkotlinx/atomicfu/AtomicRef;
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    move-result v7

    int-to-long v7, v7

    div-long v7, v3, v7

    .local v7, "id$iv":J
    const/4 v9, 0x0

    .line 430
    .local v9, "$i$f$findSegmentAndMoveForward":I
    :goto_0
    nop

    .line 431
    move-object v10, v2

    check-cast v10, Lkotlinx/coroutines/internal/Segment;

    move-object v11, v5

    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v7, v8, v11}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v10

    .line 432
    .local v10, "s$iv":Ljava/lang/Object;
    invoke-static {v10}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-static {v10}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v11

    .local v11, "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    move-object v14, v6

    .local v14, "$this$moveForward$iv$iv":Lkotlinx/atomicfu/AtomicRef;
    const/4 v15, 0x0

    .line 433
    .local v15, "$i$f$moveForward":I
    move-object/from16 v16, v14

    .local v16, "$this$loop$iv$iv$iv":Lkotlinx/atomicfu/AtomicRef;
    const/16 v17, 0x0

    .line 434
    .local v17, "$i$f$loop":I
    :goto_1
    nop

    .line 435
    invoke-virtual/range {v16 .. v16}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v12, v18

    check-cast v12, Lkotlinx/coroutines/internal/Segment;

    .local v12, "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    const/16 v18, 0x0

    .line 436
    .local v18, "$i$a$-loop-ConcurrentLinkedListKt$moveForward$1$iv$iv":I
    move-object/from16 v21, v14

    const/16 v20, 0x1

    .end local v14    # "$this$moveForward$iv$iv":Lkotlinx/atomicfu/AtomicRef;
    .local v21, "$this$moveForward$iv$iv":Lkotlinx/atomicfu/AtomicRef;
    iget-wide v13, v12, Lkotlinx/coroutines/internal/Segment;->id:J

    move-object/from16 v22, v2

    move-wide/from16 v23, v3

    .end local v2    # "curTail":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v3    # "enqIdx":J
    .local v22, "curTail":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .local v23, "enqIdx":J
    iget-wide v2, v11, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v4, v13, v2

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    .line 437
    :cond_0
    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    .line 438
    :cond_1
    move-object/from16 v2, v21

    .end local v21    # "$this$moveForward$iv$iv":Lkotlinx/atomicfu/AtomicRef;
    .local v2, "$this$moveForward$iv$iv":Lkotlinx/atomicfu/AtomicRef;
    invoke-virtual {v2, v12, v11}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 439
    invoke-virtual {v12}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v12}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 440
    :cond_2
    const/4 v2, 0x1

    .line 432
    .end local v2    # "$this$moveForward$iv$iv":Lkotlinx/atomicfu/AtomicRef;
    .end local v11    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v12    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v15    # "$i$f$moveForward":I
    .end local v16    # "$this$loop$iv$iv$iv":Lkotlinx/atomicfu/AtomicRef;
    .end local v17    # "$i$f$loop":I
    .end local v18    # "$i$a$-loop-ConcurrentLinkedListKt$moveForward$1$iv$iv":I
    :goto_2
    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v2, v22

    move-wide/from16 v3, v23

    goto :goto_0

    .line 442
    .restart local v2    # "$this$moveForward$iv$iv":Lkotlinx/atomicfu/AtomicRef;
    .restart local v11    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v12    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v15    # "$i$f$moveForward":I
    .restart local v16    # "$this$loop$iv$iv$iv":Lkotlinx/atomicfu/AtomicRef;
    .restart local v17    # "$i$f$loop":I
    .restart local v18    # "$i$a$-loop-ConcurrentLinkedListKt$moveForward$1$iv$iv":I
    :cond_4
    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 443
    :cond_5
    nop

    .line 435
    .end local v12    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v18    # "$i$a$-loop-ConcurrentLinkedListKt$moveForward$1$iv$iv":I
    move-object v14, v2

    move-object/from16 v2, v22

    move-wide/from16 v3, v23

    goto :goto_1

    .line 432
    .end local v11    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v15    # "$i$f$moveForward":I
    .end local v16    # "$this$loop$iv$iv$iv":Lkotlinx/atomicfu/AtomicRef;
    .end local v17    # "$i$f$loop":I
    .end local v22    # "curTail":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v23    # "enqIdx":J
    .local v2, "curTail":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .restart local v3    # "enqIdx":J
    :cond_6
    move-object/from16 v22, v2

    move-wide/from16 v23, v3

    const/16 v19, 0x0

    const/16 v20, 0x1

    .line 285
    .end local v2    # "curTail":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v3    # "enqIdx":J
    .end local v6    # "$this$findSegmentAndMoveForward$iv":Lkotlinx/atomicfu/AtomicRef;
    .end local v7    # "id$iv":J
    .end local v9    # "$i$f$findSegmentAndMoveForward":I
    .end local v10    # "s$iv":Ljava/lang/Object;
    .restart local v22    # "curTail":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .restart local v23    # "enqIdx":J
    :goto_3
    invoke-static {v10}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/sync/SemaphoreSegment;

    .line 284
    nop

    .line 286
    .local v2, "segment":Lkotlinx/coroutines/sync/SemaphoreSegment;
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    move-result v3

    int-to-long v3, v3

    rem-long v3, v23, v3

    long-to-int v4, v3

    .line 288
    .local v4, "i":I
    const/4 v3, 0x0

    .local v3, "expected$iv":Ljava/lang/Object;
    move-object v6, v2

    .local v6, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v7, 0x0

    .line 444
    .local v7, "$i$f$cas":I
    invoke-virtual {v6}, Lkotlinx/coroutines/sync/SemaphoreSegment;->getAcquirers()Lkotlinx/atomicfu/AtomicArray;

    move-result-object v8

    invoke-virtual {v8, v4}, Lkotlinx/atomicfu/AtomicArray;->get(I)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v8

    invoke-virtual {v8, v3, v1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 288
    .end local v3    # "expected$iv":Ljava/lang/Object;
    .end local v6    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v7    # "$i$f$cas":I
    if-eqz v3, :cond_7

    .line 289
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/internal/Segment;

    invoke-interface {v1, v3, v4}, Lkotlinx/coroutines/Waiter;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V

    .line 290
    return v20

    .line 294
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getPERMIT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    .restart local v3    # "expected$iv":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getTAKEN$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v6

    .local v6, "value$iv":Ljava/lang/Object;
    move-object v7, v2

    .local v7, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v8, 0x0

    .line 445
    .local v8, "$i$f$cas":I
    invoke-virtual {v7}, Lkotlinx/coroutines/sync/SemaphoreSegment;->getAcquirers()Lkotlinx/atomicfu/AtomicArray;

    move-result-object v9

    invoke-virtual {v9, v4}, Lkotlinx/atomicfu/AtomicArray;->get(I)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v9

    invoke-virtual {v9, v3, v6}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 294
    .end local v3    # "expected$iv":Ljava/lang/Object;
    .end local v6    # "value$iv":Ljava/lang/Object;
    .end local v7    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v8    # "$i$f$cas":I
    if-eqz v3, :cond_a

    .line 296
    nop

    .line 297
    instance-of v3, v1, Lkotlinx/coroutines/CancellableContinuation;

    if-eqz v3, :cond_8

    .line 298
    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/CancellableContinuation;

    .line 299
    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/CancellableContinuation;

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v7, v0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->onCancellationRelease:Lkotlin/jvm/functions/Function3;

    invoke-interface {v3, v6, v7}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    goto :goto_4

    .line 301
    :cond_8
    instance-of v3, v1, Lkotlinx/coroutines/selects/SelectInstance;

    if-eqz v3, :cond_9

    .line 302
    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/selects/SelectInstance;

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v3, v6}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    .line 306
    :goto_4
    return v20

    .line 302
    :cond_9
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 304
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 308
    :cond_a
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 397
    const/4 v3, 0x0

    .line 308
    .local v3, "$i$a$-assert-SemaphoreAndMutexImpl$addAcquireToQueue$1":I
    move-object v6, v2

    .local v6, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v7, 0x0

    .line 446
    .local v7, "$i$f$get":I
    invoke-virtual {v6}, Lkotlinx/coroutines/sync/SemaphoreSegment;->getAcquirers()Lkotlinx/atomicfu/AtomicArray;

    move-result-object v8

    invoke-virtual {v8, v4}, Lkotlinx/atomicfu/AtomicArray;->get(I)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v8

    invoke-virtual {v8}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 308
    .end local v6    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v7    # "$i$f$get":I
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getBROKEN$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v7

    if-ne v6, v7, :cond_b

    const/4 v13, 0x1

    goto :goto_5

    :cond_b
    const/4 v13, 0x0

    .end local v3    # "$i$a$-assert-SemaphoreAndMutexImpl$addAcquireToQueue$1":I
    :goto_5
    if-eqz v13, :cond_c

    goto :goto_6

    :cond_c
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 309
    :cond_d
    :goto_6
    return v19
.end method

.method private final coerceAvailablePermitsAtMaximum()V
    .locals 3

    .line 270
    nop

    :cond_0
    nop

    .line 271
    iget-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->_availablePermits:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->getValue()I

    move-result v0

    .line 272
    .local v0, "cur":I
    iget v1, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->permits:I

    if-le v0, v1, :cond_1

    .line 273
    iget-object v1, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->_availablePermits:Lkotlinx/atomicfu/AtomicInt;

    iget v2, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->permits:I

    invoke-virtual {v1, v0, v2}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    .end local v0    # "cur":I
    :cond_1
    return-void
.end method

.method private final decPermits()I
    .locals 2

    .line 230
    nop

    :cond_0
    nop

    .line 232
    iget-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->_availablePermits:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->getAndDecrement()I

    move-result v0

    .line 236
    .local v0, "p":I
    iget v1, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->permits:I

    if-gt v0, v1, :cond_0

    .line 238
    return v0
.end method

.method private static final onCancellationRelease$lambda$2(Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;Ljava/lang/Throwable;Lkotlin/Unit;Lkotlin/coroutines/CoroutineContext;)Lkotlin/Unit;
    .locals 0
    .param p0, "this$0"    # Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "<unused var>",
            "<unused var>",
            "<unused var>"
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->release()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final tryResumeAcquire(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "$this$tryResumeAcquire"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$tryResumeAcquire"
        }
    .end annotation

    .line 339
    nop

    .line 340
    instance-of v0, p1, Lkotlinx/coroutines/CancellableContinuation;

    if-eqz v0, :cond_1

    .line 341
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CancellableContinuation;

    .line 344
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CancellableContinuation;

    .line 342
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x0

    iget-object v3, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->onCancellationRelease:Lkotlin/jvm/functions/Function3;

    invoke-interface {v0, v1, v2, v3}, Lkotlinx/coroutines/CancellableContinuation;->tryResume(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;

    move-result-object v0

    .line 343
    .local v0, "token":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 344
    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/CancellableContinuation;->completeResume(Ljava/lang/Object;)V

    .line 345
    const/4 v1, 0x1

    goto :goto_0

    .line 346
    :cond_0
    nop

    .end local v0    # "token":Ljava/lang/Object;
    const/4 v1, 0x0

    goto :goto_0

    .line 348
    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/selects/SelectInstance;

    if-eqz v0, :cond_2

    .line 349
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/selects/SelectInstance;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, p0, v1}, Lkotlinx/coroutines/selects/SelectInstance;->trySelect(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 352
    :goto_0
    return v1

    .line 349
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final tryResumeNextFromQueue()Z
    .locals 24

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->head:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v1}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/sync/SemaphoreSegment;

    .line 315
    .local v1, "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    iget-object v2, v0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->deqIdx:Lkotlinx/atomicfu/AtomicLong;

    invoke-virtual {v2}, Lkotlinx/atomicfu/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    .line 316
    .local v2, "deqIdx":J
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    move-result v4

    int-to-long v4, v4

    div-long v4, v2, v4

    .line 317
    .local v4, "id":J
    sget-object v6, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1;->INSTANCE:Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1;

    check-cast v6, Lkotlin/reflect/KFunction;

    .line 318
    .local v6, "createNewSegment":Lkotlin/reflect/KFunction;
    iget-object v7, v0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->head:Lkotlinx/atomicfu/AtomicRef;

    .local v7, "$this$findSegmentAndMoveForward$iv":Lkotlinx/atomicfu/AtomicRef;
    const/4 v8, 0x0

    .line 447
    .local v8, "$i$f$findSegmentAndMoveForward":I
    :goto_0
    nop

    .line 448
    move-object v9, v1

    check-cast v9, Lkotlinx/coroutines/internal/Segment;

    move-object v10, v6

    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v4, v5, v10}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v9

    .line 449
    .local v9, "s$iv":Ljava/lang/Object;
    invoke-static {v9}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {v9}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v10

    .local v10, "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    move-object v13, v7

    .local v13, "$this$moveForward$iv$iv":Lkotlinx/atomicfu/AtomicRef;
    const/4 v14, 0x0

    .line 450
    .local v14, "$i$f$moveForward":I
    move-object v15, v13

    .local v15, "$this$loop$iv$iv$iv":Lkotlinx/atomicfu/AtomicRef;
    const/16 v16, 0x0

    .line 451
    .local v16, "$i$f$loop":I
    :goto_1
    nop

    .line 452
    invoke-virtual {v15}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v11, v17

    check-cast v11, Lkotlinx/coroutines/internal/Segment;

    .local v11, "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    const/16 v17, 0x0

    .line 453
    .local v17, "$i$a$-loop-ConcurrentLinkedListKt$moveForward$1$iv$iv":I
    move-object/from16 v20, v13

    const/16 v19, 0x1

    .end local v13    # "$this$moveForward$iv$iv":Lkotlinx/atomicfu/AtomicRef;
    .local v20, "$this$moveForward$iv$iv":Lkotlinx/atomicfu/AtomicRef;
    iget-wide v12, v11, Lkotlinx/coroutines/internal/Segment;->id:J

    move-object/from16 v21, v1

    move-wide/from16 v22, v2

    .end local v1    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v2    # "deqIdx":J
    .local v21, "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .local v22, "deqIdx":J
    iget-wide v1, v10, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v3, v12, v1

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_2

    .line 454
    :cond_0
    invoke-virtual {v10}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    .line 455
    :cond_1
    move-object/from16 v1, v20

    .end local v20    # "$this$moveForward$iv$iv":Lkotlinx/atomicfu/AtomicRef;
    .local v1, "$this$moveForward$iv$iv":Lkotlinx/atomicfu/AtomicRef;
    invoke-virtual {v1, v11, v10}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 456
    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 457
    :cond_2
    const/4 v1, 0x1

    .line 449
    .end local v1    # "$this$moveForward$iv$iv":Lkotlinx/atomicfu/AtomicRef;
    .end local v10    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v11    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v14    # "$i$f$moveForward":I
    .end local v15    # "$this$loop$iv$iv$iv":Lkotlinx/atomicfu/AtomicRef;
    .end local v16    # "$i$f$loop":I
    .end local v17    # "$i$a$-loop-ConcurrentLinkedListKt$moveForward$1$iv$iv":I
    :goto_2
    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    goto :goto_0

    .line 459
    .restart local v1    # "$this$moveForward$iv$iv":Lkotlinx/atomicfu/AtomicRef;
    .restart local v10    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v11    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v14    # "$i$f$moveForward":I
    .restart local v15    # "$this$loop$iv$iv$iv":Lkotlinx/atomicfu/AtomicRef;
    .restart local v16    # "$i$f$loop":I
    .restart local v17    # "$i$a$-loop-ConcurrentLinkedListKt$moveForward$1$iv$iv":I
    :cond_4
    invoke-virtual {v10}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v10}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 460
    :cond_5
    nop

    .line 452
    .end local v11    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v17    # "$i$a$-loop-ConcurrentLinkedListKt$moveForward$1$iv$iv":I
    move-object v13, v1

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    goto :goto_1

    .line 449
    .end local v10    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v14    # "$i$f$moveForward":I
    .end local v15    # "$this$loop$iv$iv$iv":Lkotlinx/atomicfu/AtomicRef;
    .end local v16    # "$i$f$loop":I
    .end local v21    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v22    # "deqIdx":J
    .local v1, "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .restart local v2    # "deqIdx":J
    :cond_6
    move-object/from16 v21, v1

    move-wide/from16 v22, v2

    const/16 v18, 0x0

    const/16 v19, 0x1

    .line 319
    .end local v1    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v2    # "deqIdx":J
    .end local v7    # "$this$findSegmentAndMoveForward$iv":Lkotlinx/atomicfu/AtomicRef;
    .end local v8    # "$i$f$findSegmentAndMoveForward":I
    .end local v9    # "s$iv":Ljava/lang/Object;
    .restart local v21    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .restart local v22    # "deqIdx":J
    :goto_3
    invoke-static {v9}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/sync/SemaphoreSegment;

    .line 318
    nop

    .line 320
    .local v1, "segment":Lkotlinx/coroutines/sync/SemaphoreSegment;
    invoke-virtual {v1}, Lkotlinx/coroutines/sync/SemaphoreSegment;->cleanPrev()V

    .line 321
    iget-wide v2, v1, Lkotlinx/coroutines/sync/SemaphoreSegment;->id:J

    cmp-long v7, v2, v4

    if-lez v7, :cond_7

    return v18

    .line 322
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    move-result v2

    int-to-long v2, v2

    rem-long v2, v22, v2

    long-to-int v3, v2

    .line 323
    .local v3, "i":I
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getPERMIT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v7, v1

    .local v7, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v8, 0x0

    .line 461
    .local v8, "$i$f$getAndSet":I
    invoke-virtual {v7}, Lkotlinx/coroutines/sync/SemaphoreSegment;->getAcquirers()Lkotlinx/atomicfu/AtomicArray;

    move-result-object v9

    invoke-virtual {v9, v3}, Lkotlinx/atomicfu/AtomicArray;->get(I)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v9

    invoke-virtual {v9, v2}, Lkotlinx/atomicfu/AtomicRef;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 323
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v7    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v8    # "$i$f$getAndSet":I
    nop

    .line 324
    .local v2, "cellState":Ljava/lang/Object;
    nop

    .line 325
    if-nez v2, :cond_a

    .line 328
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getMAX_SPIN_CYCLES$p()I

    move-result v7

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v7, :cond_9

    move v8, v11

    .local v8, "it":I
    const/4 v9, 0x0

    .line 329
    .local v9, "$i$a$-repeat-SemaphoreAndMutexImpl$tryResumeNextFromQueue$1":I
    move-object v10, v1

    .local v10, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v12, 0x0

    .line 462
    .local v12, "$i$f$get":I
    invoke-virtual {v10}, Lkotlinx/coroutines/sync/SemaphoreSegment;->getAcquirers()Lkotlinx/atomicfu/AtomicArray;

    move-result-object v13

    invoke-virtual {v13, v3}, Lkotlinx/atomicfu/AtomicArray;->get(I)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v13

    invoke-virtual {v13}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v10

    .line 329
    .end local v10    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v12    # "$i$f$get":I
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getTAKEN$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v12

    if-ne v10, v12, :cond_8

    return v19

    .line 330
    :cond_8
    nop

    .line 328
    .end local v8    # "it":I
    .end local v9    # "$i$a$-repeat-SemaphoreAndMutexImpl$tryResumeNextFromQueue$1":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 332
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getPERMIT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v7

    .local v7, "expected$iv":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getBROKEN$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v8

    .local v8, "value$iv":Ljava/lang/Object;
    move-object v9, v1

    .local v9, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v10, 0x0

    .line 463
    .local v10, "$i$f$cas":I
    invoke-virtual {v9}, Lkotlinx/coroutines/sync/SemaphoreSegment;->getAcquirers()Lkotlinx/atomicfu/AtomicArray;

    move-result-object v11

    invoke-virtual {v11, v3}, Lkotlinx/atomicfu/AtomicArray;->get(I)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 332
    .end local v7    # "expected$iv":Ljava/lang/Object;
    .end local v8    # "value$iv":Ljava/lang/Object;
    .end local v9    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v10    # "$i$f$cas":I
    xor-int/lit8 v7, v7, 0x1

    return v7

    .line 334
    :cond_a
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getCANCELLED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v7

    if-ne v2, v7, :cond_b

    return v18

    .line 335
    :cond_b
    invoke-direct {v0, v2}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->tryResumeAcquire(Ljava/lang/Object;)Z

    move-result v7

    return v7
.end method


# virtual methods
.method public final acquire(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->decPermits()I

    move-result v0

    .line 174
    .local v0, "p":I
    if-lez v0, :cond_0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 179
    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->acquireSlowPath(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    return-object v1

    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 180
    return-object v1
.end method

.method protected final acquire(Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 7
    .param p1, "waiter"    # Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "waiter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 192
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;
    const/4 v1, 0x0

    .line 410
    .local v1, "$i$f$acquire":I
    :cond_0
    nop

    .line 412
    invoke-direct {v0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->decPermits()I

    move-result v2

    .line 414
    .local v2, "p$iv":I
    if-lez v2, :cond_1

    .line 415
    move-object v3, p1

    .local v3, "cont":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v4, 0x0

    .line 195
    .local v4, "$i$a$-acquire-SemaphoreAndMutexImpl$acquire$3":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v6, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->onCancellationRelease:Lkotlin/jvm/functions/Function3;

    invoke-interface {v3, v5, v6}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    .line 415
    .end local v3    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .end local v4    # "$i$a$-acquire-SemaphoreAndMutexImpl$acquire$3":I
    nop

    .line 416
    goto :goto_0

    .line 419
    :cond_1
    move-object v3, p1

    .restart local v3    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v4, 0x0

    .line 194
    .local v4, "$i$a$-acquire-SemaphoreAndMutexImpl$acquire$2":I
    const-string v5, "null cannot be cast to non-null type kotlinx.coroutines.Waiter"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v3

    check-cast v5, Lkotlinx/coroutines/Waiter;

    invoke-direct {p0, v5}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->addAcquireToQueue(Lkotlinx/coroutines/Waiter;)Z

    move-result v3

    .line 419
    .end local v3    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .end local v4    # "$i$a$-acquire-SemaphoreAndMutexImpl$acquire$2":I
    if-eqz v3, :cond_0

    .line 196
    .end local v0    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;
    .end local v1    # "$i$f$acquire":I
    .end local v2    # "p$iv":I
    :goto_0
    return-void
.end method

.method public final getAvailablePermits()I
    .locals 2

    .line 147
    iget-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->_availablePermits:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->getValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected final onAcquireRegFunction(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V
    .locals 6
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .param p2, "ignoredParam"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "select",
            "ignoredParam"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 216
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;
    const/4 v1, 0x0

    .line 420
    .local v1, "$i$f$acquire":I
    :cond_0
    nop

    .line 422
    invoke-direct {v0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->decPermits()I

    move-result v2

    .line 424
    .local v2, "p$iv":I
    if-lez v2, :cond_1

    .line 425
    move-object v3, p1

    .local v3, "s":Lkotlinx/coroutines/selects/SelectInstance;
    const/4 v4, 0x0

    .line 219
    .local v4, "$i$a$-acquire-SemaphoreAndMutexImpl$onAcquireRegFunction$2":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v3, v5}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    .line 425
    .end local v3    # "s":Lkotlinx/coroutines/selects/SelectInstance;
    .end local v4    # "$i$a$-acquire-SemaphoreAndMutexImpl$onAcquireRegFunction$2":I
    nop

    .line 426
    goto :goto_0

    .line 429
    :cond_1
    move-object v3, p1

    .restart local v3    # "s":Lkotlinx/coroutines/selects/SelectInstance;
    const/4 v4, 0x0

    .line 218
    .local v4, "$i$a$-acquire-SemaphoreAndMutexImpl$onAcquireRegFunction$1":I
    const-string v5, "null cannot be cast to non-null type kotlinx.coroutines.Waiter"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v3

    check-cast v5, Lkotlinx/coroutines/Waiter;

    invoke-direct {p0, v5}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->addAcquireToQueue(Lkotlinx/coroutines/Waiter;)Z

    move-result v3

    .line 429
    .end local v3    # "s":Lkotlinx/coroutines/selects/SelectInstance;
    .end local v4    # "$i$a$-acquire-SemaphoreAndMutexImpl$onAcquireRegFunction$1":I
    if-eqz v3, :cond_0

    .line 220
    .end local v0    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;
    .end local v1    # "$i$f$acquire":I
    .end local v2    # "p$iv":I
    :goto_0
    return-void
.end method

.method public final release()V
    .locals 5

    .line 243
    nop

    :cond_0
    nop

    .line 245
    iget-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->_availablePermits:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->getAndIncrement()I

    move-result v0

    .line 248
    .local v0, "p":I
    iget v1, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->permits:I

    if-ge v0, v1, :cond_2

    .line 255
    if-ltz v0, :cond_1

    return-void

    .line 260
    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->tryResumeNextFromQueue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 251
    :cond_2
    invoke-direct {p0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->coerceAvailablePermitsAtMaximum()V

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 252
    iget v2, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->permits:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The number of released permits cannot be greater than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final tryAcquire()Z
    .locals 3

    .line 152
    nop

    :cond_0
    :goto_0
    nop

    .line 154
    iget-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->_availablePermits:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->getValue()I

    move-result v0

    .line 159
    .local v0, "p":I
    iget v1, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->permits:I

    if-le v0, v1, :cond_1

    .line 160
    invoke-direct {p0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->coerceAvailablePermitsAtMaximum()V

    .line 161
    goto :goto_0

    .line 165
    :cond_1
    if-gtz v0, :cond_2

    const/4 v1, 0x0

    return v1

    .line 166
    :cond_2
    iget-object v1, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->_availablePermits:Lkotlinx/atomicfu/AtomicInt;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1
.end method
