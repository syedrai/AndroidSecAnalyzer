.class public Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;
.super Landroid/app/Activity;
.source "KioskModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;
    }
.end annotation


# static fields
.field private static final KIOSK_APPS_KEY:Ljava/lang/String; = "kiosk_apps"

.field private static final KIOSK_PREFERENCE_FILE:Ljava/lang/String; = "kiosk_preference_file"

.field private static final KIOSK_USER_RESTRICTIONS:[Ljava/lang/String;

.field public static final LOCKED_APP_PACKAGE_LIST:Ljava/lang/String; = "com.afwsamples.testdpc.policy.locktask.LOCKED_APP_PACKAGE_LIST"

.field private static final TAG:Ljava/lang/String; = "KioskModeActivity"


# instance fields
.field private mAdminComponentName:Landroid/content/ComponentName;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mKioskPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 79
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "no_safe_boot"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "no_factory_reset"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "no_add_user"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "no_physical_media"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "no_adjust_volume"

    aput-object v2, v0, v1

    sput-object v0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->KIOSK_USER_RESTRICTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private restorePreviousConfiguration()V
    .locals 7

    .line 219
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 220
    nop

    .line 221
    const-string v0, "kiosk_preference_file"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 223
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    sget-object v2, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->KIOSK_USER_RESTRICTIONS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 224
    .local v5, "userRestriction":Ljava/lang/String;
    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 225
    .local v6, "prevSettingValue":Z
    invoke-direct {p0, v5, v6}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->setUserRestriction(Ljava/lang/String;Z)V

    .line 223
    .end local v5    # "userRestriction":Ljava/lang/String;
    .end local v6    # "prevSettingValue":Z
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private saveCurrentConfiguration()V
    .locals 7

    .line 205
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 206
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getUserRestrictions(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v0

    .line 207
    .local v0, "settingsBundle":Landroid/os/Bundle;
    nop

    .line 208
    const-string v1, "kiosk_preference_file"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 210
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v3, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->KIOSK_USER_RESTRICTIONS:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 211
    .local v5, "userRestriction":Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 212
    .local v6, "currentSettingValue":Z
    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 210
    .end local v5    # "userRestriction":Ljava/lang/String;
    .end local v6    # "currentSettingValue":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 216
    .end local v0    # "settingsBundle":Landroid/os/Bundle;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method private setDefaultKioskPolicies(Z)V
    .locals 5
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "active"
        }
    .end annotation

    .line 179
    if-eqz p1, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->saveCurrentConfiguration()V

    .line 181
    const-string v0, "no_safe_boot"

    invoke-direct {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->setUserRestriction(Ljava/lang/String;Z)V

    .line 182
    const-string v0, "no_factory_reset"

    invoke-direct {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->setUserRestriction(Ljava/lang/String;Z)V

    .line 183
    const-string v0, "no_add_user"

    invoke-direct {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->setUserRestriction(Ljava/lang/String;Z)V

    .line 184
    const-string v0, "no_physical_media"

    invoke-direct {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->setUserRestriction(Ljava/lang/String;Z)V

    .line 185
    const-string v0, "no_adjust_volume"

    invoke-direct {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->setUserRestriction(Ljava/lang/String;Z)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->restorePreviousConfiguration()V

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mAdminComponentName:Landroid/content/ComponentName;

    .line 192
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mKioskPackages:Ljava/util/ArrayList;

    new-array v4, v2, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    goto :goto_1

    :cond_1
    new-array v3, v2, [Ljava/lang/String;

    .line 191
    :goto_1
    invoke-virtual {v0, v1, v3}, Landroid/app/admin/DevicePolicyManager;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V

    .line 193
    const-string v0, "kiosk_preference_file"

    invoke-virtual {p0, v0, v2}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 194
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 195
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "kiosk_apps"

    if-eqz p1, :cond_2

    .line 196
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mKioskPackages:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 198
    :cond_2
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 200
    :goto_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 201
    return-void
.end method

.method private setUserRestriction(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "disallow"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "restriction",
            "disallow"
        }
    .end annotation

    .line 170
    if-eqz p2, :cond_0

    .line 171
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->addUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->clearUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void
.end method


# virtual methods
.method public onBackdoorClicked()V
    .locals 5

    .line 157
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->stopLockTask()V

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->setDefaultKioskPolicies(Z)V

    .line 159
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mAdminComponentName:Landroid/content/ComponentName;

    .line 160
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v2, Landroid/content/ComponentName;

    .line 162
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 165
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->finish()V

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/afwsamples/testdpc/PolicyManagementActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->startActivity(Landroid/content/Intent;)V

    .line 167
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mAdminComponentName:Landroid/content/ComponentName;

    .line 97
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 98
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 101
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.afwsamples.testdpc.policy.locktask.LOCKED_APP_PACKAGE_LIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "packageArray":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mKioskPackages:Ljava/util/ArrayList;

    .line 104
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 105
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mKioskPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .end local v3    # "pkg":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mKioskPackages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 108
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mKioskPackages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->setDefaultKioskPolicies(Z)V

    goto :goto_1

    .line 113
    :cond_1
    nop

    .line 114
    const-string v2, "kiosk_preference_file"

    invoke-virtual {p0, v2, v1}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 115
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/util/ArrayList;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 116
    const-string v4, "kiosk_apps"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mKioskPackages:Ljava/util/ArrayList;

    .line 120
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mKioskPackages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 121
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mKioskPackages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v1, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;

    sget v2, Lcom/afwsamples/testdpc/R$id;->pkg_name:I

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mKioskPackages:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;-><init>(Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;Landroid/content/Context;ILjava/util/List;)V

    .line 126
    .local v1, "kioskAppsArrayAdapter":Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 127
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    new-instance v3, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$1;

    invoke-direct {v3, p0, v1}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$1;-><init>(Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 135
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->setContentView(Landroid/view/View;)V

    .line 136
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 143
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 145
    .local v0, "am":Landroid/app/ActivityManager;
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->startLockTask()V

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v1

    if-nez v1, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->startLockTask()V

    .line 154
    :cond_1
    :goto_0
    return-void
.end method
