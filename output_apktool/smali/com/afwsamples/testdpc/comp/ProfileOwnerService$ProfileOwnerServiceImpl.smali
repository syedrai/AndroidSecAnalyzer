.class Lcom/afwsamples/testdpc/comp/ProfileOwnerService$ProfileOwnerServiceImpl;
.super Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub;
.source "ProfileOwnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/comp/ProfileOwnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProfileOwnerServiceImpl"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
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

    .line 68
    invoke-direct {p0}, Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/afwsamples/testdpc/comp/ProfileOwnerService$ProfileOwnerServiceImpl;->mContext:Landroid/content/Context;

    .line 70
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/comp/ProfileOwnerService$ProfileOwnerServiceImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/comp/ProfileOwnerService$ProfileOwnerServiceImpl;->mPm:Landroid/content/pm/PackageManager;

    .line 72
    return-void
.end method


# virtual methods
.method public installCaCertificate(Landroid/content/res/AssetFileDescriptor;)Z
    .locals 3
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "afd"
        }
    .end annotation

    .line 91
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/comp/ProfileOwnerService$ProfileOwnerServiceImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/comp/ProfileOwnerService$ProfileOwnerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/afwsamples/testdpc/common/Util;->installCaCertificate(Ljava/io/InputStream;Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 92
    :cond_0
    return v1

    .line 91
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_1
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 93
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local p1    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ProfileOwnerService"

    const-string v2, "Unable to install a certificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    const/4 v1, 0x0

    return v1
.end method

.method public isLauncherIconHidden()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/ProfileOwnerService$ProfileOwnerServiceImpl;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/afwsamples/testdpc/comp/ProfileOwnerService$ProfileOwnerServiceImpl;->mContext:Landroid/content/Context;

    const-class v3, Lcom/afwsamples/testdpc/PolicyManagementActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setLauncherIconHidden(Z)V
    .locals 4
    .param p1, "hidden"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hidden"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/ProfileOwnerService$ProfileOwnerServiceImpl;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/afwsamples/testdpc/comp/ProfileOwnerService$ProfileOwnerServiceImpl;->mContext:Landroid/content/Context;

    const-class v3, Lcom/afwsamples/testdpc/PolicyManagementActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 76
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 80
    return-void
.end method
