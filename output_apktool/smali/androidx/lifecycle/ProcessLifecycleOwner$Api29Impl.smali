.class Landroidx/lifecycle/ProcessLifecycleOwner$Api29Impl;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/ProcessLifecycleOwner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    return-void
.end method

.method static registerActivityLifecycleCallbacks(Landroid/app/Activity;Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 226
    invoke-virtual {p0, p1}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 227
    return-void
.end method
