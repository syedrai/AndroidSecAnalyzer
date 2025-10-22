.class public Lcom/afwsamples/testdpc/policy/certificate/DelegatedCertInstallerFragment;
.super Lcom/afwsamples/testdpc/common/SelectAppFragment;
.source "DelegatedCertInstallerFragment.java"


# instance fields
.field private mDpm:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected clearSelectedPackage()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/certificate/DelegatedCertInstallerFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/certificate/DelegatedCertInstallerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method protected getSelectedPackage()Ljava/lang/String;
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/certificate/DelegatedCertInstallerFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/certificate/DelegatedCertInstallerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;

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

    .line 40
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/certificate/DelegatedCertInstallerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/certificate/DelegatedCertInstallerFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 42
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 46
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->onResume()V

    .line 47
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/certificate/DelegatedCertInstallerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->manage_cert_installer:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 48
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

    .line 52
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/certificate/DelegatedCertInstallerFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/certificate/DelegatedCertInstallerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 53
    return-void
.end method
