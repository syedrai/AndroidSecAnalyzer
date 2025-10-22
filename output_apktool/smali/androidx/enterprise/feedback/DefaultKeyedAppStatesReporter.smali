.class final Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;
.super Landroidx/enterprise/feedback/KeyedAppStatesReporter;
.source "DefaultKeyedAppStatesReporter.java"


# static fields
.field private static final EXECUTOR_IDLE_ALIVE_TIME_SECS:I = 0x14


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mServiceConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/enterprise/feedback/BufferedServiceConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 86
    invoke-static {}, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->createExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .line 87
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
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

    .line 77
    invoke-direct {p0}, Landroidx/enterprise/feedback/KeyedAppStatesReporter;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->mServiceConnections:Ljava/util/Map;

    .line 78
    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->mExecutor:Ljava/util/concurrent/Executor;

    .line 83
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Executor can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private bind(Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "acceptablePackageNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 143
    .local p1, "acceptablePackageNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 144
    .local v0, "filteredPackageNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 145
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 146
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 150
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    return-void

    .line 154
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "androidx.enterprise.feedback.action.APP_STATES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, v1, v0}, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->getServiceInfoInPackages(Landroid/content/Intent;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 157
    .local v1, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/ServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ServiceInfo;

    .line 158
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 159
    .local v4, "bindIntent":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 161
    new-instance v5, Landroidx/enterprise/feedback/BufferedServiceConnection;

    iget-object v6, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v4, v8}, Landroidx/enterprise/feedback/BufferedServiceConnection;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/content/Intent;I)V

    .line 164
    .local v5, "bufferedServiceConnection":Landroidx/enterprise/feedback/BufferedServiceConnection;
    invoke-virtual {v5}, Landroidx/enterprise/feedback/BufferedServiceConnection;->bindService()V

    .line 166
    iget-object v6, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->mServiceConnections:Ljava/util/Map;

    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .end local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v4    # "bindIntent":Landroid/content/Intent;
    .end local v5    # "bufferedServiceConnection":Landroidx/enterprise/feedback/BufferedServiceConnection;
    goto :goto_1

    .line 168
    :cond_3
    return-void
.end method

.method private static buildStateBundles(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyedAppStates"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/enterprise/feedback/KeyedAppState;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 246
    .local p0, "keyedAppStates":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/enterprise/feedback/KeyedAppState;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v0, "bundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/enterprise/feedback/KeyedAppState;

    .line 248
    .local v2, "keyedAppState":Landroidx/enterprise/feedback/KeyedAppState;
    invoke-virtual {v2}, Landroidx/enterprise/feedback/KeyedAppState;->toStateBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .end local v2    # "keyedAppState":Landroidx/enterprise/feedback/KeyedAppState;
    goto :goto_0

    .line 250
    :cond_0
    return-object v0
.end method

.method static buildStatesBundle(Ljava/util/Collection;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyedAppStates"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/enterprise/feedback/KeyedAppState;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 239
    .local p0, "keyedAppStates":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/enterprise/feedback/KeyedAppState;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 240
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "androidx.enterprise.feedback.APP_STATES"

    invoke-static {p0}, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->buildStateBundles(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 241
    return-object v0
.end method

.method private static createExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 7

    .line 64
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x14

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-object v0
.end method

.method private getDeviceOwnerAndProfileOwnerPackageNames()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->mContext:Landroid/content/Context;

    .line 172
    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 173
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v1

    .line 175
    .local v1, "activeAdmins":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    if-nez v1, :cond_0

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 179
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v2, "deviceOwnerProfileOwnerPackageNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 182
    .local v4, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 183
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 184
    :cond_1
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 186
    .end local v4    # "componentName":Landroid/content/ComponentName;
    :cond_2
    goto :goto_0

    .line 188
    :cond_3
    return-object v2
.end method

.method private getServiceInfoInPackages(Landroid/content/Intent;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "acceptablePackageNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation

    .line 225
    .local p2, "acceptablePackageNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 226
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 228
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v2, "validServiceInfo":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/ServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 230
    .local v4, "i":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {p2, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 231
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v4    # "i":Landroid/content/pm/ResolveInfo;
    :cond_0
    goto :goto_0

    .line 234
    :cond_1
    return-object v2
.end method

.method private packageNameShouldBeUnbound(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 207
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->mServiceConnections:Ljava/util/Map;

    .line 208
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/enterprise/feedback/BufferedServiceConnection;

    invoke-virtual {v0}, Landroidx/enterprise/feedback/BufferedServiceConnection;->hasBeenDisconnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    return v2

    .line 212
    :cond_0
    iget-object v0, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/enterprise/feedback/BufferedServiceConnection;

    invoke-virtual {v0}, Landroidx/enterprise/feedback/BufferedServiceConnection;->isDead()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    return v2

    .line 216
    :cond_1
    iget-object v0, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->canPackageReceiveAppStates(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 217
    return v2

    .line 220
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private setStates(Ljava/util/Collection;Landroidx/enterprise/feedback/KeyedAppStatesCallback;Z)V
    .locals 2
    .param p2, "callback"    # Landroidx/enterprise/feedback/KeyedAppStatesCallback;
    .param p3, "immediate"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "states",
            "callback",
            "immediate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/enterprise/feedback/KeyedAppState;",
            ">;",
            "Landroidx/enterprise/feedback/KeyedAppStatesCallback;",
            "Z)V"
        }
    .end annotation

    .line 103
    .local p1, "states":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/enterprise/feedback/KeyedAppState;>;"
    iget-object v0, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter$1;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter$1;-><init>(Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;Ljava/util/Collection;Landroidx/enterprise/feedback/KeyedAppStatesCallback;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method


# virtual methods
.method bind()V
    .locals 2

    .line 136
    invoke-direct {p0}, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->getDeviceOwnerAndProfileOwnerPackageNames()Ljava/util/Collection;

    move-result-object v0

    .line 137
    .local v0, "acceptablePackageNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v1, "com.android.vending"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-direct {p0, v0}, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->bind(Ljava/util/Collection;)V

    .line 139
    return-void
.end method

.method send(Landroid/os/Bundle;Landroidx/enterprise/feedback/KeyedAppStatesCallback;Z)V
    .locals 3
    .param p1, "appStatesBundle"    # Landroid/os/Bundle;
    .param p2, "callback"    # Landroidx/enterprise/feedback/KeyedAppStatesCallback;
    .param p3, "immediate"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "appStatesBundle",
            "callback",
            "immediate"
        }
    .end annotation

    .line 256
    if-eqz p2, :cond_0

    .line 258
    new-instance v0, Landroidx/enterprise/feedback/KeyedAppStatesCallbackMerger;

    iget-object v1, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1, p2}, Landroidx/enterprise/feedback/KeyedAppStatesCallbackMerger;-><init>(ILandroidx/enterprise/feedback/KeyedAppStatesCallback;)V

    move-object p2, v0

    .line 260
    :cond_0
    iget-object v0, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/enterprise/feedback/BufferedServiceConnection;

    .line 261
    .local v1, "serviceConnection":Landroidx/enterprise/feedback/BufferedServiceConnection;
    new-instance v2, Landroidx/enterprise/feedback/SendableMessage;

    invoke-direct {v2, p1, p2, p3}, Landroidx/enterprise/feedback/SendableMessage;-><init>(Landroid/os/Bundle;Landroidx/enterprise/feedback/KeyedAppStatesCallback;Z)V

    invoke-virtual {v1, v2}, Landroidx/enterprise/feedback/BufferedServiceConnection;->send(Landroidx/enterprise/feedback/SendableMessage;)V

    .line 262
    .end local v1    # "serviceConnection":Landroidx/enterprise/feedback/BufferedServiceConnection;
    goto :goto_0

    .line 263
    :cond_1
    return-void
.end method

.method public setStates(Ljava/util/Collection;)V
    .locals 1
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

    .line 92
    .local p1, "states":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/enterprise/feedback/KeyedAppState;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->setStates(Ljava/util/Collection;Landroidx/enterprise/feedback/KeyedAppStatesCallback;)V

    .line 93
    return-void
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

    .line 98
    .local p1, "states":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/enterprise/feedback/KeyedAppState;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->setStates(Ljava/util/Collection;Landroidx/enterprise/feedback/KeyedAppStatesCallback;Z)V

    .line 99
    return-void
.end method

.method public setStatesImmediate(Ljava/util/Collection;)V
    .locals 1
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

    .line 125
    .local p1, "states":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/enterprise/feedback/KeyedAppState;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->setStatesImmediate(Ljava/util/Collection;Landroidx/enterprise/feedback/KeyedAppStatesCallback;)V

    .line 126
    return-void
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

    .line 131
    .local p1, "states":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/enterprise/feedback/KeyedAppState;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->setStates(Ljava/util/Collection;Landroidx/enterprise/feedback/KeyedAppStatesCallback;Z)V

    .line 132
    return-void
.end method

.method unbindOldBindings()V
    .locals 3

    .line 193
    iget-object v0, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->mServiceConnections:Ljava/util/Map;

    .line 194
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 196
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/enterprise/feedback/BufferedServiceConnection;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 198
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/enterprise/feedback/BufferedServiceConnection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->packageNameShouldBeUnbound(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/enterprise/feedback/BufferedServiceConnection;

    invoke-virtual {v2}, Landroidx/enterprise/feedback/BufferedServiceConnection;->unbind()V

    .line 200
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 202
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/enterprise/feedback/BufferedServiceConnection;>;"
    :cond_0
    goto :goto_0

    .line 203
    :cond_1
    return-void
.end method
