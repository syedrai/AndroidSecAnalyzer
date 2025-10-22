.class public Lcom/afwsamples/testdpc/policy/ManageKeepUninstalledPackagesFragment;
.super Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;
.source "ManageKeepUninstalledPackagesFragment.java"


# instance fields
.field private mAdminComponent:Landroid/content/ComponentName;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 41
    sget v0, Lcom/afwsamples/testdpc/R$string;->keep_uninstalled_packages:I

    sget v1, Lcom/afwsamples/testdpc/R$string;->enter_package_name:I

    sget v2, Lcom/afwsamples/testdpc/R$string;->package_name_empty_error:I

    invoke-direct {p0, v0, v1, v2}, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;-><init>(III)V

    .line 45
    return-void
.end method


# virtual methods
.method protected loadItems()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/ManageKeepUninstalledPackagesFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/ManageKeepUninstalledPackagesFragment;->mAdminComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getKeepUninstalledPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 60
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
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

    .line 49
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    nop

    .line 52
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/ManageKeepUninstalledPackagesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/ManageKeepUninstalledPackagesFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 53
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/ManageKeepUninstalledPackagesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/ManageKeepUninstalledPackagesFragment;->mAdminComponent:Landroid/content/ComponentName;

    .line 54
    return-void
.end method

.method protected saveItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/ManageKeepUninstalledPackagesFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/ManageKeepUninstalledPackagesFragment;->mAdminComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 67
    return-void
.end method
