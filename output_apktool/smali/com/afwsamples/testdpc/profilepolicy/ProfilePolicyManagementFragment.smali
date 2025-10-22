.class public Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;
.super Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
.source "ProfilePolicyManagementFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/afwsamples/testdpc/common/ColorPicker$OnColorSelectListener;


# static fields
.field private static final ADD_CROSS_PROFILE_APP_WIDGETS_KEY:Ljava/lang/String; = "add_cross_profile_app_widgets"

.field private static final ADD_CROSS_PROFILE_INTENT_FILTER_PREFERENCE_KEY:Ljava/lang/String; = "add_cross_profile_intent_filter"

.field private static final CLEAR_CROSS_PROFILE_INTENT_FILTERS_PREFERENCE_KEY:Ljava/lang/String; = "clear_cross_profile_intent_filters"

.field private static final DISABLE_BLUETOOTH_CONTACT_SHARING_KEY:Ljava/lang/String; = "disable_bluetooth_contact_sharing"

.field private static final DISABLE_CROSS_PROFILE_CALLER_ID_KEY:Ljava/lang/String; = "disable_cross_profile_caller_id"

.field private static final DISABLE_CROSS_PROFILE_CONTACTS_SEARCH_KEY:Ljava/lang/String; = "disable_cross_profile_contacts_search"

.field public static final FRAGMENT_TAG:Ljava/lang/String; = "ProfilePolicyManagementFragment"

.field private static final MANAGED_SUBSCRIPTIONS_KEY:Ljava/lang/String; = "managed_subscriptions"

.field private static final ORGANIZATION_COLOR_ID:Ljava/lang/String; = "organizationColor"

.field private static final REMOVE_CROSS_PROFILE_APP_WIDGETS_KEY:Ljava/lang/String; = "remove_cross_profile_app_widgets"

.field private static final SET_ORGANIZATION_COLOR_KEY:Ljava/lang/String; = "set_organization_color"

.field private static final SET_PROFILE_ORGANIZATION_NAME_KEY:Ljava/lang/String; = "set_profile_organization_name"


# instance fields
.field private mAddCrossProfileAppWidgetsPreference:Landroidx/preference/Preference;

.field private mAddCrossProfileIntentFilterPreference:Landroidx/preference/Preference;

.field private mAdminComponentName:Landroid/content/ComponentName;

.field private mClearCrossProfileIntentFiltersPreference:Landroidx/preference/Preference;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDisableBluetoothContactSharingSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mDisableCrossProfileCallerIdSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mDisableCrossProfileContactsSearchSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mManagedSubscriptionsPreference:Landroidx/preference/Preference;

.field private mRemoveCrossProfileAppWidgetsPreference:Landroidx/preference/Preference;

.field private mSetOrganizationColorPreference:Landroidx/preference/Preference;

.field private mSetOrganizationNamePreference:Landroidx/preference/Preference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdminComponentName(Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;)Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevicePolicyManager(Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;)Landroid/app/admin/DevicePolicyManager;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowToast(Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;-><init>()V

    return-void
.end method

.method private initSwitchPreferences()V
    .locals 1

    .line 255
    nop

    .line 256
    const-string v0, "disable_bluetooth_contact_sharing"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDisableBluetoothContactSharingSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 257
    nop

    .line 258
    const-string v0, "disable_cross_profile_caller_id"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDisableCrossProfileCallerIdSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 259
    nop

    .line 260
    const-string v0, "disable_cross_profile_contacts_search"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDisableCrossProfileContactsSearchSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 261
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDisableBluetoothContactSharingSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 262
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDisableCrossProfileCallerIdSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 263
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDisableCrossProfileContactsSearchSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 264
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->reloadBluetoothContactSharing()V

    .line 265
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->reloadCrossProfileCallerIdDisableUi()V

    .line 266
    return-void
.end method

.method private initializeOrganizationInfoPreferences()V
    .locals 5

    .line 227
    const-string v0, "set_organization_color"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mSetOrganizationColorPreference:Landroidx/preference/Preference;

    .line 228
    const-string v0, "set_profile_organization_name"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mSetOrganizationNamePreference:Landroidx/preference/Preference;

    .line 230
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mSetOrganizationColorPreference:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mSetOrganizationColorPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getOrganizationColor(Landroid/content/ComponentName;)I

    move-result v0

    .line 233
    .local v0, "colorValue":I
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mSetOrganizationColorPreference:Landroidx/preference/Preference;

    .line 234
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "#%08x"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 237
    .end local v0    # "colorValue":I
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mSetOrganizationNamePreference:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mSetOrganizationNamePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 239
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 240
    .local v0, "organizationName":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 241
    .local v1, "name":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mSetOrganizationNamePreference:Landroidx/preference/Preference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 243
    .end local v0    # "organizationName":Ljava/lang/CharSequence;
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private reloadBluetoothContactSharing()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDisableBluetoothContactSharingSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/SwitchPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 275
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 276
    .local v0, "isBluetoothContactSharingDisabled":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDisableBluetoothContactSharingSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 277
    return-void
.end method

.method private reloadCrossProfileCallerIdDisableUi()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDisableCrossProfileCallerIdSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/SwitchPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 285
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 286
    .local v0, "isCrossProfileCallerIdDisabled":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDisableCrossProfileCallerIdSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 287
    return-void
.end method

.method private reloadCrossProfileContactsSearchDisableUi()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDisableCrossProfileContactsSearchSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/SwitchPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 296
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 297
    .local v0, "isCrossProfileContactsSearchDisabled":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDisableCrossProfileContactsSearchSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 299
    return-void
.end method

.method private showAddCrossProfileIntentFilterFragment()V
    .locals 4

    .line 246
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 247
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    nop

    .line 248
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 249
    const-class v2, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/afwsamples/testdpc/R$id;->container:I

    new-instance v3, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;

    invoke-direct {v3}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;-><init>()V

    .line 250
    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 251
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 252
    return-void
.end method

.method private showDisabledAppWidgetList()V
    .locals 4

    .line 308
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 311
    :cond_0
    nop

    .line 312
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;->getInstance(Landroid/content/Context;)Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;->getDisabledCrossProfileWidgetProvidersList()Ljava/util/List;

    move-result-object v0

    .line 314
    .local v0, "disabledCrossProfileWidgetProvidersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    sget v1, Lcom/afwsamples/testdpc/R$string;->all_cross_profile_widget_providers_are_enabled:I

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->showToast(I)V

    goto :goto_0

    .line 317
    :cond_1
    new-instance v1, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;

    .line 319
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/afwsamples/testdpc/R$layout;->app_row:I

    invoke-direct {v1, v2, v3, v0}, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 320
    .local v1, "appInfoArrayAdapter":Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 321
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    sget v3, Lcom/afwsamples/testdpc/R$string;->add_cross_profile_app_widget_providers_title:I

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 322
    new-instance v3, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment$1;-><init>(Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;Ljava/util/List;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 333
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 335
    .end local v1    # "appInfoArrayAdapter":Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 309
    .end local v0    # "disabledCrossProfileWidgetProvidersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    return-void
.end method

.method private showEnabledAppWidgetList()V
    .locals 4

    .line 344
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 348
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 349
    .local v0, "enabledCrossProfileWidgetProvidersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    sget v1, Lcom/afwsamples/testdpc/R$string;->all_cross_profile_widget_providers_are_disabled:I

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->showToast(I)V

    goto :goto_0

    .line 352
    :cond_1
    new-instance v1, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;

    .line 354
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/afwsamples/testdpc/R$layout;->app_row:I

    invoke-direct {v1, v2, v3, v0}, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 355
    .local v1, "appInfoArrayAdapter":Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 356
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    sget v3, Lcom/afwsamples/testdpc/R$string;->remove_cross_profile_app_widget_providers_title:I

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 357
    new-instance v3, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment$2;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment$2;-><init>(Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;Ljava/util/List;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 368
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 370
    .end local v1    # "appInfoArrayAdapter":Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 345
    .end local v0    # "enabledCrossProfileWidgetProvidersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    return-void
.end method

.method private showManagedSubscriptionsPolicyDialog()V
    .locals 6

    .line 389
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 392
    :cond_0
    nop

    .line 393
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->managed_subscriptions_policy:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 394
    .local v0, "policyView":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->set_managed_subscriptions:I

    .line 395
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 397
    .local v1, "permissionGroup":Landroid/widget/RadioGroup;
    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getManagedSubscriptionsPolicy()Landroid/app/admin/ManagedSubscriptionsPolicy;

    move-result-object v2

    .line 398
    .local v2, "policy":Landroid/app/admin/ManagedSubscriptionsPolicy;
    invoke-virtual {v2}, Landroid/app/admin/ManagedSubscriptionsPolicy;->getPolicyType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 403
    :pswitch_0
    sget v3, Lcom/afwsamples/testdpc/R$id;->work_subscriptions:I

    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->toggle()V

    goto :goto_0

    .line 400
    :pswitch_1
    sget v3, Lcom/afwsamples/testdpc/R$id;->personal_subscriptions:I

    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->toggle()V

    .line 401
    nop

    .line 407
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/afwsamples/testdpc/R$string;->managed_subscriptions_title:I

    .line 408
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 409
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment$3;

    invoke-direct {v4, p0, v1}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment$3;-><init>(Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;Landroid/widget/RadioGroup;)V

    .line 410
    const v5, 0x104000a

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 428
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 429
    return-void

    .line 390
    .end local v0    # "policyView":Landroid/view/View;
    .end local v1    # "permissionGroup":Landroid/widget/RadioGroup;
    .end local v2    # "policy":Landroid/app/admin/ManagedSubscriptionsPolicy;
    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "msgId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msgId"
        }
    .end annotation

    .line 373
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 374
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 378
    return-void

    .line 375
    :cond_1
    :goto_0
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
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

    .line 381
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 382
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 386
    return-void

    .line 383
    :cond_1
    :goto_0
    return-void
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

    .line 130
    invoke-static {p1}, Lcom/afwsamples/testdpc/common/Util;->isManagedProfileOwner(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onColorSelected(ILjava/lang/String;)V
    .locals 4
    .param p1, "colorValue"    # I
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "colorValue",
            "id"
        }
    .end annotation

    .line 218
    const-string v0, "organizationColor"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setOrganizationColor(Landroid/content/ComponentName;I)V

    .line 220
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mSetOrganizationColorPreference:Landroidx/preference/Preference;

    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "#%08x"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 223
    :cond_0
    return-void
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

    .line 102
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 103
    nop

    .line 104
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 105
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
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

    .line 110
    sget v0, Lcom/afwsamples/testdpc/R$xml;->profile_policy_header:I

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->addPreferencesFromResource(I)V

    .line 111
    nop

    .line 112
    const-string v0, "add_cross_profile_intent_filter"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAddCrossProfileIntentFilterPreference:Landroidx/preference/Preference;

    .line 113
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAddCrossProfileIntentFilterPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 114
    nop

    .line 115
    const-string v0, "clear_cross_profile_intent_filters"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mClearCrossProfileIntentFiltersPreference:Landroidx/preference/Preference;

    .line 116
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mClearCrossProfileIntentFiltersPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 117
    const-string v0, "add_cross_profile_app_widgets"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAddCrossProfileAppWidgetsPreference:Landroidx/preference/Preference;

    .line 118
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAddCrossProfileAppWidgetsPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 119
    const-string v0, "remove_cross_profile_app_widgets"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mRemoveCrossProfileAppWidgetsPreference:Landroidx/preference/Preference;

    .line 120
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mRemoveCrossProfileAppWidgetsPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 121
    const-string v0, "managed_subscriptions"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mManagedSubscriptionsPreference:Landroidx/preference/Preference;

    .line 122
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mManagedSubscriptionsPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 124
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->initSwitchPreferences()V

    .line 125
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->initializeOrganizationInfoPreferences()V

    .line 126
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
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

    .line 184
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "disable_cross_profile_contacts_search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "disable_cross_profile_caller_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "disable_bluetooth_contact_sharing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "set_profile_organization_name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 212
    return v2

    .line 208
    :pswitch_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/app/admin/DevicePolicyManager;->setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 209
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mSetOrganizationNamePreference:Landroidx/preference/Preference;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 210
    return v3

    .line 201
    :pswitch_1
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 202
    .local v1, "disableCrossProfileContactsSearch":Z
    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v4, v1}, Landroid/app/admin/DevicePolicyManager;->setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V

    .line 205
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->reloadCrossProfileContactsSearchDisableUi()V

    .line 206
    return v3

    .line 194
    .end local v1    # "disableCrossProfileContactsSearch":Z
    :pswitch_2
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 195
    .local v1, "disableCrossProfileCallerId":Z
    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v4, v1}, Landroid/app/admin/DevicePolicyManager;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V

    .line 198
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->reloadCrossProfileCallerIdDisableUi()V

    .line 199
    return v3

    .line 187
    .end local v1    # "disableCrossProfileCallerId":Z
    :pswitch_3
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 188
    .local v1, "disableBluetoothContactSharing":Z
    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v4, v1}, Landroid/app/admin/DevicePolicyManager;->setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V

    .line 191
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->reloadBluetoothContactSharing()V

    .line 192
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x2d0ab89c -> :sswitch_3
        -0x1b7cbe6b -> :sswitch_2
        0x28c00a3 -> :sswitch_1
        0x62dba668 -> :sswitch_0
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
    .locals 7
    .param p1, "preference"    # Landroidx/preference/Preference;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preference"
        }
    .end annotation

    .line 146
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "remove_cross_profile_app_widgets"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "clear_cross_profile_intent_filters"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "add_cross_profile_intent_filter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "add_cross_profile_app_widgets"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "managed_subscriptions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_5
    const-string v1, "set_organization_color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 175
    :pswitch_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->showManagedSubscriptionsPolicyDialog()V

    goto :goto_3

    .line 162
    :pswitch_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/afwsamples/testdpc/R$color;->teal:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 163
    .local v1, "colorValue":I
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mSetOrganizationColorPreference:Landroidx/preference/Preference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    .line 164
    .local v3, "summary":Ljava/lang/CharSequence;
    if-eqz v3, :cond_1

    .line 166
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    .line 169
    goto :goto_2

    .line 167
    :catch_0
    move-exception v4

    .line 171
    :cond_1
    :goto_2
    const-string v4, "ProfilePolicyManagementFragment"

    const-string v5, "organizationColor"

    invoke-static {v1, v4, v5}, Lcom/afwsamples/testdpc/common/ColorPicker;->newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/afwsamples/testdpc/common/ColorPicker;

    move-result-object v4

    .line 172
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "colorPicker"

    invoke-virtual {v4, v5, v6}, Lcom/afwsamples/testdpc/common/ColorPicker;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 173
    goto :goto_3

    .line 159
    .end local v1    # "colorValue":I
    .end local v3    # "summary":Ljava/lang/CharSequence;
    :pswitch_2
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->showEnabledAppWidgetList()V

    .line 160
    return v3

    .line 156
    :pswitch_3
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->showDisabledAppWidgetList()V

    .line 157
    return v3

    .line 152
    :pswitch_4
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V

    .line 153
    sget v1, Lcom/afwsamples/testdpc/R$string;->cross_profile_intent_filters_cleared:I

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->showToast(I)V

    .line 154
    return v3

    .line 149
    :pswitch_5
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->showAddCrossProfileIntentFilterFragment()V

    .line 150
    return v3

    .line 178
    :goto_3
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x784457ac -> :sswitch_5
        -0x2fb395aa -> :sswitch_4
        -0x29688fa2 -> :sswitch_3
        0x36c2fd08 -> :sswitch_2
        0x4760d63f -> :sswitch_1
        0x6fd20a81 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .line 135
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onResume()V

    .line 136
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->profile_management_title:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 137
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    sget v0, Lcom/afwsamples/testdpc/R$string;->setup_management_message:I

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->showToast(I)V

    .line 140
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 142
    :cond_0
    return-void
.end method
