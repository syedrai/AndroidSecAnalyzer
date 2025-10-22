.class public Lcom/afwsamples/testdpc/provision/ProvisioningUtil;
.super Ljava/lang/Object;
.source "ProvisioningUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "provides only static methods"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enableProfile(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 29
    nop

    .line 30
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 31
    .local v0, "manager":Landroid/app/admin/DevicePolicyManager;
    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getReceiverComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    .line 33
    .local v1, "componentName":Landroid/content/ComponentName;
    sget v2, Lcom/afwsamples/testdpc/R$string;->profile_name:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->setProfileEnabled(Landroid/content/ComponentName;)V

    .line 36
    return-void
.end method

.method public static isAutoProvisioningDeviceOwnerMode()Z
    .locals 2

    .line 42
    const-string v0, "dev.tmp.testdpc.auto_provision_mode"

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/ReflectionUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "prop":Ljava/lang/String;
    const-string v1, "do"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
