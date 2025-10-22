.class public Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;
.super Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
.source "BindDeviceAdminFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final INSTALL_CA_CERTIFICATE_REQUEST_CODE:I = 0x0

.field private static final KEY_HIDE_PO_LAUNCHER_ICON:Ljava/lang/String; = "hide_po_launcher_icon"

.field private static final KEY_INSTALL_CA_CERTIFICATE:Ljava/lang/String; = "install_ca_cert"

.field private static final KEY_PO_USER_STATUS:Ljava/lang/String; = "po_user_status"

.field private static final TAG:Ljava/lang/String; = "BindDeviceAdminFragment"


# instance fields
.field private mBindDeviceAdminServiceHelper:Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper<",
            "Lcom/afwsamples/testdpc/comp/IProfileOwnerService;",
            ">;"
        }
    .end annotation
.end field

.field private mHideLauncherIconPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mInstallCaCertificatePreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mProfileOwnerUser:Landroid/os/UserHandle;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$-6V8GuJ5vVZyFI8lcJFoQTI3dzM(Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->lambda$onActivityResult$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$07EKFnUnoLIdS3YtzEUdaTIDZ2s(Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;Landroid/content/res/AssetFileDescriptor;Lcom/afwsamples/testdpc/comp/IProfileOwnerService;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->lambda$onActivityResult$0(Landroid/content/res/AssetFileDescriptor;Lcom/afwsamples/testdpc/comp/IProfileOwnerService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D01rR3CkCwN-gjsG-YLby-Z490k(Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;Lcom/afwsamples/testdpc/comp/IProfileOwnerService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->lambda$refresh$0(Lcom/afwsamples/testdpc/comp/IProfileOwnerService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HE1ThqWPC1c43VtNTMXCNSzpcp4(Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->lambda$onCreatePreferences$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$z2oGPMO9sMRy91nB0UFNAIxVsFc(Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->lambda$getCustomConstraint$0(I)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;-><init>()V

    return-void
.end method

.method private getCustomConstraint(I)Lcom/afwsamples/testdpc/common/preference/CustomConstraint;
    .locals 1
    .param p1, "secondaryUserConstraint"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secondaryUserConstraint"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$ExternalSyntheticLambda5;-><init>(Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;I)V

    return-object v0
.end method

.method private isManagedProfileOwner()Z
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mProfileOwnerUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mProfileOwnerUser:Landroid/os/UserHandle;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isManagedProfileRunning()Z
    .locals 2

    .line 159
    invoke-direct {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->isManagedProfileOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mProfileOwnerUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isManagedProfileUnlocked()Z
    .locals 2

    .line 164
    invoke-direct {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->isManagedProfileOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mProfileOwnerUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$getCustomConstraint$0(I)I
    .locals 1
    .param p1, "secondaryUserConstraint"    # I

    .line 104
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mProfileOwnerUser:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 105
    sget v0, Lcom/afwsamples/testdpc/R$string;->require_one_po_to_bind:I

    return v0

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->isManagedProfileOwner()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    return p1

    .line 108
    :cond_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->isManagedProfileRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->isManagedProfileUnlocked()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 111
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 109
    :cond_3
    :goto_0
    sget v0, Lcom/afwsamples/testdpc/R$string;->managed_profile_not_running_or_unlocked:I

    return v0
.end method

.method private synthetic lambda$onActivityResult$0(Landroid/content/res/AssetFileDescriptor;Lcom/afwsamples/testdpc/comp/IProfileOwnerService;)V
    .locals 4
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "service"    # Lcom/afwsamples/testdpc/comp/IProfileOwnerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    invoke-interface {p2, p1}, Lcom/afwsamples/testdpc/comp/IProfileOwnerService;->installCaCertificate(Landroid/content/res/AssetFileDescriptor;)Z

    move-result v0

    .line 208
    .local v0, "isCaInstalled":Z
    if-eqz v0, :cond_0

    .line 209
    sget v1, Lcom/afwsamples/testdpc/R$string;->install_ca_successfully:I

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 210
    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$string;->install_ca_fail:I

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    nop

    .line 211
    .local v1, "toastMessage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$ExternalSyntheticLambda0;-><init>(Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 216
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 217
    return-void
.end method

.method private synthetic lambda$onActivityResult$1(Ljava/lang/String;)V
    .locals 2
    .param p1, "toastMessage"    # Ljava/lang/String;

    .line 214
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 214
    return-void
.end method

.method private synthetic lambda$onCreatePreferences$0(Landroidx/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroidx/preference/Preference;

    .line 84
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/afwsamples/testdpc/common/Util;->showFileViewer(Landroidx/preference/PreferenceFragment;I)V

    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$onPreferenceChange$0(Ljava/lang/Object;Lcom/afwsamples/testdpc/comp/IProfileOwnerService;)V
    .locals 1
    .param p0, "newValue"    # Ljava/lang/Object;
    .param p1, "service"    # Lcom/afwsamples/testdpc/comp/IProfileOwnerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/afwsamples/testdpc/comp/IProfileOwnerService;->setLauncherIconHidden(Z)V

    return-void
.end method

.method private synthetic lambda$refresh$0(Lcom/afwsamples/testdpc/comp/IProfileOwnerService;)V
    .locals 2
    .param p1, "service"    # Lcom/afwsamples/testdpc/comp/IProfileOwnerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mHideLauncherIconPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-interface {p1}, Lcom/afwsamples/testdpc/comp/IProfileOwnerService;->isLauncherIconHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private refresh()V
    .locals 6

    .line 119
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->getBindDeviceAdminTargetUsers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 120
    .local v0, "targetUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/common/Util;->getBindDeviceAdminTargetUsers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    iput-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mProfileOwnerUser:Landroid/os/UserHandle;

    goto :goto_0

    .line 123
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mProfileOwnerUser:Landroid/os/UserHandle;

    .line 124
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting to be able to bind to exactly one profile owner, but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BindDeviceAdminFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_0
    new-instance v1, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    .line 129
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/afwsamples/testdpc/comp/ProfileOwnerService;

    new-instance v4, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$ExternalSyntheticLambda3;-><init>()V

    iget-object v5, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mProfileOwnerUser:Landroid/os/UserHandle;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter;Landroid/os/UserHandle;)V

    iput-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mBindDeviceAdminServiceHelper:Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    .line 134
    invoke-direct {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->refreshUserStatePreference()V

    .line 135
    iget-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mHideLauncherIconPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->refreshEnabledState()V

    .line 136
    iget-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mHideLauncherIconPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mBindDeviceAdminServiceHelper:Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    new-instance v2, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$ExternalSyntheticLambda4;-><init>(Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;)V

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->crossUserCall(Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;)Z

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mInstallCaCertificatePreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->refreshEnabledState()V

    .line 141
    return-void
.end method

.method private refreshUserStatePreference()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mProfileOwnerUser:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 174
    sget v0, Lcom/afwsamples/testdpc/R$string;->require_one_po_to_bind:I

    .local v0, "stringRes":I
    goto :goto_0

    .line 175
    .end local v0    # "stringRes":I
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->isManagedProfileOwner()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    sget v0, Lcom/afwsamples/testdpc/R$string;->po_user_is_secondary:I

    .restart local v0    # "stringRes":I
    goto :goto_0

    .line 177
    .end local v0    # "stringRes":I
    :cond_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->isManagedProfileUnlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    sget v0, Lcom/afwsamples/testdpc/R$string;->managed_profile_unlocked:I

    .restart local v0    # "stringRes":I
    goto :goto_0

    .line 179
    .end local v0    # "stringRes":I
    :cond_2
    invoke-direct {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->isManagedProfileRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    sget v0, Lcom/afwsamples/testdpc/R$string;->managed_profile_running_but_locked:I

    .restart local v0    # "stringRes":I
    goto :goto_0

    .line 182
    .end local v0    # "stringRes":I
    :cond_3
    sget v0, Lcom/afwsamples/testdpc/R$string;->managed_profile_not_running:I

    .line 185
    .restart local v0    # "stringRes":I
    :goto_0
    const-string v1, "po_user_status"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method


# virtual methods
.method public isAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 67
    nop

    .line 68
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 69
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-static {p1}, Lcom/afwsamples/testdpc/common/Util;->getBindDeviceAdminTargetUsers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 69
    :goto_0
    return v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 190
    invoke-super {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 191
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 192
    if-nez p1, :cond_0

    .line 194
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    .local v1, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 198
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .local v2, "afd":Landroid/content/res/AssetFileDescriptor;
    nop

    .line 203
    iget-object v3, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mBindDeviceAdminServiceHelper:Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    new-instance v4, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$ExternalSyntheticLambda1;-><init>(Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;Landroid/content/res/AssetFileDescriptor;)V

    .line 204
    invoke-virtual {v3, v4}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->crossUserCall(Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;)Z

    move-result v3

    .line 218
    .local v3, "bindSuccess":Z
    if-nez v3, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    sget v5, Lcom/afwsamples/testdpc/R$string;->bind_to_profile_owner_failed:I

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 220
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 199
    .end local v2    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v3    # "bindSuccess":Z
    :catch_0
    move-exception v2

    .line 200
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v3, "BindDeviceAdminFragment"

    const-string v4, "Could not find certificate file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    return-void

    .line 225
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "savedInstanceState",
            "rootKey"
        }
    .end annotation

    .line 75
    sget v0, Lcom/afwsamples/testdpc/R$xml;->bind_device_admin_policies:I

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->addPreferencesFromResource(I)V

    .line 76
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mUserManager:Landroid/os/UserManager;

    .line 78
    const-string v0, "hide_po_launcher_icon"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mHideLauncherIconPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 79
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mHideLauncherIconPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    const-string v0, "install_ca_cert"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mInstallCaCertificatePreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 82
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mInstallCaCertificatePreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v1, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$ExternalSyntheticLambda2;-><init>(Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;)V

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mHideLauncherIconPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    sget v1, Lcom/afwsamples/testdpc/R$string;->po_user_is_secondary:I

    .line 90
    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getCustomConstraint(I)Lcom/afwsamples/testdpc/common/preference/CustomConstraint;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 93
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mInstallCaCertificatePreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getCustomConstraint(I)Lcom/afwsamples/testdpc/common/preference/CustomConstraint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 94
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroidx/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "preference",
            "newValue"
        }
    .end annotation

    .line 146
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v1, "hide_po_launcher_icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 155
    return v2

    .line 148
    :pswitch_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mBindDeviceAdminServiceHelper:Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    new-instance v1, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p2}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->crossUserCall(Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v2, Lcom/afwsamples/testdpc/R$string;->bind_to_profile_owner_failed:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 153
    :cond_1
    return v1

    :pswitch_data_0
    .packed-switch 0x285210d5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .line 98
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onResume()V

    .line 99
    invoke-direct {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->refresh()V

    .line 100
    return-void
.end method
