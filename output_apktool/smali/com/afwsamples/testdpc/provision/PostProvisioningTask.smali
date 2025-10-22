.class public Lcom/afwsamples/testdpc/provision/PostProvisioningTask;
.super Ljava/lang/Object;
.source "PostProvisioningTask.java"


# static fields
.field private static final KEY_POST_PROV_DONE:Ljava/lang/String; = "key_post_prov_done"

.field private static final POST_PROV_PREFS:Ljava/lang/String; = "post_prov_prefs"

.field private static final SETUP_MANAGEMENT_LAUNCH_ACTIVITY:Ljava/lang/String; = "com.afwsamples.testdpc.SetupManagementLaunchActivity"

.field private static final TAG:Ljava/lang/String; = "PostProvisioningTask"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
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

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mContext:Landroid/content/Context;

    .line 72
    nop

    .line 73
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 74
    const-string v0, "post_prov_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 75
    return-void
.end method

.method private autoGrantRequestedPermissionsToSelf()V
    .locals 9

    .line 181
    iget-object v0, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    .line 184
    .local v1, "adminComponentName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->getRuntimePermissions(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 185
    .local v2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 186
    .local v4, "permission":Ljava/lang/String;
    iget-object v5, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 187
    const/4 v6, 0x1

    invoke-virtual {v5, v1, v0, v4, v6}, Landroid/app/admin/DevicePolicyManager;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 189
    .local v5, "success":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Auto-granting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", success: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PostProvisioningTask"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    if-nez v5, :cond_0

    .line 191
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to auto grant permission to self: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v4    # "permission":Ljava/lang/String;
    .end local v5    # "success":Z
    :cond_0
    goto :goto_0

    .line 194
    :cond_1
    return-void
.end method

.method private getRuntimePermissions(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageManager",
            "packageName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v1, 0x1000

    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 206
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 207
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 208
    .local v5, "requestedPerm":Ljava/lang/String;
    invoke-direct {p0, p1, v5}, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->isRuntimePermission(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 209
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v5    # "requestedPerm":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 213
    :cond_1
    return-object v0

    .line 201
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve info about the package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PostProvisioningTask"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    return-object v0
.end method

.method private isPostProvisioningDone()Z
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "key_post_prov_done"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isRuntimePermission(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageManager",
            "permission"
        }
    .end annotation

    .line 218
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 219
    .local v1, "pInfo":Landroid/content/pm/PermissionInfo;
    if-eqz v1, :cond_0

    .line 220
    iget v2, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 222
    return v3

    .line 227
    .end local v1    # "pInfo":Landroid/content/pm/PermissionInfo;
    :cond_0
    goto :goto_0

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve info about the permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PostProvisioningTask"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return v0
.end method

.method private markPostProvisioningDone()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_post_prov_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    return-void
.end method

.method private maybeSetAffiliationIds(Landroid/os/PersistableBundle;)V
    .locals 4
    .param p1, "extras"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extras"
        }
    .end annotation

    .line 169
    if-nez p1, :cond_0

    .line 170
    return-void

    .line 172
    :cond_0
    const-string v0, "affiliation_id"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "affiliationId":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 174
    iget-object v1, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mContext:Landroid/content/Context;

    .line 175
    invoke-static {v2}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 174
    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAffiliationIds(Landroid/content/ComponentName;Ljava/util/Set;)V

    .line 177
    :cond_1
    return-void
.end method


# virtual methods
.method public getPostProvisioningLaunchIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 113
    const-string v0, "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 114
    .local v1, "extras":Landroid/os/PersistableBundle;
    iget-object v2, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {v1}, Lcom/afwsamples/testdpc/common/LaunchIntentUtil;->isSynchronousAuthLaunch(Landroid/os/PersistableBundle;)Z

    move-result v3

    .line 116
    .local v3, "synchronousAuthLaunch":Z
    invoke-static {v1}, Lcom/afwsamples/testdpc/common/LaunchIntentUtil;->isCosuLaunch(Landroid/os/PersistableBundle;)Z

    move-result v4

    .line 117
    .local v4, "cosuLaunch":Z
    iget-object v5, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v2}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v5

    .line 118
    .local v5, "isProfileOwner":Z
    iget-object v6, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v2}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v6

    .line 121
    .local v6, "isDeviceOwner":Z
    if-nez v5, :cond_0

    if-nez v6, :cond_0

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_0
    if-eqz v4, :cond_1

    .line 126
    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mContext:Landroid/content/Context;

    const-class v9, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v7, "launch":Landroid/content/Intent;
    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 129
    .end local v7    # "launch":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mContext:Landroid/content/Context;

    const-class v8, Lcom/afwsamples/testdpc/FinalizeActivity;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v7, v0

    .line 132
    .restart local v7    # "launch":Landroid/content/Intent;
    :goto_0
    if-eqz v3, :cond_2

    .line 133
    invoke-static {v1}, Lcom/afwsamples/testdpc/common/LaunchIntentUtil;->getAddedAccountName(Landroid/os/PersistableBundle;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "accountName":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 135
    const-string v8, "account_name"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    .end local v0    # "accountName":Ljava/lang/String;
    :cond_2
    const/high16 v0, 0x10000000

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    .line 144
    iget-object v8, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    .line 145
    .local v8, "accountManager":Landroid/accounts/AccountManager;
    invoke-virtual {v8}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v9

    .line 146
    .local v9, "accounts":[Landroid/accounts/Account;
    if-eqz v9, :cond_3

    array-length v10, v9

    if-nez v10, :cond_3

    .line 148
    new-instance v10, Landroid/content/Intent;

    iget-object v11, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mContext:Landroid/content/Context;

    const-class v12, Lcom/afwsamples/testdpc/AddAccountActivity;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v10, "addAccountIntent":Landroid/content/Intent;
    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 150
    const-string v0, "nextActivityIntent"

    invoke-virtual {v10, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 151
    return-object v10

    .line 155
    .end local v8    # "accountManager":Landroid/accounts/AccountManager;
    .end local v9    # "accounts":[Landroid/accounts/Account;
    .end local v10    # "addAccountIntent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 156
    return-object v7
.end method

.method public performPostProvisioningOperations(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->isPostProvisioningDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x0

    return v0

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->markPostProvisioningDone()V

    .line 85
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->autoGrantRequestedPermissionsToSelf()V

    .line 91
    :cond_1
    const-string v0, "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    .line 92
    .local v0, "extras":Landroid/os/PersistableBundle;
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    .line 93
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->maybeSetAffiliationIds(Landroid/os/PersistableBundle;)V

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mContext:Landroid/content/Context;

    const-string v4, "com.afwsamples.testdpc.SetupManagementLaunchActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 99
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 104
    return v4
.end method
