.class public Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;
.super Lcom/afwsamples/testdpc/common/SelectAppFragment;
.source "AppRestrictionsManagingPackageFragment.java"


# instance fields
.field private mDpm:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;-><init>()V

    return-void
.end method

.method private getApplicationRestrictionsManagingPackage()Ljava/lang/String;
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 102
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getApplicationRestrictionsManagingPackageWithProxy()Ljava/lang/String;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->getApplicationRestrictionsManagingPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setApplicationRestrictionsManagingPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkgName"
        }
    .end annotation

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 89
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    nop

    .line 93
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setApplicationRestrictionsManagingPackageWithProxy(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkgName"
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->setApplicationRestrictionsManagingPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method protected clearSelectedPackage()V
    .locals 1

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->setSelectedPackage(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method protected getSelectedPackage()Ljava/lang/String;
    .locals 2

    .line 78
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->getApplicationRestrictionsManagingPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->getApplicationRestrictionsManagingPackageWithProxy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 48
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 50
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 54
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->onResume()V

    .line 55
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->app_restrictions_managing_package:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 56
    return-void
.end method

.method protected setSelectedPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkgName"
        }
    .end annotation

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 p1, 0x0

    .line 64
    :cond_0
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 65
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->setApplicationRestrictionsManagingPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->setApplicationRestrictionsManagingPackageWithProxy(Ljava/lang/String;)V

    .line 69
    :goto_0
    return-void
.end method
