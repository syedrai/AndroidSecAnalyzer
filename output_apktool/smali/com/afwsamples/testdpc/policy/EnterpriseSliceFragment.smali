.class public Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;
.super Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
.source "EnterpriseSliceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ENTERPRISE_SLICE_1_ALLOW_FALLBACK_TO_DEFAULT_KEY:Ljava/lang/String; = "enterprise_slice_1_allow_fallback_to_default"

.field private static final ENTERPRISE_SLICE_1_ENABLE:Ljava/lang/String; = "enterprise_slice_1_enable"

.field private static final ENTERPRISE_SLICE_1_EXCLUDED_APP_KEY:Ljava/lang/String; = "enterprise_slice_1_excluded_apps"

.field private static final ENTERPRISE_SLICE_1_INCLUDED_APP_KEY:Ljava/lang/String; = "enterprise_slice_1_included_apps"

.field private static final ENTERPRISE_SLICE_2_ALLOW_FALLBACK_TO_DEFAULT_KEY:Ljava/lang/String; = "enterprise_slice_2_allow_fallback_to_default"

.field private static final ENTERPRISE_SLICE_2_ENABLE:Ljava/lang/String; = "enterprise_slice_2_enable"

.field private static final ENTERPRISE_SLICE_2_EXCLUDED_APP_KEY:Ljava/lang/String; = "enterprise_slice_2_excluded_apps"

.field private static final ENTERPRISE_SLICE_2_INCLUDED_APP_KEY:Ljava/lang/String; = "enterprise_slice_2_included_apps"

.field private static final ENTERPRISE_SLICE_3_ALLOW_FALLBACK_TO_DEFAULT_KEY:Ljava/lang/String; = "enterprise_slice_3_allow_fallback_to_default"

.field private static final ENTERPRISE_SLICE_3_ENABLE:Ljava/lang/String; = "enterprise_slice_3_enable"

.field private static final ENTERPRISE_SLICE_3_EXCLUDED_APP_KEY:Ljava/lang/String; = "enterprise_slice_3_excluded_apps"

.field private static final ENTERPRISE_SLICE_3_INCLUDED_APP_KEY:Ljava/lang/String; = "enterprise_slice_3_included_apps"

.field private static final ENTERPRISE_SLICE_4_ALLOW_FALLBACK_TO_DEFAULT_KEY:Ljava/lang/String; = "enterprise_slice_4_allow_fallback_to_default"

.field private static final ENTERPRISE_SLICE_4_ENABLE:Ljava/lang/String; = "enterprise_slice_4_enable"

.field private static final ENTERPRISE_SLICE_4_EXCLUDED_APP_KEY:Ljava/lang/String; = "enterprise_slice_4_excluded_apps"

.field private static final ENTERPRISE_SLICE_4_INCLUDED_APP_KEY:Ljava/lang/String; = "enterprise_slice_4_included_apps"

.field private static final ENTERPRISE_SLICE_5_ALLOW_FALLBACK_TO_DEFAULT_KEY:Ljava/lang/String; = "enterprise_slice_5_allow_fallback_to_default"

.field private static final ENTERPRISE_SLICE_5_ENABLE:Ljava/lang/String; = "enterprise_slice_5_enable"

.field private static final ENTERPRISE_SLICE_5_EXCLUDED_APP_KEY:Ljava/lang/String; = "enterprise_slice_5_excluded_apps"

.field private static final ENTERPRISE_SLICE_5_INCLUDED_APP_KEY:Ljava/lang/String; = "enterprise_slice_5_included_apps"

.field private static final ENTERPRISE_SLICE_SUBMIT:Ljava/lang/String; = "enterprise_slice_submit"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAdminComponentName:Landroid/content/ComponentName;

.field private mAllowFallbackToDefault1:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mAllowFallbackToDefault2:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mAllowFallbackToDefault3:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mAllowFallbackToDefault4:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mAllowFallbackToDefault5:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mEnable1:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mEnable2:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mEnable3:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mEnable4:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mEnable5:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mExcludedApps1:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

.field private mExcludedApps2:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

.field private mExcludedApps3:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

.field private mExcludedApps4:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

.field private mExcludedApps5:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

.field private mIncludedApps1:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

.field private mIncludedApps2:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

.field private mIncludedApps3:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

.field private mIncludedApps4:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

.field private mIncludedApps5:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPreferentialNetworkServiceConfigBuilder1:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

.field private final mPreferentialNetworkServiceConfigBuilder2:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

.field private final mPreferentialNetworkServiceConfigBuilder3:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

.field private final mPreferentialNetworkServiceConfigBuilder4:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

.field private final mPreferentialNetworkServiceConfigBuilder5:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

.field private mSubmit:Lcom/afwsamples/testdpc/common/preference/DpcPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-string v0, "EnterpriseSliceFragment"

    sput-object v0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;-><init>()V

    .line 126
    new-instance v0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-direct {v0}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder1:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 128
    new-instance v0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-direct {v0}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder2:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 130
    new-instance v0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-direct {v0}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder3:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 132
    new-instance v0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-direct {v0}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder4:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 134
    new-instance v0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-direct {v0}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder5:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    return-void
.end method


# virtual methods
.method getUid(Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 294
    const/4 v0, 0x0

    .line 296
    .local v0, "uid":I
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 299
    goto :goto_0

    .line 297
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " printStackTrace "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method getUids(Ljava/lang/String;)[I
    .locals 6
    .param p1, "packages"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packages"
        }
    .end annotation

    .line 304
    const-string v0, ","

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 305
    .local v0, "packagesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 306
    .local v1, "uids":[I
    const/4 v2, 0x0

    .line 307
    .local v2, "index":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 308
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->getUid(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v2

    .line 309
    aget v5, v1, v2

    if-nez v5, :cond_0

    .line 310
    const/4 v3, 0x0

    new-array v3, v3, [I

    return-object v3

    .line 312
    :cond_0
    nop

    .end local v4    # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 313
    goto :goto_0

    .line 315
    :cond_1
    return-object v1
.end method

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

    .line 228
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

    .line 139
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 140
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 141
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 142
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->enterprise_slice:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 143
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 144
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
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

    .line 148
    sget v0, Lcom/afwsamples/testdpc/R$xml;->enterprise_slice_preferences:I

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->addPreferencesFromResource(I)V

    .line 150
    const-string v0, "enterprise_slice_1_included_apps"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mIncludedApps1:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    .line 151
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mIncludedApps1:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 153
    const-string v0, "enterprise_slice_1_excluded_apps"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mExcludedApps1:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    .line 154
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mExcludedApps1:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 156
    nop

    .line 157
    const-string v0, "enterprise_slice_1_allow_fallback_to_default"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mAllowFallbackToDefault1:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 158
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mAllowFallbackToDefault1:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 160
    nop

    .line 161
    const-string v0, "enterprise_slice_1_enable"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mEnable1:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 162
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mEnable1:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 164
    const-string v0, "enterprise_slice_2_included_apps"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mIncludedApps2:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    .line 165
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mIncludedApps2:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    const-string v0, "enterprise_slice_2_excluded_apps"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mExcludedApps2:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    .line 168
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mExcludedApps2:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 170
    nop

    .line 171
    const-string v0, "enterprise_slice_2_allow_fallback_to_default"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mAllowFallbackToDefault2:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 172
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mAllowFallbackToDefault2:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 174
    nop

    .line 175
    const-string v0, "enterprise_slice_2_enable"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mEnable2:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 176
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mEnable2:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 178
    const-string v0, "enterprise_slice_3_included_apps"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mIncludedApps3:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    .line 179
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mIncludedApps3:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 181
    const-string v0, "enterprise_slice_3_excluded_apps"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mExcludedApps3:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    .line 182
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mExcludedApps3:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 184
    nop

    .line 185
    const-string v0, "enterprise_slice_3_allow_fallback_to_default"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mAllowFallbackToDefault3:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 186
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mAllowFallbackToDefault3:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 188
    nop

    .line 189
    const-string v0, "enterprise_slice_3_enable"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mEnable3:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 190
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mEnable3:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 192
    const-string v0, "enterprise_slice_4_included_apps"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mIncludedApps4:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    .line 193
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mIncludedApps4:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 195
    const-string v0, "enterprise_slice_4_excluded_apps"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mExcludedApps4:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    .line 196
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mExcludedApps4:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 198
    nop

    .line 199
    const-string v0, "enterprise_slice_4_allow_fallback_to_default"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mAllowFallbackToDefault4:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 200
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mAllowFallbackToDefault4:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 202
    nop

    .line 203
    const-string v0, "enterprise_slice_4_enable"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mEnable4:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 204
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mEnable4:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    const-string v0, "enterprise_slice_5_included_apps"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mIncludedApps5:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    .line 207
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mIncludedApps5:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 209
    const-string v0, "enterprise_slice_5_excluded_apps"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mExcludedApps5:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    .line 210
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mExcludedApps5:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 212
    nop

    .line 213
    const-string v0, "enterprise_slice_5_allow_fallback_to_default"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mAllowFallbackToDefault5:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 214
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mAllowFallbackToDefault5:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 216
    nop

    .line 217
    const-string v0, "enterprise_slice_5_enable"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mEnable5:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 218
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mEnable5:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 220
    const-string v0, "enterprise_slice_submit"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mSubmit:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 221
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mSubmit:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 224
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
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

    .line 320
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "enterprise_slice_3_allow_fallback_to_default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "enterprise_slice_5_included_apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "enterprise_slice_2_included_apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "enterprise_slice_3_excluded_apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "enterprise_slice_1_enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "enterprise_slice_2_allow_fallback_to_default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "enterprise_slice_3_enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "enterprise_slice_4_included_apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "enterprise_slice_1_included_apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "enterprise_slice_1_allow_fallback_to_default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "enterprise_slice_5_excluded_apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x13

    goto :goto_1

    :sswitch_b
    const-string v1, "enterprise_slice_2_excluded_apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_c
    const-string v1, "enterprise_slice_5_allow_fallback_to_default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    goto :goto_1

    :sswitch_d
    const-string v1, "enterprise_slice_5_enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto :goto_1

    :sswitch_e
    const-string v1, "enterprise_slice_3_included_apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_f
    const-string v1, "enterprise_slice_4_allow_fallback_to_default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto :goto_1

    :sswitch_10
    const-string v1, "enterprise_slice_2_enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_11
    const-string v1, "enterprise_slice_4_excluded_apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto :goto_1

    :sswitch_12
    const-string v1, "enterprise_slice_1_excluded_apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_13
    const-string v1, "enterprise_slice_4_enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 434
    :pswitch_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder5:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 435
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->getUids(Ljava/lang/String;)[I

    move-result-object v2

    .line 434
    invoke-virtual {v1, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setExcludedUids([I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    goto/16 :goto_2

    .line 429
    :pswitch_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder5:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 430
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->getUids(Ljava/lang/String;)[I

    move-result-object v2

    .line 429
    invoke-virtual {v1, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setIncludedUids([I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 431
    goto/16 :goto_2

    .line 424
    :pswitch_2
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder5:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    .line 425
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 424
    invoke-virtual {v1, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setFallbackToDefaultConnectionAllowed(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 426
    goto/16 :goto_2

    .line 416
    :pswitch_3
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder5:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-virtual {v1, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setNetworkId(I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 420
    :cond_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder5:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setEnabled(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 421
    goto/16 :goto_2

    .line 411
    :pswitch_4
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder4:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 412
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->getUids(Ljava/lang/String;)[I

    move-result-object v2

    .line 411
    invoke-virtual {v1, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setExcludedUids([I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 413
    goto/16 :goto_2

    .line 406
    :pswitch_5
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder4:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 407
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->getUids(Ljava/lang/String;)[I

    move-result-object v2

    .line 406
    invoke-virtual {v1, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setIncludedUids([I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 408
    goto/16 :goto_2

    .line 401
    :pswitch_6
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder4:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    .line 402
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 401
    invoke-virtual {v1, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setFallbackToDefaultConnectionAllowed(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 403
    goto/16 :goto_2

    .line 393
    :pswitch_7
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 394
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder4:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-virtual {v1, v4}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setNetworkId(I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 397
    :cond_2
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder4:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setEnabled(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 398
    goto/16 :goto_2

    .line 387
    :pswitch_8
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder3:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 388
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->getUids(Ljava/lang/String;)[I

    move-result-object v2

    .line 387
    invoke-virtual {v1, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setExcludedUids([I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 389
    goto/16 :goto_2

    .line 382
    :pswitch_9
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder3:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 383
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->getUids(Ljava/lang/String;)[I

    move-result-object v2

    .line 382
    invoke-virtual {v1, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setIncludedUids([I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 384
    goto/16 :goto_2

    .line 377
    :pswitch_a
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder3:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    .line 378
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 377
    invoke-virtual {v1, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setFallbackToDefaultConnectionAllowed(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 379
    goto/16 :goto_2

    .line 369
    :pswitch_b
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 370
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder3:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-virtual {v1, v5}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setNetworkId(I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 373
    :cond_3
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder3:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setEnabled(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 374
    goto/16 :goto_2

    .line 364
    :pswitch_c
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder2:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 365
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->getUids(Ljava/lang/String;)[I

    move-result-object v2

    .line 364
    invoke-virtual {v1, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setExcludedUids([I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 366
    goto/16 :goto_2

    .line 359
    :pswitch_d
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder2:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 360
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->getUids(Ljava/lang/String;)[I

    move-result-object v2

    .line 359
    invoke-virtual {v1, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setIncludedUids([I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 361
    goto :goto_2

    .line 354
    :pswitch_e
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder2:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    .line 355
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 354
    invoke-virtual {v1, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setFallbackToDefaultConnectionAllowed(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 356
    goto :goto_2

    .line 346
    :pswitch_f
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 347
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder2:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-virtual {v1, v3}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setNetworkId(I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 350
    :cond_4
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder2:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setEnabled(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 351
    goto :goto_2

    .line 341
    :pswitch_10
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder1:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 342
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->getUids(Ljava/lang/String;)[I

    move-result-object v2

    .line 341
    invoke-virtual {v1, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setExcludedUids([I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 343
    goto :goto_2

    .line 336
    :pswitch_11
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder1:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 337
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->getUids(Ljava/lang/String;)[I

    move-result-object v2

    .line 336
    invoke-virtual {v1, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setIncludedUids([I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 338
    goto :goto_2

    .line 328
    :pswitch_12
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 329
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder1:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-virtual {v1, v6}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setNetworkId(I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 332
    :cond_5
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder1:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setEnabled(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 333
    goto :goto_2

    .line 323
    :pswitch_13
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder1:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    .line 324
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 323
    invoke-virtual {v1, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setFallbackToDefaultConnectionAllowed(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 325
    nop

    .line 438
    :goto_2
    return v6

    :sswitch_data_0
    .sparse-switch
        -0x7ccabb67 -> :sswitch_13
        -0x61e6aed2 -> :sswitch_12
        -0x5454700f -> :sswitch_11
        -0x4c8d1525 -> :sswitch_10
        -0x49f592d2 -> :sswitch_f
        -0x41143602 -> :sswitch_e
        -0x14e98e88 -> :sswitch_d
        -0x10a48211 -> :sswitch_c
        -0x80b4491 -> :sswitch_b
        0x586fa32 -> :sswitch_a
        0xa173aeb -> :sswitch_9
        0xb34f57c -> :sswitch_8
        0x18c7343f -> :sswitch_7
        0x1b5417ba -> :sswitch_6
        0x43684bac -> :sswitch_5
        0x4b91bdfc -> :sswitch_4
        0x51d025b0 -> :sswitch_3
        0x65105fbd -> :sswitch_2
        0x72a29e80 -> :sswitch_1
        0x7cb95c6d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 12
    .param p1, "preference"    # Landroidx/preference/Preference;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preference"
        }
    .end annotation

    .line 237
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v1, "enterprise_slice_submit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 290
    return v2

    .line 241
    :pswitch_1
    sget-object v1, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->TAG:Ljava/lang/String;

    const-string v3, "ENTERPRISE_SLICE_SUBMIT: "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v1, "preferentialNetworkServiceConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    :try_start_0
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder1:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-virtual {v3}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder2:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-virtual {v3}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/admin/PreferentialNetworkServiceConfig;->getNetworkId()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder2:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 248
    invoke-virtual {v3}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/admin/PreferentialNetworkServiceConfig;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder2:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 250
    invoke-virtual {v3}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v3

    .line 249
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_1
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder3:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-virtual {v3}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/admin/PreferentialNetworkServiceConfig;->getNetworkId()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder3:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 254
    invoke-virtual {v3}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/admin/PreferentialNetworkServiceConfig;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder3:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 256
    invoke-virtual {v3}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v3

    .line 255
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_2
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder4:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-virtual {v3}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/admin/PreferentialNetworkServiceConfig;->getNetworkId()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder4:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 260
    invoke-virtual {v3}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/admin/PreferentialNetworkServiceConfig;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 261
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder4:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 262
    invoke-virtual {v3}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v3

    .line 261
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_3
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder5:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-virtual {v3}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/admin/PreferentialNetworkServiceConfig;->getNetworkId()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder5:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 266
    invoke-virtual {v3}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/admin/PreferentialNetworkServiceConfig;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 267
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mPreferentialNetworkServiceConfigBuilder5:Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 268
    invoke-virtual {v3}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v3

    .line 267
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_4
    sget-object v3, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/PreferentialNetworkServiceConfig;

    .line 272
    .local v4, "config":Landroid/app/admin/PreferentialNetworkServiceConfig;
    sget-object v5, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "config: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {v4}, Landroid/app/admin/PreferentialNetworkServiceConfig;->getIncludedUids()[I

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_5

    aget v8, v5, v7

    .line 274
    .local v8, "i":I
    sget-object v9, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "includedUid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    nop

    .end local v8    # "i":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 276
    :cond_5
    invoke-virtual {v4}, Landroid/app/admin/PreferentialNetworkServiceConfig;->getExcludedUids()[I

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_6

    aget v8, v5, v7

    .line 277
    .restart local v8    # "i":I
    sget-object v9, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "excludedUid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    nop

    .end local v8    # "i":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 279
    .end local v4    # "config":Landroid/app/admin/PreferentialNetworkServiceConfig;
    :cond_6
    goto :goto_2

    .line 280
    :cond_7
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v1}, Landroid/app/admin/DevicePolicyManager;->setPreferentialNetworkServiceConfigs(Ljava/util/List;)V

    .line 282
    const-string v2, "Sent the configurations"

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    goto :goto_5

    .line 284
    :catch_0
    move-exception v2

    .line 285
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->showToast(Ljava/lang/String;)V

    .line 288
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5
    const/4 v2, 0x1

    return v2

    :pswitch_data_0
    .packed-switch 0x640e7383
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method protected showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/EnterpriseSliceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 233
    return-void
.end method
