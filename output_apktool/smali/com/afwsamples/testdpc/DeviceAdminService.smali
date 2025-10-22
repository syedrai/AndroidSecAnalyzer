.class public Lcom/afwsamples/testdpc/DeviceAdminService;
.super Landroid/app/admin/DeviceAdminService;
.source "DeviceAdminService.java"


# instance fields
.field private mPackageChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/admin/DeviceAdminService;-><init>()V

    return-void
.end method

.method private registerPackageChangesReceiver()V
    .locals 3

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 53
    new-instance v1, Lcom/afwsamples/testdpc/PackageMonitorReceiver;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/PackageMonitorReceiver;-><init>()V

    iput-object v1, p0, Lcom/afwsamples/testdpc/DeviceAdminService;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/DeviceAdminService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/DeviceAdminService;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    return-void
.end method

.method private unregisterPackageChangesReceiver()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/afwsamples/testdpc/DeviceAdminService;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/DeviceAdminService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/DeviceAdminService;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/afwsamples/testdpc/DeviceAdminService;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fd",
            "writer",
            "args"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/afwsamples/testdpc/ShellCommand;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/DeviceAdminService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;-><init>(Landroid/content/Context;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/ShellCommand;->run()V

    .line 67
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 38
    invoke-super {p0}, Landroid/app/admin/DeviceAdminService;->onCreate()V

    .line 39
    invoke-direct {p0}, Lcom/afwsamples/testdpc/DeviceAdminService;->registerPackageChangesReceiver()V

    .line 40
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 44
    invoke-super {p0}, Landroid/app/admin/DeviceAdminService;->onDestroy()V

    .line 45
    invoke-direct {p0}, Lcom/afwsamples/testdpc/DeviceAdminService;->unregisterPackageChangesReceiver()V

    .line 46
    return-void
.end method
