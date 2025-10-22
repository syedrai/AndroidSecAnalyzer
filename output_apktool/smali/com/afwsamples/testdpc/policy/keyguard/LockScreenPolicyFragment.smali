.class public final Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;
.super Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;
.source "LockScreenPolicyFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$Keys;,
        Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$Container;
    }
.end annotation


# static fields
.field private static final KEYGUARD_FEATURES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1imwr3MuIsnLzk9KEOoelBZtDX4(Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->lambda$updateKeyguardFeatures$1(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4VZexs2tw5gjlzlPTwkduOfL1tc(Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;)I
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getKeyguardDisableShortcutsPolicyCustomConstraints()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$AmI2ZnjsQLu8HoNjD6Hum-TvPc0(Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->lambda$setLockScreenMessage$1(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Um4U8v_iAwMmWIcfB6iPVuJa2M4(Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->lambda$updateKeyguardFeatures$0(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZMKMZmUKtVd-j4n7Kih6Acyd5qE(Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->lambda$setup$0(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 92
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    .line 95
    sget-object v0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    .line 96
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 95
    const-string v2, "keyguard_disable_secure_camera"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    .line 100
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 98
    const-string v2, "keyguard_disable_secure_notifications"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    .line 104
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 102
    const-string v2, "keyguard_disable_unredacted_notifications"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    .line 107
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 106
    const-string v2, "keyguard_disable_trust_agents"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "keyguard_disable_face"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    .line 112
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 111
    const-string v2, "keyguard_disable_fingerprint"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "keyguard_disable_iris"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    .line 117
    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 116
    const-string v2, "keyguard_disable_remote_input"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    .line 120
    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 119
    const-string v2, "keyguard_disable_shortcuts"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    .line 123
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 122
    const-string v2, "keyguard_disable_widgets_all"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;-><init>()V

    return-void
.end method

.method private disableIncompatibleManagementOptionsInCurrentProfile()V
    .locals 4

    .line 363
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 364
    sget-object v0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 365
    .local v1, "preference":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 366
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setAdminConstraint(I)V

    .line 367
    .end local v1    # "preference":Ljava/lang/String;
    goto :goto_0

    .line 369
    :cond_0
    return-void
.end method

.method private getKeyguardDisableShortcutsPolicyCustomConstraints()I
    .locals 4

    .line 346
    nop

    .line 347
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->isProfileOwner()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/app/admin/DevicePolicyManager;

    .line 349
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 350
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 351
    .local v0, "isCope":Z
    :goto_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->isParentProfileInstance()Z

    move-result v2

    .line 353
    .local v2, "isParentProfileInstance":Z
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->isDeviceOwner()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    goto :goto_1

    .line 355
    :cond_1
    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    .line 356
    sget v1, Lcom/afwsamples/testdpc/R$string;->cannot_disable_shortcuts_on_work_profile:I

    return v1

    .line 358
    :cond_2
    sget v1, Lcom/afwsamples/testdpc/R$string;->requires_device_owner_or_profile_owner_organization_owned_device:I

    return v1

    .line 354
    :cond_3
    :goto_1
    return v1
.end method

.method static synthetic lambda$setLockScreenMessage$0(Landroidx/preference/Preference;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0
    .param p0, "preference"    # Landroidx/preference/Preference;
    .param p1, "newValue"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Void;

    .line 246
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$setLockScreenMessage$1(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 247
    const-string v0, "setDeviceOwnerLockScreenInfo"

    invoke-virtual {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$setup$0(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 310
    sget-object v0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$Keys;->NOT_APPLICABLE_TO_PARENT:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->isParentProfileInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    sget v0, Lcom/afwsamples/testdpc/R$string;->not_for_parent_profile:I

    goto :goto_0

    .line 312
    :cond_0
    const/4 v0, 0x0

    .line 310
    :goto_0
    return v0
.end method

.method private synthetic lambda$updateKeyguardFeatures$0(Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .line 260
    const-string v0, "setKeyguardDisabledFeatures"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->onSuccessLog(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateKeyguardFeatures$1(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 261
    const-string v0, "setKeyguardDisabledFeatures"

    invoke-virtual {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private parseInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 372
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parseLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 376
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private setLockScreenMessage(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 3
    .param p1, "preference"    # Landroidx/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/String;
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

    .line 243
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpmGateway()Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$ExternalSyntheticLambda0;-><init>(Landroidx/preference/Preference;Ljava/lang/String;)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$ExternalSyntheticLambda1;-><init>(Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;)V

    .line 244
    invoke-interface {v0, p2, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setDeviceOwnerLockScreenInfo(Ljava/lang/CharSequence;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 248
    return-void
.end method

.method private setup(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "adminSetting"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "adminSetting"
        }
    .end annotation

    .line 304
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 305
    .local v0, "pref":Landroidx/preference/Preference;
    move-object v1, v0

    check-cast v1, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 308
    .local v1, "dpcPref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    new-instance v2, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$ExternalSyntheticLambda2;-><init>(Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 315
    sget v2, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    const-string v2, "key_set_trust_agent_config"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setAdminConstraint(I)V

    .line 317
    return-void

    .line 320
    :cond_0
    sget v2, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v2, v3, :cond_1

    .line 321
    const-string v2, "keyguard_disable_shortcuts"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    new-instance v2, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$ExternalSyntheticLambda3;-><init>(Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;)V

    invoke-interface {v1, v2}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 326
    :cond_1
    instance-of v2, v0, Landroidx/preference/EditTextPreference;

    if-eqz v2, :cond_4

    .line 327
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 328
    .local v2, "stringValue":Ljava/lang/String;
    :goto_0
    instance-of v3, p2, Ljava/lang/Number;

    if-eqz v3, :cond_3

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 329
    const/4 v2, 0x0

    .line 331
    :cond_3
    move-object v3, v0

    check-cast v3, Landroidx/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .end local v2    # "stringValue":Ljava/lang/String;
    goto :goto_1

    .line 333
    :cond_4
    instance-of v2, v0, Landroidx/preference/TwoStatePreference;

    if-eqz v2, :cond_5

    .line 334
    move-object v2, v0

    check-cast v2, Landroidx/preference/TwoStatePreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 333
    :cond_5
    :goto_1
    nop

    .line 338
    :goto_2
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 339
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 340
    return-void
.end method

.method private setupAll()V
    .locals 5

    .line 283
    nop

    .line 285
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->isDeviceOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpmGateway()Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v0

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 287
    :cond_0
    move-object v0, v2

    .line 283
    :goto_0
    const-string v1, "key_lock_screen_message"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "key_max_fails_before_wipe"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 291
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 289
    const-string v1, "key_max_time_screen_lock"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    const-string v0, "key_set_trust_agent_config"

    invoke-direct {p0, v0, v2}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    const-string v0, "key_strong_auth_timeout"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 295
    .local v1, "strongAuthPref":Landroidx/preference/Preference;
    nop

    .line 297
    invoke-virtual {v1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 298
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    .line 299
    :cond_1
    nop

    .line 295
    :goto_1
    invoke-direct {p0, v0, v2}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    return-void
.end method

.method private showSetTrustAgentFragment()V
    .locals 5

    .line 226
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->isParentProfileInstance()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 227
    .local v0, "type":I
    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->newInstance(I)Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;

    move-result-object v1

    .line 228
    .local v1, "fragment":Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v2

    .line 229
    .local v2, "containerFragment":Landroid/app/Fragment;
    if-nez v2, :cond_0

    .line 230
    move-object v2, p0

    .line 232
    :cond_0
    nop

    .line 233
    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 234
    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const-class v4, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;

    .line 235
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 236
    invoke-virtual {v3, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    sget v4, Lcom/afwsamples/testdpc/R$id;->container:I

    .line 237
    invoke-virtual {v3, v4, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 238
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 239
    return-void
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "titleId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "titleId"
        }
    .end annotation

    .line 380
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 381
    return-void
.end method

.method private updateAggregates()V
    .locals 8

    .line 269
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v0

    .line 270
    .local v0, "maxFailedPasswords":I
    const-string v2, "key_max_fails_before_wipe_aggregate"

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 271
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 273
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 274
    .local v2, "maxTimeToLock":J
    const-string v4, "key_max_time_screen_lock_aggregate"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    .line 276
    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-eqz v7, :cond_1

    .line 277
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 278
    :cond_1
    nop

    .line 275
    :goto_1
    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 279
    return-void
.end method

.method private updateKeyguardFeatures(IZ)Z
    .locals 4
    .param p1, "flag"    # I
    .param p2, "newValue"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flag",
            "newValue"
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpmGateway()Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v0

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getKeyguardDisabledFeatures()I

    move-result v0

    .line 252
    .local v0, "disabledFeatures":I
    if-eqz p2, :cond_0

    .line 253
    or-int/2addr v0, p1

    goto :goto_0

    .line 255
    :cond_0
    not-int v1, p1

    and-int/2addr v0, v1

    .line 257
    :goto_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpmGateway()Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v1

    new-instance v2, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$ExternalSyntheticLambda4;-><init>(Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;)V

    new-instance v3, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$ExternalSyntheticLambda5;-><init>(Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;)V

    .line 258
    invoke-interface {v1, v0, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setKeyguardDisabledFeatures(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 264
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpmGateway()Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v1

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getKeyguardDisabledFeatures()I

    move-result v1

    .line 265
    .local v1, "newDisabledFeatures":I
    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method


# virtual methods
.method public isAvailable(Landroid/content/Context;)Z
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

    .line 145
    const/4 v0, 0x1

    return v0
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

    .line 128
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->lock_screen_policy:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 129
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bundle",
            "rootKey"
        }
    .end annotation

    .line 134
    sget v0, Lcom/afwsamples/testdpc/R$xml;->lock_screen_preferences:I

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->addPreferencesFromResource(I)V

    .line 135
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->setupAll()V

    .line 136
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->disableIncompatibleManagementOptionsInCurrentProfile()V

    .line 137
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpmGateway()Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v0

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getKeyguardDisabledFeatures()I

    move-result v0

    .line 138
    .local v0, "disabledFeatures":I
    sget-object v1, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 139
    .local v2, "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/2addr v4, v0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    .end local v2    # "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 141
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
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

    .line 165
    sget-object v0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 167
    .local v0, "featureFlag":I
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->updateKeyguardFeatures(IZ)Z

    move-result v1

    return v1

    .line 170
    .end local v0    # "featureFlag":I
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v1, "key_strong_auth_timeout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "key_max_time_screen_lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "key_max_fails_before_wipe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "key_lock_screen_message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 208
    return v3

    .line 199
    :pswitch_0
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 200
    .local v4, "setting":J
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v6

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    invoke-virtual {v0, v6, v7, v8}, Landroid/app/admin/DevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 201
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v4    # "setting":J
    goto :goto_2

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget v1, Lcom/afwsamples/testdpc/R$string;->not_valid_input:I

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->showToast(I)V

    .line 204
    return v3

    .line 186
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :pswitch_1
    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 187
    .local v0, "setting":J
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v1}, Landroid/app/admin/DevicePolicyManager;->setRequiredStrongAuthTimeout(Landroid/content/ComponentName;J)V

    .line 188
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 191
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;)J

    move-result-wide v5

    .line 190
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    .line 189
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 188
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    .end local v0    # "setting":J
    goto :goto_2

    .line 192
    :catch_1
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget v1, Lcom/afwsamples/testdpc/R$string;->not_valid_input:I

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->showToast(I)V

    .line 194
    return v3

    .line 176
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :pswitch_2
    :try_start_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 177
    .local v0, "setting":I
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/app/admin/DevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 178
    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 182
    .end local v0    # "setting":I
    nop

    .line 211
    :goto_2
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->updateAggregates()V

    .line 212
    return v2

    .line 179
    :catch_2
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget v1, Lcom/afwsamples/testdpc/R$string;->not_valid_input:I

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->showToast(I)V

    .line 181
    return v3

    .line 172
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :pswitch_3
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->setLockScreenMessage(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 173
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x75713118 -> :sswitch_3
        -0x5ba2cf1e -> :sswitch_2
        -0x545dc9f9 -> :sswitch_1
        0x4fac9092 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroidx/preference/Preference;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preference"
        }
    .end annotation

    .line 217
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v1, "key_set_trust_agent_config"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 222
    return v2

    .line 219
    :pswitch_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->showSetTrustAgentFragment()V

    .line 220
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x267666e0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 4

    .line 151
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->onResume()V

    .line 152
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->updateAggregates()V

    .line 154
    const-string v0, "key_strong_auth_timeout"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 155
    .local v0, "pref":Landroidx/preference/Preference;
    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 158
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    .line 157
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 160
    :cond_0
    return-void
.end method
