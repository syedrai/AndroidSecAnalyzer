.class public Lcom/afwsamples/testdpc/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private createBindDeviceOwnerServiceHelper(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetUserHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "targetUserHandle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            ")",
            "Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper<",
            "Lcom/afwsamples/testdpc/comp/IDeviceOwnerService;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    const-class v1, Lcom/afwsamples/testdpc/comp/DeviceOwnerService;

    new-instance v2, Lcom/afwsamples/testdpc/BootReceiver$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/BootReceiver$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method static synthetic lambda$onReceive$0(Lcom/afwsamples/testdpc/comp/IDeviceOwnerService;)V
    .locals 1
    .param p0, "service"    # Lcom/afwsamples/testdpc/comp/IDeviceOwnerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/afwsamples/testdpc/comp/IDeviceOwnerService;->notifyUserIsUnlocked(Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    invoke-static {p1}, Lcom/afwsamples/testdpc/common/Util;->isProfileOwner(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    invoke-static {p1}, Lcom/afwsamples/testdpc/common/Util;->getBindDeviceAdminTargetUsers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {p1}, Lcom/afwsamples/testdpc/common/Util;->getBindDeviceAdminTargetUsers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 42
    .local v1, "targetUser":Landroid/os/UserHandle;
    nop

    .line 43
    invoke-direct {p0, p1, v1}, Lcom/afwsamples/testdpc/BootReceiver;->createBindDeviceOwnerServiceHelper(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    move-result-object v2

    .line 44
    .local v2, "helper":Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;, "Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper<Lcom/afwsamples/testdpc/comp/IDeviceOwnerService;>;"
    new-instance v3, Lcom/afwsamples/testdpc/BootReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/afwsamples/testdpc/BootReceiver$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->crossUserCall(Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;)Z

    goto :goto_1

    .line 37
    .end local v1    # "targetUser":Landroid/os/UserHandle;
    .end local v2    # "helper":Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;, "Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper<Lcom/afwsamples/testdpc/comp/IDeviceOwnerService;>;"
    :cond_1
    :goto_0
    return-void

    .line 46
    :cond_2
    :goto_1
    return-void
.end method
