.class public abstract Landroid/support/v7/app/AppCompatDelegate;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegate$Api24Impl;,
        Landroid/support/v7/app/AppCompatDelegate$Api33Impl;,
        Landroid/support/v7/app/AppCompatDelegate$SerialExecutor;,
        Landroid/support/v7/app/AppCompatDelegate$ThreadPerTaskExecutor;,
        Landroid/support/v7/app/AppCompatDelegate$NightMode;
    }
.end annotation


# static fields
.field static final APP_LOCALES_META_DATA_HOLDER_SERVICE_NAME:Ljava/lang/String; = "android.support.v7.app.AppLocalesMetadataHolderService"

.field static final DEBUG:Z = false

.field public static final FEATURE_ACTION_MODE_OVERLAY:I = 0xa

.field public static final FEATURE_SUPPORT_ACTION_BAR:I = 0x6c

.field public static final FEATURE_SUPPORT_ACTION_BAR_OVERLAY:I = 0x6d

.field public static final MODE_NIGHT_AUTO:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_NIGHT_AUTO_BATTERY:I = 0x3

.field public static final MODE_NIGHT_AUTO_TIME:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_NIGHT_FOLLOW_SYSTEM:I = -0x1

.field public static final MODE_NIGHT_NO:I = 0x1

.field public static final MODE_NIGHT_UNSPECIFIED:I = -0x64

.field public static final MODE_NIGHT_YES:I = 0x2

.field static final TAG:Ljava/lang/String; = "AppCompatDelegate"

.field private static final sActivityDelegates:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v7/app/AppCompatDelegate;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sActivityDelegatesLock:Ljava/lang/Object;

.field private static final sAppLocalesStorageSyncLock:Ljava/lang/Object;

.field private static sDefaultNightMode:I

.field private static sIsAutoStoreLocalesOptedIn:Ljava/lang/Boolean;

.field private static sIsFrameworkSyncChecked:Z

.field private static sRequestedAppLocales:Landroidx/core/os/LocaleListCompat;

.field static sSerialExecutorForLocalesStorage:Landroid/support/v7/app/AppCompatDelegate$SerialExecutor;

.field private static sStoredAppLocales:Landroidx/core/os/LocaleListCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 118
    new-instance v0, Landroid/support/v7/app/AppCompatDelegate$SerialExecutor;

    new-instance v1, Landroid/support/v7/app/AppCompatDelegate$ThreadPerTaskExecutor;

    invoke-direct {v1}, Landroid/support/v7/app/AppCompatDelegate$ThreadPerTaskExecutor;-><init>()V

    invoke-direct {v0, v1}, Landroid/support/v7/app/AppCompatDelegate$SerialExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v0, Landroid/support/v7/app/AppCompatDelegate;->sSerialExecutorForLocalesStorage:Landroid/support/v7/app/AppCompatDelegate$SerialExecutor;

    .line 243
    const/16 v0, -0x64

    sput v0, Landroid/support/v7/app/AppCompatDelegate;->sDefaultNightMode:I

    .line 245
    const/4 v0, 0x0

    sput-object v0, Landroid/support/v7/app/AppCompatDelegate;->sRequestedAppLocales:Landroidx/core/os/LocaleListCompat;

    .line 246
    sput-object v0, Landroid/support/v7/app/AppCompatDelegate;->sStoredAppLocales:Landroidx/core/os/LocaleListCompat;

    .line 247
    sput-object v0, Landroid/support/v7/app/AppCompatDelegate;->sIsAutoStoreLocalesOptedIn:Ljava/lang/Boolean;

    .line 248
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v7/app/AppCompatDelegate;->sIsFrameworkSyncChecked:Z

    .line 255
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    sput-object v0, Landroid/support/v7/app/AppCompatDelegate;->sActivityDelegates:Landroidx/collection/ArraySet;

    .line 257
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/app/AppCompatDelegate;->sActivityDelegatesLock:Ljava/lang/Object;

    .line 258
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/app/AppCompatDelegate;->sAppLocalesStorageSyncLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addActiveDelegate(Landroid/support/v7/app/AppCompatDelegate;)V
    .locals 3
    .param p0, "delegate"    # Landroid/support/v7/app/AppCompatDelegate;

    .line 1043
    sget-object v0, Landroid/support/v7/app/AppCompatDelegate;->sActivityDelegatesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1046
    :try_start_0
    invoke-static {p0}, Landroid/support/v7/app/AppCompatDelegate;->removeDelegateFromActives(Landroid/support/v7/app/AppCompatDelegate;)V

    .line 1048
    sget-object v1, Landroid/support/v7/app/AppCompatDelegate;->sActivityDelegates:Landroidx/collection/ArraySet;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1049
    monitor-exit v0

    .line 1050
    return-void

    .line 1049
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static applyDayNightToActiveDelegates()V
    .locals 4

    .line 1121
    sget-object v0, Landroid/support/v7/app/AppCompatDelegate;->sActivityDelegatesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1122
    :try_start_0
    sget-object v1, Landroid/support/v7/app/AppCompatDelegate;->sActivityDelegates:Landroidx/collection/ArraySet;

    invoke-virtual {v1}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1123
    .local v2, "activeDelegate":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/app/AppCompatDelegate;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/app/AppCompatDelegate;

    .line 1124
    .local v3, "delegate":Landroid/support/v7/app/AppCompatDelegate;
    if-eqz v3, :cond_0

    .line 1128
    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDelegate;->applyDayNight()Z

    .line 1130
    .end local v2    # "activeDelegate":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/app/AppCompatDelegate;>;"
    .end local v3    # "delegate":Landroid/support/v7/app/AppCompatDelegate;
    :cond_0
    goto :goto_0

    .line 1131
    :cond_1
    monitor-exit v0

    .line 1132
    return-void

    .line 1131
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static applyLocalesToActiveDelegates()V
    .locals 3

    .line 1135
    sget-object v0, Landroid/support/v7/app/AppCompatDelegate;->sActivityDelegates:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1136
    .local v1, "activeDelegate":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/app/AppCompatDelegate;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/AppCompatDelegate;

    .line 1137
    .local v2, "delegate":Landroid/support/v7/app/AppCompatDelegate;
    if-eqz v2, :cond_0

    .line 1141
    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDelegate;->applyAppLocales()Z

    .line 1143
    .end local v1    # "activeDelegate":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/app/AppCompatDelegate;>;"
    .end local v2    # "delegate":Landroid/support/v7/app/AppCompatDelegate;
    :cond_0
    goto :goto_0

    .line 1144
    :cond_1
    return-void
.end method

.method public static create(Landroid/app/Activity;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroid/support/v7/app/AppCompatCallback;

    .line 312
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;-><init>(Landroid/app/Activity;Landroid/support/v7/app/AppCompatCallback;)V

    return-object v0
.end method

.method public static create(Landroid/app/Dialog;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;
    .locals 1
    .param p0, "dialog"    # Landroid/app/Dialog;
    .param p1, "callback"    # Landroid/support/v7/app/AppCompatCallback;

    .line 323
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;-><init>(Landroid/app/Dialog;Landroid/support/v7/app/AppCompatCallback;)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/app/Activity;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/support/v7/app/AppCompatCallback;

    .line 349
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroid/support/v7/app/AppCompatCallback;)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "callback"    # Landroid/support/v7/app/AppCompatCallback;

    .line 336
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    return-object v0
.end method

.method public static getApplicationLocales()Landroidx/core/os/LocaleListCompat;
    .locals 2

    .line 817
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    .line 819
    invoke-static {}, Landroid/support/v7/app/AppCompatDelegate;->getLocaleManagerForApplication()Ljava/lang/Object;

    move-result-object v0

    .line 820
    .local v0, "localeManager":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 821
    invoke-static {v0}, Landroid/support/v7/app/AppCompatDelegate$Api33Impl;->localeManagerGetApplicationLocales(Ljava/lang/Object;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/os/LocaleListCompat;->wrap(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;

    move-result-object v1

    return-object v1

    .line 824
    .end local v0    # "localeManager":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 825
    :cond_1
    sget-object v0, Landroid/support/v7/app/AppCompatDelegate;->sRequestedAppLocales:Landroidx/core/os/LocaleListCompat;

    if-eqz v0, :cond_2

    .line 828
    sget-object v0, Landroid/support/v7/app/AppCompatDelegate;->sRequestedAppLocales:Landroidx/core/os/LocaleListCompat;

    return-object v0

    .line 831
    :cond_2
    :goto_0
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getEmptyLocaleList()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultNightMode()I
    .locals 1

    .line 841
    sget v0, Landroid/support/v7/app/AppCompatDelegate;->sDefaultNightMode:I

    return v0
.end method

.method static getLocaleManagerForApplication()Ljava/lang/Object;
    .locals 4

    .line 890
    sget-object v0, Landroid/support/v7/app/AppCompatDelegate;->sActivityDelegates:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 891
    .local v1, "activeDelegate":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/app/AppCompatDelegate;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/AppCompatDelegate;

    .line 892
    .local v2, "delegate":Landroid/support/v7/app/AppCompatDelegate;
    if-eqz v2, :cond_0

    .line 893
    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDelegate;->getContextForDelegate()Landroid/content/Context;

    move-result-object v3

    .line 894
    .local v3, "context":Landroid/content/Context;
    if-eqz v3, :cond_0

    .line 895
    const-string v0, "locale"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 898
    .end local v1    # "activeDelegate":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/app/AppCompatDelegate;>;"
    .end local v2    # "delegate":Landroid/support/v7/app/AppCompatDelegate;
    .end local v3    # "context":Landroid/content/Context;
    :cond_0
    goto :goto_0

    .line 899
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static getRequestedAppLocales()Landroidx/core/os/LocaleListCompat;
    .locals 1

    .line 850
    sget-object v0, Landroid/support/v7/app/AppCompatDelegate;->sRequestedAppLocales:Landroidx/core/os/LocaleListCompat;

    return-object v0
.end method

.method static getStoredAppLocales()Landroidx/core/os/LocaleListCompat;
    .locals 1

    .line 859
    sget-object v0, Landroid/support/v7/app/AppCompatDelegate;->sStoredAppLocales:Landroidx/core/os/LocaleListCompat;

    return-object v0
.end method

.method static isAutoStorageOptedIn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 906
    sget-object v0, Landroid/support/v7/app/AppCompatDelegate;->sIsAutoStoreLocalesOptedIn:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 908
    :try_start_0
    invoke-static {p0}, Landroid/support/v7/app/AppLocalesMetadataHolderService;->getServiceInfo(Landroid/content/Context;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 910
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 911
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "autoStoreLocales"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Landroid/support/v7/app/AppCompatDelegate;->sIsAutoStoreLocalesOptedIn:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    .end local v0    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_0
    goto :goto_0

    .line 914
    :catch_0
    move-exception v0

    .line 915
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "AppCompatDelegate"

    const-string v2, "Checking for metadata for AppLocalesMetadataHolderService : Service not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Landroid/support/v7/app/AppCompatDelegate;->sIsAutoStoreLocalesOptedIn:Ljava/lang/Boolean;

    .line 920
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_0
    sget-object v0, Landroid/support/v7/app/AppCompatDelegate;->sIsAutoStoreLocalesOptedIn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isCompatVectorFromResourcesEnabled()Z
    .locals 1

    .line 1039
    invoke-static {}, Landroid/support/v7/widget/VectorEnabledTintResources;->isCompatVectorFromResourcesEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$asyncExecuteSyncRequestedAndStoredLocales$0(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .line 931
    invoke-static {p0}, Landroid/support/v7/app/AppCompatDelegate;->syncRequestedAndStoredLocales(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$syncRequestedAndStoredLocales$1(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 965
    invoke-static {p0}, Landroid/support/v7/app/AppCompatDelegate;->syncLocalesToFramework(Landroid/content/Context;)V

    .line 966
    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/v7/app/AppCompatDelegate;->sIsFrameworkSyncChecked:Z

    .line 967
    return-void
.end method

.method static removeActivityDelegate(Landroid/support/v7/app/AppCompatDelegate;)V
    .locals 2
    .param p0, "delegate"    # Landroid/support/v7/app/AppCompatDelegate;

    .line 1053
    sget-object v0, Landroid/support/v7/app/AppCompatDelegate;->sActivityDelegatesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1055
    :try_start_0
    invoke-static {p0}, Landroid/support/v7/app/AppCompatDelegate;->removeDelegateFromActives(Landroid/support/v7/app/AppCompatDelegate;)V

    .line 1056
    monitor-exit v0

    .line 1057
    return-void

    .line 1056
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static removeDelegateFromActives(Landroid/support/v7/app/AppCompatDelegate;)V
    .locals 3
    .param p0, "toRemove"    # Landroid/support/v7/app/AppCompatDelegate;

    .line 1107
    sget-object v0, Landroid/support/v7/app/AppCompatDelegate;->sActivityDelegatesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1108
    :try_start_0
    sget-object v1, Landroid/support/v7/app/AppCompatDelegate;->sActivityDelegates:Landroidx/collection/ArraySet;

    invoke-virtual {v1}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1109
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/support/v7/app/AppCompatDelegate;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/AppCompatDelegate;

    .line 1111
    .local v2, "delegate":Landroid/support/v7/app/AppCompatDelegate;
    if-eq v2, p0, :cond_0

    if-nez v2, :cond_1

    .line 1114
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1116
    .end local v2    # "delegate":Landroid/support/v7/app/AppCompatDelegate;
    :cond_1
    goto :goto_0

    .line 1117
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/support/v7/app/AppCompatDelegate;>;>;"
    :cond_2
    monitor-exit v0

    .line 1118
    return-void

    .line 1117
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static resetStaticRequestedAndStoredLocales()V
    .locals 1

    .line 868
    const/4 v0, 0x0

    sput-object v0, Landroid/support/v7/app/AppCompatDelegate;->sRequestedAppLocales:Landroidx/core/os/LocaleListCompat;

    .line 869
    sput-object v0, Landroid/support/v7/app/AppCompatDelegate;->sStoredAppLocales:Landroidx/core/os/LocaleListCompat;

    .line 870
    return-void
.end method

.method public static setApplicationLocales(Landroidx/core/os/LocaleListCompat;)V
    .locals 2
    .param p0, "locales"    # Landroidx/core/os/LocaleListCompat;

    .line 780
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    .line 784
    invoke-static {}, Landroid/support/v7/app/AppCompatDelegate;->getLocaleManagerForApplication()Ljava/lang/Object;

    move-result-object v0

    .line 785
    .local v0, "localeManager":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 786
    nop

    .line 787
    invoke-virtual {p0}, Landroidx/core/os/LocaleListCompat;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/app/AppCompatDelegate$Api24Impl;->localeListForLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v1

    .line 786
    invoke-static {v0, v1}, Landroid/support/v7/app/AppCompatDelegate$Api33Impl;->localeManagerSetApplicationLocales(Ljava/lang/Object;Landroid/os/LocaleList;)V

    .line 789
    .end local v0    # "localeManager":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 794
    :cond_1
    sget-object v0, Landroid/support/v7/app/AppCompatDelegate;->sRequestedAppLocales:Landroidx/core/os/LocaleListCompat;

    invoke-virtual {p0, v0}, Landroidx/core/os/LocaleListCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 795
    sget-object v0, Landroid/support/v7/app/AppCompatDelegate;->sActivityDelegatesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 796
    :try_start_0
    sput-object p0, Landroid/support/v7/app/AppCompatDelegate;->sRequestedAppLocales:Landroidx/core/os/LocaleListCompat;

    .line 797
    invoke-static {}, Landroid/support/v7/app/AppCompatDelegate;->applyLocalesToActiveDelegates()V

    .line 798
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 804
    :cond_2
    :goto_0
    return-void
.end method

.method public static setCompatVectorFromResourcesEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .line 1029
    invoke-static {p0}, Landroid/support/v7/widget/VectorEnabledTintResources;->setCompatVectorFromResourcesEnabled(Z)V

    .line 1030
    return-void
.end method

.method public static setDefaultNightMode(I)V
    .locals 2
    .param p0, "mode"    # I

    .line 696
    packed-switch p0, :pswitch_data_0

    .line 711
    const-string v0, "AppCompatDelegate"

    const-string v1, "setDefaultNightMode() called with an unknown mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 702
    :pswitch_0
    sget v0, Landroid/support/v7/app/AppCompatDelegate;->sDefaultNightMode:I

    if-eq v0, p0, :cond_0

    .line 703
    sput p0, Landroid/support/v7/app/AppCompatDelegate;->sDefaultNightMode:I

    .line 704
    invoke-static {}, Landroid/support/v7/app/AppCompatDelegate;->applyDayNightToActiveDelegates()V

    .line 714
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static setIsAutoStoreLocalesOptedIn(Z)V
    .locals 1
    .param p0, "isAutoStoreLocalesOptedIn"    # Z

    .line 881
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/AppCompatDelegate;->sIsAutoStoreLocalesOptedIn:Ljava/lang/Boolean;

    .line 882
    return-void
.end method

.method static syncLocalesToFramework(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1068
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    .line 1069
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android.support.v7.app.AppLocalesMetadataHolderService"

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1072
    .local v0, "app_locales_component":Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1077
    invoke-static {}, Landroid/support/v7/app/AppCompatDelegate;->getApplicationLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/os/LocaleListCompat;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1083
    invoke-static {p0}, Landroid/support/v4/app/AppLocalesStorageHelper;->readLocales(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1087
    .local v1, "appLocales":Ljava/lang/String;
    const-string v3, "locale"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1088
    .local v3, "localeManager":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 1089
    nop

    .line 1091
    invoke-static {v1}, Landroid/support/v7/app/AppCompatDelegate$Api24Impl;->localeListForLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v4

    .line 1089
    invoke-static {v3, v4}, Landroid/support/v7/app/AppCompatDelegate$Api33Impl;->localeManagerSetApplicationLocales(Ljava/lang/Object;Landroid/os/LocaleList;)V

    .line 1100
    .end local v1    # "appLocales":Ljava/lang/String;
    .end local v3    # "localeManager":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1104
    .end local v0    # "app_locales_component":Landroid/content/ComponentName;
    :cond_1
    return-void
.end method

.method static syncRequestedAndStoredLocales(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 958
    invoke-static {p0}, Landroid/support/v7/app/AppCompatDelegate;->isAutoStorageOptedIn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 959
    return-void

    .line 960
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    .line 961
    sget-boolean v0, Landroid/support/v7/app/AppCompatDelegate;->sIsFrameworkSyncChecked:Z

    if-nez v0, :cond_6

    .line 964
    sget-object v0, Landroid/support/v7/app/AppCompatDelegate;->sSerialExecutorForLocalesStorage:Landroid/support/v7/app/AppCompatDelegate$SerialExecutor;

    new-instance v1, Landroid/support/v7/app/AppCompatDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AppCompatDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatDelegate$SerialExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 970
    :cond_1
    sget-object v0, Landroid/support/v7/app/AppCompatDelegate;->sAppLocalesStorageSyncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 971
    :try_start_0
    sget-object v1, Landroid/support/v7/app/AppCompatDelegate;->sRequestedAppLocales:Landroidx/core/os/LocaleListCompat;

    if-nez v1, :cond_4

    .line 972
    sget-object v1, Landroid/support/v7/app/AppCompatDelegate;->sStoredAppLocales:Landroidx/core/os/LocaleListCompat;

    if-nez v1, :cond_2

    .line 973
    nop

    .line 975
    invoke-static {p0}, Landroid/support/v4/app/AppLocalesStorageHelper;->readLocales(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 974
    invoke-static {v1}, Landroidx/core/os/LocaleListCompat;->forLanguageTags(Ljava/lang/String;)Landroidx/core/os/LocaleListCompat;

    move-result-object v1

    sput-object v1, Landroid/support/v7/app/AppCompatDelegate;->sStoredAppLocales:Landroidx/core/os/LocaleListCompat;

    .line 977
    :cond_2
    sget-object v1, Landroid/support/v7/app/AppCompatDelegate;->sStoredAppLocales:Landroidx/core/os/LocaleListCompat;

    invoke-virtual {v1}, Landroidx/core/os/LocaleListCompat;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 981
    monitor-exit v0

    return-void

    .line 983
    :cond_3
    sget-object v1, Landroid/support/v7/app/AppCompatDelegate;->sStoredAppLocales:Landroidx/core/os/LocaleListCompat;

    sput-object v1, Landroid/support/v7/app/AppCompatDelegate;->sRequestedAppLocales:Landroidx/core/os/LocaleListCompat;

    goto :goto_0

    .line 984
    :cond_4
    sget-object v1, Landroid/support/v7/app/AppCompatDelegate;->sRequestedAppLocales:Landroidx/core/os/LocaleListCompat;

    sget-object v2, Landroid/support/v7/app/AppCompatDelegate;->sStoredAppLocales:Landroidx/core/os/LocaleListCompat;

    invoke-virtual {v1, v2}, Landroidx/core/os/LocaleListCompat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 987
    sget-object v1, Landroid/support/v7/app/AppCompatDelegate;->sRequestedAppLocales:Landroidx/core/os/LocaleListCompat;

    sput-object v1, Landroid/support/v7/app/AppCompatDelegate;->sStoredAppLocales:Landroidx/core/os/LocaleListCompat;

    .line 988
    sget-object v1, Landroid/support/v7/app/AppCompatDelegate;->sRequestedAppLocales:Landroidx/core/os/LocaleListCompat;

    .line 989
    invoke-virtual {v1}, Landroidx/core/os/LocaleListCompat;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    .line 988
    invoke-static {p0, v1}, Landroid/support/v4/app/AppLocalesStorageHelper;->persistLocales(Landroid/content/Context;Ljava/lang/String;)V

    .line 991
    :cond_5
    :goto_0
    monitor-exit v0

    .line 993
    :cond_6
    :goto_1
    return-void

    .line 991
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public abstract addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method applyAppLocales()Z
    .locals 1

    .line 633
    const/4 v0, 0x0

    return v0
.end method

.method public abstract applyDayNight()Z
.end method

.method asyncExecuteSyncRequestedAndStoredLocales(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 931
    sget-object v0, Landroid/support/v7/app/AppCompatDelegate;->sSerialExecutorForLocalesStorage:Landroid/support/v7/app/AppCompatDelegate$SerialExecutor;

    new-instance v1, Landroid/support/v7/app/AppCompatDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/support/v7/app/AppCompatDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatDelegate$SerialExecutor;->execute(Ljava/lang/Runnable;)V

    .line 932
    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 469
    return-void
.end method

.method public attachBaseContext2(Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 476
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegate;->attachBaseContext(Landroid/content/Context;)V

    .line 477
    return-object p1
.end method

.method public abstract createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end method

.method public abstract findViewById(I)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public getContextForDelegate()Landroid/content/Context;
    .locals 1

    .line 640
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getDrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
.end method

.method public getLocalNightMode()I
    .locals 1

    .line 670
    const/16 v0, -0x64

    return v0
.end method

.method public abstract getMenuInflater()Landroid/view/MenuInflater;
.end method

.method public abstract getSupportActionBar()Landroid/support/v7/app/ActionBar;
.end method

.method public abstract hasWindowFeature(I)Z
.end method

.method public abstract installViewFactory()V
.end method

.method public abstract invalidateOptionsMenu()V
.end method

.method public abstract isHandleNativeActionModesEnabled()Z
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPostCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onPostResume()V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract requestWindowFeature(I)Z
.end method

.method public abstract setContentView(I)V
.end method

.method public abstract setContentView(Landroid/view/View;)V
.end method

.method public abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract setHandleNativeActionModesEnabled(Z)V
.end method

.method public abstract setLocalNightMode(I)V
.end method

.method public setOnBackInvokedDispatcher(Landroid/window/OnBackInvokedDispatcher;)V
    .locals 0
    .param p1, "dispatcher"    # Landroid/window/OnBackInvokedDispatcher;

    .line 617
    return-void
.end method

.method public abstract setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
.end method

.method public setTheme(I)V
    .locals 0
    .param p1, "themeResId"    # I

    .line 431
    return-void
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
.end method
