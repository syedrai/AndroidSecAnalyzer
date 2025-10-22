.class public Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;
.super Ljava/lang/Object;
.source "BindDeviceAdminServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BindDeviceAdminService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mServiceIntent:Landroid/content/Intent;

.field private final mServiceInterfaceConverter:Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mTargetUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceInterfaceConverter(Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;)Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->mServiceInterfaceConverter:Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "targetUserHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "serviceClass",
            "serviceInterfaceConverter",
            "targetUserHandle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;",
            "Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter<",
            "TT;>;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;, "Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper<TT;>;"
    .local p2, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    .local p3, "serviceInterfaceConverter":Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter;, "Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->mContext:Landroid/content/Context;

    .line 59
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 60
    iput-object p3, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->mServiceInterfaceConverter:Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter;

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->mServiceIntent:Landroid/content/Intent;

    .line 62
    iput-object p4, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->mTargetUserHandle:Landroid/os/UserHandle;

    .line 63
    return-void
.end method


# virtual methods
.method public crossUserCall(Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener<",
            "TT;>;)Z"
        }
    .end annotation

    .line 75
    .local p0, "this":Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;, "Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper<TT;>;"
    .local p1, "listener":Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;, "Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener<TT;>;"
    new-instance v0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;-><init>(Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;)V

    move-object v4, v0

    .line 97
    .local v4, "serviceConnection":Landroid/content/ServiceConnection;
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->mContext:Landroid/content/Context;

    .line 98
    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->mServiceIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->mTargetUserHandle:Landroid/os/UserHandle;

    .line 97
    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/DevicePolicyManager;->bindDeviceAdminServiceAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 103
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->mTargetUserHandle:Landroid/os/UserHandle;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot bind to user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BindDeviceAdminService"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    const/4 v1, 0x0

    return v1
.end method
