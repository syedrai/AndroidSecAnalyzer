.class public final Lokio/Pipe$sink$1;
.super Ljava/lang/Object;
.source "Pipe.kt"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Pipe;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipe.kt\nokio/Pipe$sink$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Pipe.kt\nokio/Pipe\n+ 4 Timeout.kt\nokio/Timeout\n*L\n1#1,262:1\n1#2:263\n222#3:264\n223#3:291\n222#3:292\n223#3:319\n222#3:320\n223#3:347\n302#4,26:265\n302#4,26:293\n302#4,26:321\n*S KotlinDebug\n*F\n+ 1 Pipe.kt\nokio/Pipe$sink$1\n*L\n87#1:264\n87#1:291\n106#1:292\n106#1:319\n124#1:320\n124#1:347\n87#1:265,26\n106#1:293,26\n124#1:321,26\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u0005H\u0016J\u0008\u0010\u000b\u001a\u00020\u0005H\u0016J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "okio/Pipe$sink$1",
        "Lokio/Sink;",
        "timeout",
        "Lokio/Timeout;",
        "write",
        "",
        "source",
        "Lokio/Buffer;",
        "byteCount",
        "",
        "flush",
        "close",
        "third_party.java_src.okio_okio-jvm"
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
.field final synthetic this$0:Lokio/Pipe;

.field private final timeout:Lokio/Timeout;


# direct methods
.method constructor <init>(Lokio/Pipe;)V
    .locals 1
    .param p1, "$receiver"    # Lokio/Pipe;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lokio/Timeout;

    invoke-direct {v0}, Lokio/Timeout;-><init>()V

    iput-object v0, p0, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    .line 55
    return-void
.end method


# virtual methods
.method public close()V
    .locals 15

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "delegate":Ljava/lang/Object;
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/locks/Lock;

    iget-object v2, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    .line 112
    .local v3, "$i$a$-withLock-Pipe$sink$1$close$1":I
    :try_start_0
    invoke-virtual {v2}, Lokio/Pipe;->getSinkClosed$third_party_java_src_okio_okio_jvm()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v4, :cond_0

    .end local v3    # "$i$a$-withLock-Pipe$sink$1$close$1":I
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 114
    .restart local v3    # "$i$a$-withLock-Pipe$sink$1$close$1":I
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lokio/Pipe;->getFoldedSink$third_party_java_src_okio_okio_jvm()Lokio/Sink;

    move-result-object v4

    if-eqz v4, :cond_1

    .local v4, "it":Lokio/Sink;
    const/4 v2, 0x0

    .line 115
    .local v2, "$i$a$-let-Pipe$sink$1$close$1$1":I
    move-object v0, v4

    .line 116
    goto :goto_1

    .line 119
    .end local v2    # "$i$a$-let-Pipe$sink$1$close$1$1":I
    .end local v4    # "it":Lokio/Sink;
    :cond_1
    invoke-virtual {v2}, Lokio/Pipe;->getSourceClosed$third_party_java_src_okio_okio_jvm()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lokio/Pipe;->getBuffer$third_party_java_src_okio_okio_jvm()Lokio/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gtz v8, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v4, "source is closed"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "delegate":Ljava/lang/Object;
    throw v2

    .line 120
    .restart local v0    # "delegate":Ljava/lang/Object;
    :cond_3
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lokio/Pipe;->setSinkClosed$third_party_java_src_okio_okio_jvm(Z)V

    .line 121
    invoke-virtual {v2}, Lokio/Pipe;->getCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 122
    nop

    .end local v3    # "$i$a$-withLock-Pipe$sink$1$close$1":I
    :goto_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 111
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 124
    if-eqz v0, :cond_b

    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .local v1, "this_$iv":Lokio/Pipe;
    move-object v2, v0

    .local v2, "$this$forward$iv":Lokio/Sink;
    const/4 v3, 0x0

    .line 320
    .local v3, "$i$f$forward":I
    invoke-interface {v2}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v4

    .local v4, "this_$iv$iv":Lokio/Timeout;
    invoke-virtual {v1}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v5

    invoke-interface {v5}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v5

    .local v5, "other$iv$iv":Lokio/Timeout;
    const/4 v6, 0x0

    .line 321
    .local v6, "$i$f$intersectWith":I
    invoke-virtual {v4}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v7

    .line 322
    .local v7, "originalTimeout$iv$iv":J
    sget-object v9, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {v5}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v10

    invoke-virtual {v4}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v12

    invoke-virtual {v9, v10, v11, v12, v13}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v9

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v9, v10, v11}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 324
    invoke-virtual {v4}, Lokio/Timeout;->hasDeadline()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 325
    invoke-virtual {v4}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v9

    .line 326
    .local v9, "originalDeadline$iv$iv":J
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 327
    invoke-virtual {v4}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v11

    invoke-virtual {v5}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 329
    :cond_4
    nop

    .line 330
    const/4 v11, 0x0

    .line 320
    .local v11, "$i$a$-intersectWith-Pipe$forward$1$iv":I
    move-object v12, v2

    .local v12, "$this$close_u24lambda_u2410":Lokio/Sink;
    const/4 v13, 0x0

    .line 124
    .local v13, "$i$a$-forward-Pipe$sink$1$close$2":I
    :try_start_2
    invoke-interface {v12}, Lokio/Sink;->close()V

    .line 320
    .end local v12    # "$this$close_u24lambda_u2410":Lokio/Sink;
    .end local v13    # "$i$a$-forward-Pipe$sink$1$close$2":I
    nop

    .end local v11    # "$i$a$-intersectWith-Pipe$forward$1$iv":I
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    nop

    .line 332
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v11}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 333
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 334
    invoke-virtual {v4, v9, v10}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 330
    :cond_5
    goto :goto_2

    .line 332
    :catchall_0
    move-exception v11

    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v12}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 333
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 334
    invoke-virtual {v4, v9, v10}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_6
    throw v11

    .line 338
    .end local v9    # "originalDeadline$iv$iv":J
    :cond_7
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 339
    invoke-virtual {v5}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 341
    :cond_8
    nop

    .line 342
    const/4 v9, 0x0

    .line 320
    .local v9, "$i$a$-intersectWith-Pipe$forward$1$iv":I
    move-object v10, v2

    .local v10, "$this$close_u24lambda_u2410":Lokio/Sink;
    const/4 v11, 0x0

    .line 124
    .local v11, "$i$a$-forward-Pipe$sink$1$close$2":I
    :try_start_3
    invoke-interface {v10}, Lokio/Sink;->close()V

    .line 320
    .end local v10    # "$this$close_u24lambda_u2410":Lokio/Sink;
    .end local v11    # "$i$a$-forward-Pipe$sink$1$close$2":I
    nop

    .end local v9    # "$i$a$-intersectWith-Pipe$forward$1$iv":I
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 342
    nop

    .line 344
    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v9}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 345
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 346
    invoke-virtual {v4}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 342
    :cond_9
    nop

    .line 347
    .end local v4    # "this_$iv$iv":Lokio/Timeout;
    .end local v5    # "other$iv$iv":Lokio/Timeout;
    .end local v6    # "$i$f$intersectWith":I
    .end local v7    # "originalTimeout$iv$iv":J
    :goto_2
    nop

    .end local v1    # "this_$iv":Lokio/Pipe;
    .end local v2    # "$this$forward$iv":Lokio/Sink;
    .end local v3    # "$i$f$forward":I
    goto :goto_3

    .line 344
    .restart local v1    # "this_$iv":Lokio/Pipe;
    .restart local v2    # "$this$forward$iv":Lokio/Sink;
    .restart local v3    # "$i$f$forward":I
    .restart local v4    # "this_$iv$iv":Lokio/Timeout;
    .restart local v5    # "other$iv$iv":Lokio/Timeout;
    .restart local v6    # "$i$f$intersectWith":I
    .restart local v7    # "originalTimeout$iv$iv":J
    :catchall_1
    move-exception v9

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v10}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 345
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 346
    invoke-virtual {v4}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_a
    throw v9

    .line 125
    .end local v1    # "this_$iv":Lokio/Pipe;
    .end local v2    # "$this$forward$iv":Lokio/Sink;
    .end local v3    # "$i$f$forward":I
    .end local v4    # "this_$iv$iv":Lokio/Timeout;
    .end local v5    # "other$iv$iv":Lokio/Timeout;
    .end local v6    # "$i$f$intersectWith":I
    .end local v7    # "originalTimeout$iv$iv":J
    :cond_b
    :goto_3
    return-void

    .line 111
    :catchall_2
    move-exception v2

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public flush()V
    .locals 15

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "delegate":Ljava/lang/Object;
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/locks/Lock;

    iget-object v2, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    .line 93
    .local v3, "$i$a$-withLock-Pipe$sink$1$flush$1":I
    :try_start_0
    invoke-virtual {v2}, Lokio/Pipe;->getSinkClosed$third_party_java_src_okio_okio_jvm()Z

    move-result v4

    if-nez v4, :cond_c

    .line 94
    invoke-virtual {v2}, Lokio/Pipe;->getCanceled$third_party_java_src_okio_okio_jvm()Z

    move-result v4

    if-nez v4, :cond_b

    .line 96
    invoke-virtual {v2}, Lokio/Pipe;->getFoldedSink$third_party_java_src_okio_okio_jvm()Lokio/Sink;

    move-result-object v4

    if-eqz v4, :cond_0

    .local v4, "it":Lokio/Sink;
    const/4 v2, 0x0

    .line 97
    .local v2, "$i$a$-let-Pipe$sink$1$flush$1$2":I
    move-object v0, v4

    .line 98
    goto :goto_1

    .line 101
    .end local v2    # "$i$a$-let-Pipe$sink$1$flush$1$2":I
    .end local v4    # "it":Lokio/Sink;
    :cond_0
    invoke-virtual {v2}, Lokio/Pipe;->getSourceClosed$third_party_java_src_okio_okio_jvm()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lokio/Pipe;->getBuffer$third_party_java_src_okio_okio_jvm()Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gtz v2, :cond_1

    goto :goto_0

    .line 102
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v4, "source is closed"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "delegate":Ljava/lang/Object;
    throw v2

    .line 104
    .restart local v0    # "delegate":Ljava/lang/Object;
    :cond_2
    :goto_0
    nop

    .end local v3    # "$i$a$-withLock-Pipe$sink$1$flush$1":I
    :goto_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 92
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 106
    if-eqz v0, :cond_a

    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .local v1, "this_$iv":Lokio/Pipe;
    move-object v2, v0

    .local v2, "$this$forward$iv":Lokio/Sink;
    const/4 v3, 0x0

    .line 292
    .local v3, "$i$f$forward":I
    invoke-interface {v2}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v4

    .local v4, "this_$iv$iv":Lokio/Timeout;
    invoke-virtual {v1}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v5

    invoke-interface {v5}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v5

    .local v5, "other$iv$iv":Lokio/Timeout;
    const/4 v6, 0x0

    .line 293
    .local v6, "$i$f$intersectWith":I
    invoke-virtual {v4}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v7

    .line 294
    .local v7, "originalTimeout$iv$iv":J
    sget-object v9, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {v5}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v10

    invoke-virtual {v4}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v12

    invoke-virtual {v9, v10, v11, v12, v13}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v9

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v9, v10, v11}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 296
    invoke-virtual {v4}, Lokio/Timeout;->hasDeadline()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 297
    invoke-virtual {v4}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v9

    .line 298
    .local v9, "originalDeadline$iv$iv":J
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 299
    invoke-virtual {v4}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v11

    invoke-virtual {v5}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 301
    :cond_3
    nop

    .line 302
    const/4 v11, 0x0

    .line 292
    .local v11, "$i$a$-intersectWith-Pipe$forward$1$iv":I
    move-object v12, v2

    .local v12, "$this$flush_u24lambda_u247":Lokio/Sink;
    const/4 v13, 0x0

    .line 106
    .local v13, "$i$a$-forward-Pipe$sink$1$flush$2":I
    :try_start_1
    invoke-interface {v12}, Lokio/Sink;->flush()V

    .line 292
    .end local v12    # "$this$flush_u24lambda_u247":Lokio/Sink;
    .end local v13    # "$i$a$-forward-Pipe$sink$1$flush$2":I
    nop

    .end local v11    # "$i$a$-intersectWith-Pipe$forward$1$iv":I
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    nop

    .line 304
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v11}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 305
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 306
    invoke-virtual {v4, v9, v10}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 302
    :cond_4
    goto :goto_2

    .line 304
    :catchall_0
    move-exception v11

    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v12}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 305
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 306
    invoke-virtual {v4, v9, v10}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_5
    throw v11

    .line 310
    .end local v9    # "originalDeadline$iv$iv":J
    :cond_6
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 311
    invoke-virtual {v5}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 313
    :cond_7
    nop

    .line 314
    const/4 v9, 0x0

    .line 292
    .local v9, "$i$a$-intersectWith-Pipe$forward$1$iv":I
    move-object v10, v2

    .local v10, "$this$flush_u24lambda_u247":Lokio/Sink;
    const/4 v11, 0x0

    .line 106
    .local v11, "$i$a$-forward-Pipe$sink$1$flush$2":I
    :try_start_2
    invoke-interface {v10}, Lokio/Sink;->flush()V

    .line 292
    .end local v10    # "$this$flush_u24lambda_u247":Lokio/Sink;
    .end local v11    # "$i$a$-forward-Pipe$sink$1$flush$2":I
    nop

    .end local v9    # "$i$a$-intersectWith-Pipe$forward$1$iv":I
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 314
    nop

    .line 316
    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v9}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 317
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 318
    invoke-virtual {v4}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 314
    :cond_8
    nop

    .line 319
    .end local v4    # "this_$iv$iv":Lokio/Timeout;
    .end local v5    # "other$iv$iv":Lokio/Timeout;
    .end local v6    # "$i$f$intersectWith":I
    .end local v7    # "originalTimeout$iv$iv":J
    :goto_2
    nop

    .end local v1    # "this_$iv":Lokio/Pipe;
    .end local v2    # "$this$forward$iv":Lokio/Sink;
    .end local v3    # "$i$f$forward":I
    goto :goto_3

    .line 316
    .restart local v1    # "this_$iv":Lokio/Pipe;
    .restart local v2    # "$this$forward$iv":Lokio/Sink;
    .restart local v3    # "$i$f$forward":I
    .restart local v4    # "this_$iv$iv":Lokio/Timeout;
    .restart local v5    # "other$iv$iv":Lokio/Timeout;
    .restart local v6    # "$i$f$intersectWith":I
    .restart local v7    # "originalTimeout$iv$iv":J
    :catchall_1
    move-exception v9

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v10}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 317
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 318
    invoke-virtual {v4}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_9
    throw v9

    .line 107
    .end local v1    # "this_$iv":Lokio/Pipe;
    .end local v2    # "$this$forward$iv":Lokio/Sink;
    .end local v3    # "$i$f$forward":I
    .end local v4    # "this_$iv$iv":Lokio/Timeout;
    .end local v5    # "other$iv$iv":Lokio/Timeout;
    .end local v6    # "$i$f$intersectWith":I
    .end local v7    # "originalTimeout$iv$iv":J
    :cond_a
    :goto_3
    return-void

    .line 94
    .local v3, "$i$a$-withLock-Pipe$sink$1$flush$1":I
    :cond_b
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    const-string v4, "canceled"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "delegate":Ljava/lang/Object;
    throw v2

    .line 263
    .restart local v0    # "delegate":Ljava/lang/Object;
    :cond_c
    const/4 v2, 0x0

    .line 93
    .local v2, "$i$a$-check-Pipe$sink$1$flush$1$1":I
    const-string v4, "closed"

    .end local v2    # "$i$a$-check-Pipe$sink$1$flush$1$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "delegate":Ljava/lang/Object;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 92
    .end local v3    # "$i$a$-withLock-Pipe$sink$1$flush$1":I
    .restart local v0    # "delegate":Ljava/lang/Object;
    :catchall_2
    move-exception v2

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 127
    iget-object v0, p0, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 18
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "byteCount"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v0, "source"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    nop

    .line 60
    const/4 v3, 0x0

    .line 61
    .local v3, "delegate":Ljava/lang/Object;
    iget-object v0, v1, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v0}, Lokio/Pipe;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/concurrent/locks/Lock;

    iget-object v0, v1, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v5, 0x0

    .line 62
    .local v5, "$i$a$-withLock-Pipe$sink$1$write$1":I
    :try_start_0
    invoke-virtual {v0}, Lokio/Pipe;->getSinkClosed$third_party_java_src_okio_okio_jvm()Z

    move-result v6

    if-nez v6, :cond_e

    .line 63
    invoke-virtual {v0}, Lokio/Pipe;->getCanceled$third_party_java_src_okio_okio_jvm()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-string v7, "canceled"

    if-nez v6, :cond_d

    move-wide/from16 v8, p2

    .line 65
    .local v8, "byteCount":J
    :goto_0
    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_4

    .line 66
    :try_start_1
    invoke-virtual {v0}, Lokio/Pipe;->getFoldedSink$third_party_java_src_okio_okio_jvm()Lokio/Sink;

    move-result-object v6

    if-eqz v6, :cond_0

    .local v6, "it":Lokio/Sink;
    const/4 v0, 0x0

    .line 67
    .local v0, "$i$a$-let-Pipe$sink$1$write$1$2":I
    move-object v3, v6

    .line 68
    goto :goto_1

    .line 71
    .end local v0    # "$i$a$-let-Pipe$sink$1$write$1$2":I
    .end local v6    # "it":Lokio/Sink;
    :cond_0
    invoke-virtual {v0}, Lokio/Pipe;->getSourceClosed$third_party_java_src_okio_okio_jvm()Z

    move-result v6

    if-nez v6, :cond_3

    .line 73
    invoke-virtual {v0}, Lokio/Pipe;->getMaxBufferSize$third_party_java_src_okio_okio_jvm()J

    move-result-wide v12

    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$third_party_java_src_okio_okio_jvm()Lokio/Buffer;

    move-result-object v6

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v14

    sub-long/2addr v12, v14

    .line 74
    .local v12, "bufferSpaceAvailable":J
    cmp-long v6, v12, v10

    if-nez v6, :cond_2

    .line 75
    iget-object v6, v1, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Pipe;->getCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v10

    invoke-virtual {v6, v10}, Lokio/Timeout;->awaitSignal(Ljava/util/concurrent/locks/Condition;)V

    .line 76
    invoke-virtual {v0}, Lokio/Pipe;->getCanceled$third_party_java_src_okio_okio_jvm()Z

    move-result v6

    if-nez v6, :cond_1

    .line 77
    goto :goto_0

    .line 76
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "delegate":Ljava/lang/Object;
    .end local v8    # "byteCount":J
    .end local p1    # "source":Lokio/Buffer;
    .end local p2    # "byteCount":J
    throw v0

    .line 80
    .restart local v3    # "delegate":Ljava/lang/Object;
    .restart local v8    # "byteCount":J
    .restart local p1    # "source":Lokio/Buffer;
    .restart local p2    # "byteCount":J
    :cond_2
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 81
    .local v10, "bytesToWrite":J
    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$third_party_java_src_okio_okio_jvm()Lokio/Buffer;

    move-result-object v6

    invoke-virtual {v6, v2, v10, v11}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 82
    sub-long/2addr v8, v10

    .line 83
    invoke-virtual {v0}, Lokio/Pipe;->getCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .end local v10    # "bytesToWrite":J
    .end local v12    # "bufferSpaceAvailable":J
    goto :goto_0

    .line 71
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v6, "source is closed"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "delegate":Ljava/lang/Object;
    .end local v8    # "byteCount":J
    .end local p1    # "source":Lokio/Buffer;
    .end local p2    # "byteCount":J
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .end local v5    # "$i$a$-withLock-Pipe$sink$1$write$1":I
    .restart local v3    # "delegate":Ljava/lang/Object;
    .restart local v8    # "byteCount":J
    .restart local p1    # "source":Lokio/Buffer;
    .restart local p2    # "byteCount":J
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 85
    .restart local v5    # "$i$a$-withLock-Pipe$sink$1$write$1":I
    :cond_4
    nop

    .end local v5    # "$i$a$-withLock-Pipe$sink$1$write$1":I
    :goto_1
    :try_start_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 61
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 87
    if-eqz v3, :cond_c

    iget-object v4, v1, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .local v4, "this_$iv":Lokio/Pipe;
    move-object v0, v3

    .local v0, "$this$forward$iv":Lokio/Sink;
    move-object v5, v0

    .end local v0    # "$this$forward$iv":Lokio/Sink;
    .local v5, "$this$forward$iv":Lokio/Sink;
    const/4 v6, 0x0

    .line 264
    .local v6, "$i$f$forward":I
    invoke-interface {v5}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v7

    .local v7, "this_$iv$iv":Lokio/Timeout;
    invoke-virtual {v4}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    .local v0, "other$iv$iv":Lokio/Timeout;
    move-object v10, v0

    .end local v0    # "other$iv$iv":Lokio/Timeout;
    .local v10, "other$iv$iv":Lokio/Timeout;
    const/4 v11, 0x0

    .line 265
    .local v11, "$i$f$intersectWith":I
    invoke-virtual {v7}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v12

    .line 266
    .local v12, "originalTimeout$iv$iv":J
    sget-object v0, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {v10}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v14

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .end local v3    # "delegate":Ljava/lang/Object;
    .end local v4    # "this_$iv":Lokio/Pipe;
    .local v16, "delegate":Ljava/lang/Object;
    .local v17, "this_$iv":Lokio/Pipe;
    invoke-virtual {v7}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v3

    invoke-virtual {v0, v14, v15, v3, v4}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v3, v4, v0}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 268
    invoke-virtual {v7}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 269
    invoke-virtual {v7}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v3

    .line 270
    .local v3, "originalDeadline$iv$iv":J
    invoke-virtual {v10}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 271
    invoke-virtual {v7}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v14

    invoke-virtual {v10}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 273
    :cond_5
    nop

    .line 274
    const/4 v0, 0x0

    .line 264
    .local v0, "$i$a$-intersectWith-Pipe$forward$1$iv":I
    move-object v1, v5

    .local v1, "$this$write_u24lambda_u243":Lokio/Sink;
    const/4 v14, 0x0

    .line 87
    .local v14, "$i$a$-forward-Pipe$sink$1$write$2":I
    :try_start_3
    invoke-interface {v1, v2, v8, v9}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 264
    .end local v1    # "$this$write_u24lambda_u243":Lokio/Sink;
    .end local v14    # "$i$a$-forward-Pipe$sink$1$write$2":I
    nop

    .end local v0    # "$i$a$-intersectWith-Pipe$forward$1$iv":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 274
    nop

    .line 276
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v12, v13, v0}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 277
    invoke-virtual {v10}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 278
    invoke-virtual {v7, v3, v4}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 274
    :cond_6
    goto :goto_2

    .line 276
    :catchall_1
    move-exception v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v12, v13, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 277
    invoke-virtual {v10}, Lokio/Timeout;->hasDeadline()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 278
    invoke-virtual {v7, v3, v4}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_7
    throw v0

    .line 282
    .end local v3    # "originalDeadline$iv$iv":J
    :cond_8
    invoke-virtual {v10}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 283
    invoke-virtual {v10}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 285
    :cond_9
    nop

    .line 286
    const/4 v0, 0x0

    .line 264
    .restart local v0    # "$i$a$-intersectWith-Pipe$forward$1$iv":I
    move-object v1, v5

    .restart local v1    # "$this$write_u24lambda_u243":Lokio/Sink;
    const/4 v3, 0x0

    .line 87
    .local v3, "$i$a$-forward-Pipe$sink$1$write$2":I
    :try_start_4
    invoke-interface {v1, v2, v8, v9}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 264
    .end local v1    # "$this$write_u24lambda_u243":Lokio/Sink;
    .end local v3    # "$i$a$-forward-Pipe$sink$1$write$2":I
    nop

    .end local v0    # "$i$a$-intersectWith-Pipe$forward$1$iv":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 286
    nop

    .line 288
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v12, v13, v0}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 289
    invoke-virtual {v10}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 290
    invoke-virtual {v7}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 286
    :cond_a
    nop

    .line 291
    .end local v7    # "this_$iv$iv":Lokio/Timeout;
    .end local v10    # "other$iv$iv":Lokio/Timeout;
    .end local v11    # "$i$f$intersectWith":I
    .end local v12    # "originalTimeout$iv$iv":J
    :goto_2
    nop

    .end local v5    # "$this$forward$iv":Lokio/Sink;
    .end local v6    # "$i$f$forward":I
    .end local v17    # "this_$iv":Lokio/Pipe;
    goto :goto_3

    .line 288
    .restart local v5    # "$this$forward$iv":Lokio/Sink;
    .restart local v6    # "$i$f$forward":I
    .restart local v7    # "this_$iv$iv":Lokio/Timeout;
    .restart local v10    # "other$iv$iv":Lokio/Timeout;
    .restart local v11    # "$i$f$intersectWith":I
    .restart local v12    # "originalTimeout$iv$iv":J
    .restart local v17    # "this_$iv":Lokio/Pipe;
    :catchall_2
    move-exception v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v12, v13, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 289
    invoke-virtual {v10}, Lokio/Timeout;->hasDeadline()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 290
    invoke-virtual {v7}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_b
    throw v0

    .line 87
    .end local v5    # "$this$forward$iv":Lokio/Sink;
    .end local v6    # "$i$f$forward":I
    .end local v7    # "this_$iv$iv":Lokio/Timeout;
    .end local v10    # "other$iv$iv":Lokio/Timeout;
    .end local v11    # "$i$f$intersectWith":I
    .end local v12    # "originalTimeout$iv$iv":J
    .end local v16    # "delegate":Ljava/lang/Object;
    .end local v17    # "this_$iv":Lokio/Pipe;
    .local v3, "delegate":Ljava/lang/Object;
    :cond_c
    move-object/from16 v16, v3

    .line 88
    .end local v3    # "delegate":Ljava/lang/Object;
    .restart local v16    # "delegate":Ljava/lang/Object;
    :goto_3
    return-void

    .line 61
    .end local v16    # "delegate":Ljava/lang/Object;
    .restart local v3    # "delegate":Ljava/lang/Object;
    :catchall_3
    move-exception v0

    move-object/from16 v16, v3

    .end local v3    # "delegate":Ljava/lang/Object;
    .restart local v16    # "delegate":Ljava/lang/Object;
    goto :goto_4

    .line 63
    .end local v8    # "byteCount":J
    .end local v16    # "delegate":Ljava/lang/Object;
    .restart local v3    # "delegate":Ljava/lang/Object;
    .local v5, "$i$a$-withLock-Pipe$sink$1$write$1":I
    :cond_d
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "delegate":Ljava/lang/Object;
    .end local p1    # "source":Lokio/Buffer;
    .end local p2    # "byteCount":J
    throw v0

    .line 263
    .restart local v3    # "delegate":Ljava/lang/Object;
    .restart local p1    # "source":Lokio/Buffer;
    .restart local p2    # "byteCount":J
    :cond_e
    const/4 v0, 0x0

    .line 62
    .local v0, "$i$a$-check-Pipe$sink$1$write$1$1":I
    const-string v1, "closed"

    .end local v0    # "$i$a$-check-Pipe$sink$1$write$1$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "delegate":Ljava/lang/Object;
    .end local p1    # "source":Lokio/Buffer;
    .end local p2    # "byteCount":J
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 61
    .end local v5    # "$i$a$-withLock-Pipe$sink$1$write$1":I
    .restart local v3    # "delegate":Ljava/lang/Object;
    .restart local p1    # "source":Lokio/Buffer;
    .restart local p2    # "byteCount":J
    :catchall_4
    move-exception v0

    move-wide/from16 v8, p2

    .restart local v8    # "byteCount":J
    :goto_4
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
