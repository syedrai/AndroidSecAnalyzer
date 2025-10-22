.class public Lcom/afwsamples/testdpc/common/PermissionsHelper;
.super Ljava/lang/Object;
.source "PermissionsHelper.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-string v0, "PermissionsHelper"

    sput-object v0, Lcom/afwsamples/testdpc/common/PermissionsHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureRequiredPermissions([Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/Context;)Z
    .locals 7
    .param p0, "requiredPermissions"    # [Ljava/lang/String;
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requiredPermissions",
            "admin",
            "context"
        }
    .end annotation

    .line 48
    nop

    .line 50
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 51
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 56
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 57
    .local v2, "manifestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p0, v4

    .line 58
    .local v5, "expectedPermission":Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 59
    sget-object v3, Lcom/afwsamples/testdpc/common/PermissionsHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing required permission from manifest: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return v0

    .line 62
    :cond_0
    invoke-static {v5, p1, p2}, Lcom/afwsamples/testdpc/common/PermissionsHelper;->maybeGrantDangerousPermission(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 63
    return v0

    .line 57
    .end local v5    # "expectedPermission":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 66
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 52
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "manifestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/afwsamples/testdpc/common/PermissionsHelper;->TAG:Ljava/lang/String;

    const-string v3, "Could not find own package."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    return v0
.end method

.method private static hasPermissionGranted(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "componentName"    # Landroid/content/ComponentName;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "componentName",
            "context",
            "permission"
        }
    .end annotation

    .line 98
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 99
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    nop

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {v0, p0, v1, p2}, Landroid/app/admin/DevicePolicyManager;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static isPermissionDangerous(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "permission",
            "context"
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .local v1, "permissionInfo":Landroid/content/pm/PermissionInfo;
    nop

    .line 112
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 108
    .end local v1    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/afwsamples/testdpc/common/PermissionsHelper;->TAG:Ljava/lang/String;

    const-string v3, "Failed to look up permission."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    return v0
.end method

.method private static maybeGrantDangerousPermission(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/Context;)Z
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "permission",
            "admin",
            "context"
        }
    .end annotation

    .line 76
    invoke-static {p0, p2}, Lcom/afwsamples/testdpc/common/PermissionsHelper;->isPermissionDangerous(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 77
    return v1

    .line 79
    :cond_0
    invoke-static {p2}, Lcom/afwsamples/testdpc/common/ProvisioningStateUtil;->isManagedByTestDPC(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    const/4 v0, 0x0

    return v0

    .line 82
    :cond_1
    invoke-static {p1, p2, p0}, Lcom/afwsamples/testdpc/common/PermissionsHelper;->hasPermissionGranted(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    return v1

    .line 85
    :cond_2
    nop

    .line 86
    const-string v0, "device_policy"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 87
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    nop

    .line 89
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {v0, p1, v2, p0, v1}, Landroid/app/admin/DevicePolicyManager;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method
