.class public abstract Landroidx/enterprise/feedback/KeyedAppStatesReporter;
.super Ljava/lang/Object;
.source "KeyedAppStatesReporter.java"


# static fields
.field static final ACTION_APP_STATES:Ljava/lang/String; = "androidx.enterprise.feedback.action.APP_STATES"

.field static final APP_STATES:Ljava/lang/String; = "androidx.enterprise.feedback.APP_STATES"

.field static final APP_STATE_DATA:Ljava/lang/String; = "androidx.enterprise.feedback.APP_STATE_DATA"

.field static final APP_STATE_KEY:Ljava/lang/String; = "androidx.enterprise.feedback.APP_STATE_KEY"

.field static final APP_STATE_MESSAGE:Ljava/lang/String; = "androidx.enterprise.feedback.APP_STATE_MESSAGE"

.field static final APP_STATE_SEVERITY:Ljava/lang/String; = "androidx.enterprise.feedback.APP_STATE_SEVERITY"

.field static final PHONESKY_PACKAGE_NAME:Ljava/lang/String; = "com.android.vending"

.field static final WHAT_IMMEDIATE_STATE:I = 0x2

.field static final WHAT_STATE:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static canPackageReceiveAppStates(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "packageName"
        }
    .end annotation

    .line 111
    nop

    .line 112
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 114
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    const-string v1, "com.android.vending"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 114
    :goto_1
    return v1
.end method

.method public static create(Landroid/content/Context;)Landroidx/enterprise/feedback/KeyedAppStatesReporter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 49
    new-instance v0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;

    invoke-direct {v0, p0}, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/util/concurrent/Executor;)Landroidx/enterprise/feedback/KeyedAppStatesReporter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "executor"
        }
    .end annotation

    .line 62
    new-instance v0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;

    invoke-direct {v0, p0, p1}, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public abstract setStates(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/enterprise/feedback/KeyedAppState;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public setStates(Ljava/util/Collection;Landroidx/enterprise/feedback/KeyedAppStatesCallback;)V
    .locals 1
    .param p2, "callback"    # Landroidx/enterprise/feedback/KeyedAppStatesCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "states",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/enterprise/feedback/KeyedAppState;",
            ">;",
            "Landroidx/enterprise/feedback/KeyedAppStatesCallback;",
            ")V"
        }
    .end annotation

    .line 152
    .local p1, "states":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/enterprise/feedback/KeyedAppState;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract setStatesImmediate(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/enterprise/feedback/KeyedAppState;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public setStatesImmediate(Ljava/util/Collection;Landroidx/enterprise/feedback/KeyedAppStatesCallback;)V
    .locals 1
    .param p2, "callback"    # Landroidx/enterprise/feedback/KeyedAppStatesCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "states",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/enterprise/feedback/KeyedAppState;",
            ">;",
            "Landroidx/enterprise/feedback/KeyedAppStatesCallback;",
            ")V"
        }
    .end annotation

    .line 177
    .local p1, "states":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/enterprise/feedback/KeyedAppState;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
