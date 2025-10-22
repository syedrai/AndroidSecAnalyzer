.class public Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;
.super Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
.source "CrossProfileCalendarFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final CROSS_PROFILE_CALENDAR_ALLOW_ALL_PACKAGES_KEY:Ljava/lang/String; = "cross_profile_calendar_allow_all_packages"

.field private static final CROSS_PROFILE_CALENDAR_SET_ALLOWED_PACKAGES_KEY:Ljava/lang/String; = "cross_profile_calendar_set_allowed_packages"


# instance fields
.field private mAdminComponentName:Landroid/content/ComponentName;

.field private mAllowAllPackagesPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mSetAllowedPackagesPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;


# direct methods
.method public static synthetic $r8$lambda$EOJ7EEHUqzJW1rWXcjTh0HLOE4k(Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->lambda$showSetPackagesDialog$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$showSetPackagesDialog$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "setPackagesEditText"    # Landroid/widget/EditText;
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .line 134
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "packageNamesString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    .line 138
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    .line 139
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    :goto_0
    nop

    .line 140
    .local v1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v1}, Landroid/app/admin/DevicePolicyManager;->setCrossProfileCalendarPackages(Landroid/content/ComponentName;Ljava/util/Set;)V

    .line 142
    return-void
.end method

.method private reloadAllowAllPackagesUi()V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 109
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileCalendarPackages(Landroid/content/ComponentName;)Ljava/util/Set;

    move-result-object v0

    .line 110
    .local v0, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mAllowAllPackagesPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 111
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mSetAllowedPackagesPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mAllowAllPackagesPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v3}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->isChecked()Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setEnabled(Z)V

    .line 112
    return-void
.end method

.method private showSetPackagesDialog()V
    .locals 6

    .line 116
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    nop

    .line 121
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->simple_edittext:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, "dialogView":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 124
    .local v1, "setPackagesEditText":Landroid/widget/EditText;
    nop

    .line 125
    const-string v3, ","

    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v3

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 126
    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileCalendarPackages(Landroid/content/ComponentName;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/afwsamples/testdpc/R$string;->cross_profile_calendar_set_allowed_packages_title:I

    .line 129
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 130
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment$$ExternalSyntheticLambda0;-><init>(Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;Landroid/widget/EditText;)V

    .line 131
    const v5, 0x104000a

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 143
    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 144
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 145
    return-void

    .line 117
    .end local v0    # "dialogView":Landroid/view/View;
    .end local v1    # "setPackagesEditText":Landroid/widget/EditText;
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

    .line 80
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

    .line 57
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 58
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 59
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->cross_profile_calendar:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 60
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
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

    .line 65
    sget v0, Lcom/afwsamples/testdpc/R$xml;->cross_profile_calendar_preferences:I

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->addPreferencesFromResource(I)V

    .line 67
    nop

    .line 68
    const-string v0, "cross_profile_calendar_set_allowed_packages"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mSetAllowedPackagesPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 69
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mSetAllowedPackagesPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 71
    nop

    .line 72
    const-string v0, "cross_profile_calendar_allow_all_packages"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mAllowAllPackagesPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 73
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mAllowAllPackagesPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 75
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->reloadAllowAllPackagesUi()V

    .line 76
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

    .line 96
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v1, "cross_profile_calendar_allow_all_packages"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    .line 99
    :pswitch_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 100
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    .line 99
    :goto_2
    invoke-virtual {v1, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setCrossProfileCalendarPackages(Landroid/content/ComponentName;Ljava/util/Set;)V

    .line 101
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->reloadAllowAllPackagesUi()V

    .line 103
    :goto_3
    return v2

    :pswitch_data_0
    .packed-switch 0x6f8dcf8d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
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

    .line 85
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v1, "cross_profile_calendar_set_allowed_packages"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 91
    return v2

    .line 88
    :pswitch_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->showSetPackagesDialog()V

    .line 89
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch -0x5c3d0293
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
