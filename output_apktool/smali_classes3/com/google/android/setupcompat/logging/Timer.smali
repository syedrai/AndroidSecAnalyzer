.class public final Lcom/google/android/setupcompat/logging/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SetupCompat.Timer"


# instance fields
.field private final metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

.field private startInNanos:J

.field private stopInNanos:J


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/logging/MetricKey;)V
    .locals 0
    .param p1, "metricKey"    # Lcom/google/android/setupcompat/logging/MetricKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metricKey"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/setupcompat/logging/Timer;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    .line 28
    return-void
.end method

.method private isStarted()Z
    .locals 5

    .line 69
    iget-wide v0, p0, Lcom/google/android/setupcompat/logging/Timer;->startInNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method getDurationInNanos()J
    .locals 4

    .line 73
    iget-wide v0, p0, Lcom/google/android/setupcompat/logging/Timer;->stopInNanos:J

    iget-wide v2, p0, Lcom/google/android/setupcompat/logging/Timer;->startInNanos:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getMetricKey()Lcom/google/android/setupcompat/logging/MetricKey;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/android/setupcompat/logging/Timer;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    return-object v0
.end method

.method isStopped()Z
    .locals 5

    .line 65
    iget-wide v0, p0, Lcom/google/android/setupcompat/logging/Timer;->stopInNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public start()V
    .locals 5

    .line 36
    invoke-virtual {p0}, Lcom/google/android/setupcompat/logging/Timer;->isStopped()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Timer cannot be started once stopped."

    invoke-static {v0, v2}, Lcom/google/android/setupcompat/internal/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/google/android/setupcompat/logging/Timer;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/google/android/setupcompat/logging/Timer;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    iget-wide v2, p0, Lcom/google/android/setupcompat/logging/Timer;->startInNanos:J

    .line 41
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v2, v3, v1

    .line 40
    const-string v0, "Timer instance was already started for: %s at [%s]."

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 38
    const-string v1, "SetupCompat.Timer"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void

    .line 44
    :cond_0
    invoke-static {}, Lcom/google/android/setupcompat/internal/ClockProvider;->timeInNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/setupcompat/logging/Timer;->startInNanos:J

    .line 45
    return-void
.end method

.method public stop()V
    .locals 4

    .line 53
    invoke-direct {p0}, Lcom/google/android/setupcompat/logging/Timer;->isStarted()Z

    move-result v0

    const-string v1, "Timer must be started before it can be stopped."

    invoke-static {v0, v1}, Lcom/google/android/setupcompat/internal/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/setupcompat/logging/Timer;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/google/android/setupcompat/logging/Timer;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    iget-wide v1, p0, Lcom/google/android/setupcompat/logging/Timer;->stopInNanos:J

    .line 58
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 57
    const-string v0, "Timer instance was already stopped for: %s at [%s]"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v1, "SetupCompat.Timer"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void

    .line 61
    :cond_0
    invoke-static {}, Lcom/google/android/setupcompat/internal/ClockProvider;->timeInNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/setupcompat/logging/Timer;->stopInNanos:J

    .line 62
    return-void
.end method
