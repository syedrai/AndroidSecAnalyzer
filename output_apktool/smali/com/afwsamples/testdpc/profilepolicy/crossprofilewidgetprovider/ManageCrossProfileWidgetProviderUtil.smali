.class public Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;
.super Ljava/lang/Object;
.source "ManageCrossProfileWidgetProviderUtil.java"


# static fields
.field private static sInstance:Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;


# instance fields
.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 43
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;->mContext:Landroid/content/Context;

    .line 44
    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 45
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;->sInstance:Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;->sInstance:Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;

    .line 51
    :cond_0
    sget-object v1, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;->sInstance:Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 47
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public getDisabledCrossProfileWidgetProvidersList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;->mContext:Landroid/content/Context;

    .line 63
    invoke-static {v2}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 65
    .local v0, "enabledCrossProfileWidgetProvidersList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 66
    .local v1, "disabledCrossProfileWidgetProvidersPackageNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 67
    invoke-virtual {v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v2

    .line 68
    .local v2, "appWidgetProviderInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    .line 69
    .local v4, "appWidgetProviderInfo":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "appWidgetProviderPackage":Ljava/lang/String;
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 71
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v4    # "appWidgetProviderInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v5    # "appWidgetProviderPackage":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 74
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v3
.end method
