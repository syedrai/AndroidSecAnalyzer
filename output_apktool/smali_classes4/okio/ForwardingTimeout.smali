.class public Lokio/ForwardingTimeout;
.super Lokio/Timeout;
.source "ForwardingTimeout.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u0008H\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u0008H\u0016J\u0010\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u0008H\u0016J\u0008\u0010\u000f\u001a\u00020\u0001H\u0016J\u0008\u0010\u0010\u001a\u00020\u0001H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0012H\u0016J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0019H\u0016R\u001c\u0010\u0002\u001a\u00020\u00018GX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\u0005\"\u0004\u0008\u0006\u0010\u0004\u00a8\u0006\u001a"
    }
    d2 = {
        "Lokio/ForwardingTimeout;",
        "Lokio/Timeout;",
        "delegate",
        "<init>",
        "(Lokio/Timeout;)V",
        "()Lokio/Timeout;",
        "setDelegate",
        "timeout",
        "",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "timeoutNanos",
        "hasDeadline",
        "",
        "deadlineNanoTime",
        "clearTimeout",
        "clearDeadline",
        "throwIfReached",
        "",
        "cancel",
        "awaitSignal",
        "condition",
        "Ljava/util/concurrent/locks/Condition;",
        "waitUntilNotified",
        "monitor",
        "",
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
.field private delegate:Lokio/Timeout;


# direct methods
.method public constructor <init>(Lokio/Timeout;)V
    .locals 1
    .param p1, "delegate"    # Lokio/Timeout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegate"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    .line 24
    iput-object p1, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    .line 23
    return-void
.end method


# virtual methods
.method public awaitSignal(Ljava/util/concurrent/locks/Condition;)V
    .locals 1
    .param p1, "condition"    # Ljava/util/concurrent/locks/Condition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "condition"
        }
    .end annotation

    const-string v0, "condition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v0, p1}, Lokio/Timeout;->awaitSignal(Ljava/util/concurrent/locks/Condition;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 54
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->cancel()V

    return-void
.end method

.method public clearDeadline()Lokio/Timeout;
    .locals 1

    .line 49
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public clearTimeout()Lokio/Timeout;
    .locals 1

    .line 47
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public deadlineNanoTime()J
    .locals 2

    .line 41
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public deadlineNanoTime(J)Lokio/Timeout;
    .locals 1
    .param p1, "deadlineNanoTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deadlineNanoTime"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    .line 44
    nop

    .line 43
    invoke-virtual {v0, p1, p2}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v0

    .line 45
    return-object v0
.end method

.method public final delegate()Lokio/Timeout;
    .locals 1

    .line 24
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    return-object v0
.end method

.method public hasDeadline()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    return v0
.end method

.method public final setDelegate(Lokio/Timeout;)Lokio/ForwardingTimeout;
    .locals 1
    .param p1, "delegate"    # Lokio/Timeout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegate"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    .line 32
    return-object p0
.end method

.method public final synthetic setDelegate(Lokio/Timeout;)V
    .locals 1
    .param p1, "<set-?>"    # Lokio/Timeout;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    .line 26
    return-void
.end method

.method public throwIfReached()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->throwIfReached()V

    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeout",
            "unit"
        }
    .end annotation

    const-string/jumbo v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public timeoutNanos()J
    .locals 2

    .line 37
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public waitUntilNotified(Ljava/lang/Object;)V
    .locals 1
    .param p1, "monitor"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    const-string v0, "monitor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {v0, p1}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    return-void
.end method
