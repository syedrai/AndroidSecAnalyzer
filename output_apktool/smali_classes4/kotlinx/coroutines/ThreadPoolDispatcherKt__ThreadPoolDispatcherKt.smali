.class final synthetic Lkotlinx/coroutines/ThreadPoolDispatcherKt__ThreadPoolDispatcherKt;
.super Ljava/lang/Object;
.source "ThreadPoolDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThreadPoolDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreadPoolDispatcher.kt\nkotlinx/coroutines/ThreadPoolDispatcherKt__ThreadPoolDispatcherKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,19:1\n1#2:20\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u00a8\u0006\u0006"
    }
    d2 = {
        "newFixedThreadPoolContext",
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;",
        "nThreads",
        "",
        "name",
        "",
        "kotlinx-coroutines-core"
    }
    k = 0x5
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
    xs = "kotlinx/coroutines/ThreadPoolDispatcherKt"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$XFVhsA28fmYUFDEvkT7eVQ1JeFw(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/ThreadPoolDispatcherKt__ThreadPoolDispatcherKt;->newFixedThreadPoolContext$lambda$1$ThreadPoolDispatcherKt__ThreadPoolDispatcherKt(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static final newFixedThreadPoolContext(ILjava/lang/String;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    .locals 3
    .param p0, "nThreads"    # I
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nThreads",
            "name"
        }
    .end annotation

    .line 10
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 12
    .local v0, "threadNo":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v1, Lkotlinx/coroutines/ThreadPoolDispatcherKt__ThreadPoolDispatcherKt$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lkotlinx/coroutines/ThreadPoolDispatcherKt__ThreadPoolDispatcherKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-static {p0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 17
    .local v1, "executor":Ljava/util/concurrent/ScheduledExecutorService;
    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    invoke-static {v2}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v2

    return-object v2

    .line 20
    .end local v0    # "threadNo":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v1    # "executor":Ljava/util/concurrent/ScheduledExecutorService;
    :cond_1
    const/4 v0, 0x0

    .line 10
    .local v0, "$i$a$-require-ThreadPoolDispatcherKt__ThreadPoolDispatcherKt$newFixedThreadPoolContext$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected at least one thread, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " specified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-ThreadPoolDispatcherKt__ThreadPoolDispatcherKt$newFixedThreadPoolContext$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final newFixedThreadPoolContext$lambda$1$ThreadPoolDispatcherKt__ThreadPoolDispatcherKt(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 5
    .param p0, "$nThreads"    # I
    .param p1, "$name"    # Ljava/lang/String;
    .param p2, "$threadNo"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p3, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$nThreads",
            "$name",
            "$threadNo",
            "runnable"
        }
    .end annotation

    .line 13
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v0, p3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 14
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 15
    return-object v0
.end method
