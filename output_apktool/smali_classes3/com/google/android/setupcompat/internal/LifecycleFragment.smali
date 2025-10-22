.class public Lcom/google/android/setupcompat/internal/LifecycleFragment;
.super Landroid/app/Fragment;
.source "LifecycleFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupcompat/internal/LifecycleFragment$OnFragmentLifecycleChangeListener;
    }
.end annotation


# static fields
.field private static final FRAGMENT_ID:Ljava/lang/String; = "lifecycle_monitor"

.field private static final LOG:Lcom/google/android/setupcompat/util/Logger;

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private durationInNanos:J

.field private lifecycleChangeListener:Lcom/google/android/setupcompat/internal/LifecycleFragment$OnFragmentLifecycleChangeListener;

.field private metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

.field private startInNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const-class v0, Lcom/google/android/setupcompat/internal/LifecycleFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->LOG_TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/google/android/setupcompat/util/Logger;

    sget-object v1, Lcom/google/android/setupcompat/internal/LifecycleFragment;->LOG_TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/util/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->LOG:Lcom/google/android/setupcompat/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->durationInNanos:J

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/LifecycleFragment;->setRetainInstance(Z)V

    .line 67
    return-void
.end method

.method public static attachNow(Landroid/app/Activity;)Lcom/google/android/setupcompat/internal/LifecycleFragment;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 120
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/setupcompat/internal/LifecycleFragment;->attachNow(Landroid/app/Activity;Lcom/google/android/setupcompat/internal/LifecycleFragment$OnFragmentLifecycleChangeListener;)Lcom/google/android/setupcompat/internal/LifecycleFragment;

    move-result-object v0

    return-object v0
.end method

.method public static attachNow(Landroid/app/Activity;Lcom/google/android/setupcompat/internal/LifecycleFragment$OnFragmentLifecycleChangeListener;)Lcom/google/android/setupcompat/internal/LifecycleFragment;
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/google/android/setupcompat/internal/LifecycleFragment$OnFragmentLifecycleChangeListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "listener"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v0, v2, :cond_3

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 82
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 83
    const-string v2, "lifecycle_monitor"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 84
    .local v3, "fragment":Landroid/app/Fragment;
    if-nez v3, :cond_1

    .line 85
    new-instance v1, Lcom/google/android/setupcompat/internal/LifecycleFragment;

    invoke-direct {v1}, Lcom/google/android/setupcompat/internal/LifecycleFragment;-><init>()V

    .line 86
    .local v1, "lifeCycleFragment":Lcom/google/android/setupcompat/internal/LifecycleFragment;
    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {v1, p1}, Lcom/google/android/setupcompat/internal/LifecycleFragment;->setOnFragmentLifecycleChangeListener(Lcom/google/android/setupcompat/internal/LifecycleFragment$OnFragmentLifecycleChangeListener;)V

    .line 90
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitNow()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    move-object v2, v1

    .line 94
    .end local v3    # "fragment":Landroid/app/Fragment;
    .local v2, "fragment":Landroid/app/Fragment;
    move-object v3, v2

    goto :goto_0

    .line 92
    .end local v2    # "fragment":Landroid/app/Fragment;
    .restart local v3    # "fragment":Landroid/app/Fragment;
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/IllegalStateException;
    sget-object v4, Lcom/google/android/setupcompat/internal/LifecycleFragment;->LOG:Lcom/google/android/setupcompat/util/Logger;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error occurred when attach to Activity:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .end local v1    # "lifeCycleFragment":Lcom/google/android/setupcompat/internal/LifecycleFragment;
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    goto :goto_1

    :cond_1
    instance-of v2, v3, Lcom/google/android/setupcompat/internal/LifecycleFragment;

    if-nez v2, :cond_2

    .line 96
    sget-object v2, Lcom/google/android/setupcompat/internal/LifecycleFragment;->LOG_TAG:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Incorrect instance on lifecycle fragment."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-static {v2, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-object v1

    .line 101
    :cond_2
    sget-object v1, Lcom/google/android/setupcompat/internal/LifecycleFragment;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Find an existing fragment that belongs to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/util/Logger;->atDebug(Ljava/lang/String;)V

    .line 104
    :goto_1
    move-object v1, v3

    check-cast v1, Lcom/google/android/setupcompat/internal/LifecycleFragment;

    return-object v1

    .line 108
    .end local v0    # "fragmentManager":Landroid/app/FragmentManager;
    .end local v3    # "fragment":Landroid/app/Fragment;
    :cond_3
    sget-object v0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip attach "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because it\'s not in SUW flow."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/util/Logger;->atDebug(Ljava/lang/String;)V

    .line 110
    return-object v1
.end method

.method private logScreenResume()V
    .locals 4

    .line 173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 174
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 175
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "onScreenResume"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 176
    nop

    .line 177
    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/LifecycleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 178
    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/LifecycleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "ScreenActivity"

    invoke-static {v3, v2}, Lcom/google/android/setupcompat/logging/MetricKey;->get(Ljava/lang/String;Landroid/app/Activity;)Lcom/google/android/setupcompat/logging/MetricKey;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/setupcompat/logging/CustomEvent;->create(Lcom/google/android/setupcompat/logging/MetricKey;Landroid/os/PersistableBundle;)Lcom/google/android/setupcompat/logging/CustomEvent;

    move-result-object v2

    .line 176
    invoke-static {v1, v2}, Lcom/google/android/setupcompat/logging/SetupMetricsLogger;->logCustomEvent(Landroid/content/Context;Lcom/google/android/setupcompat/logging/CustomEvent;)V

    .line 180
    .end local v0    # "bundle":Landroid/os/PersistableBundle;
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 125
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 126
    sget-object v0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->LOG:Lcom/google/android/setupcompat/util/Logger;

    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/LifecycleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAttach host="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/util/Logger;->atDebug(Ljava/lang/String;)V

    .line 127
    const-string v0, "ScreenDuration"

    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/LifecycleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/setupcompat/logging/MetricKey;->get(Ljava/lang/String;Landroid/app/Activity;)Lcom/google/android/setupcompat/logging/MetricKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    .line 128
    return-void
.end method

.method public onDetach()V
    .locals 5

    .line 132
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 133
    sget-object v0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->LOG:Lcom/google/android/setupcompat/util/Logger;

    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/LifecycleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDetach host="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/util/Logger;->atDebug(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/LifecycleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->durationInNanos:J

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/setupcompat/logging/SetupMetricsLogger;->logDuration(Landroid/content/Context;Lcom/google/android/setupcompat/logging/MetricKey;J)V

    .line 135
    return-void
.end method

.method public onPause()V
    .locals 6

    .line 151
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 152
    sget-object v0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->LOG:Lcom/google/android/setupcompat/util/Logger;

    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/LifecycleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause host="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/util/Logger;->atDebug(Ljava/lang/String;)V

    .line 153
    iget-wide v0, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->durationInNanos:J

    invoke-static {}, Lcom/google/android/setupcompat/internal/ClockProvider;->timeInNanos()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->startInNanos:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->durationInNanos:J

    .line 154
    return-void
.end method

.method public onResume()V
    .locals 6

    .line 139
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 140
    invoke-static {}, Lcom/google/android/setupcompat/internal/ClockProvider;->timeInNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->startInNanos:J

    .line 141
    sget-object v0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 143
    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/LifecycleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->startInNanos:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume host="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", startInNanos="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/util/Logger;->atDebug(Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Lcom/google/android/setupcompat/internal/LifecycleFragment;->logScreenResume()V

    .line 147
    return-void
.end method

.method public onStop()V
    .locals 6

    .line 158
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 159
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 160
    .local v0, "onStopTimestamp":J
    sget-object v2, Lcom/google/android/setupcompat/internal/LifecycleFragment;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 162
    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/LifecycleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStop host="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", onStopTimestamp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/util/Logger;->atDebug(Ljava/lang/String;)V

    .line 165
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->lifecycleChangeListener:Lcom/google/android/setupcompat/internal/LifecycleFragment$OnFragmentLifecycleChangeListener;

    if-eqz v2, :cond_0

    .line 166
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    .line 167
    .local v2, "bundle":Landroid/os/PersistableBundle;
    const-string v3, "onScreenStop"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 168
    iget-object v3, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->lifecycleChangeListener:Lcom/google/android/setupcompat/internal/LifecycleFragment$OnFragmentLifecycleChangeListener;

    invoke-interface {v3, v2}, Lcom/google/android/setupcompat/internal/LifecycleFragment$OnFragmentLifecycleChangeListener;->onStop(Landroid/os/PersistableBundle;)V

    .line 170
    .end local v2    # "bundle":Landroid/os/PersistableBundle;
    :cond_0
    return-void
.end method

.method public setOnFragmentLifecycleChangeListener(Lcom/google/android/setupcompat/internal/LifecycleFragment$OnFragmentLifecycleChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/setupcompat/internal/LifecycleFragment$OnFragmentLifecycleChangeListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 60
    if-eqz p1, :cond_0

    .line 61
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->lifecycleChangeListener:Lcom/google/android/setupcompat/internal/LifecycleFragment$OnFragmentLifecycleChangeListener;

    .line 63
    :cond_0
    return-void
.end method
