.class public Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;
.super Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
.source "UserRestrictionsDisplayFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "UserRestrictions"


# instance fields
.field private mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;-><init>()V

    return-void
.end method

.method private constrainPreferences()V
    .locals 7

    .line 128
    sget-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->ALL_USER_RESTRICTIONS:[Lcom/afwsamples/testdpc/policy/UserRestriction;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 129
    .local v4, "restriction":Lcom/afwsamples/testdpc/policy/UserRestriction;
    iget-object v5, v4, Lcom/afwsamples/testdpc/policy/UserRestriction;->key:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 131
    .local v5, "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    invoke-static {v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;->isDeviceOwnerOnlyRestriction(Lcom/afwsamples/testdpc/policy/UserRestriction;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 132
    const/4 v6, 0x2

    invoke-interface {v5, v6}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setAdminConstraint(I)V

    goto :goto_1

    .line 134
    :cond_0
    const/16 v6, 0xe

    invoke-interface {v5, v6}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setAdminConstraint(I)V

    .line 136
    :goto_1
    iget-object v6, v4, Lcom/afwsamples/testdpc/policy/UserRestriction;->permission:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 137
    iget-object v6, v4, Lcom/afwsamples/testdpc/policy/UserRestriction;->permission:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setPermissionConstraint(Ljava/lang/String;)V

    .line 128
    .end local v4    # "restriction":Lcom/afwsamples/testdpc/policy/UserRestriction;
    .end local v5    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    :cond_2
    sget-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->MNC_PLUS_RESTRICTIONS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 141
    .local v4, "restriction":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 142
    .restart local v5    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    const/16 v6, 0x17

    invoke-interface {v5, v6}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setMinSdkVersion(I)V

    .line 140
    .end local v4    # "restriction":Ljava/lang/String;
    .end local v5    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 144
    :cond_3
    sget-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->NYC_PLUS_RESTRICTIONS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 145
    .restart local v4    # "restriction":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 146
    .restart local v5    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    const/16 v6, 0x18

    invoke-interface {v5, v6}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setMinSdkVersion(I)V

    .line 144
    .end local v4    # "restriction":Ljava/lang/String;
    .end local v5    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 148
    :cond_4
    sget-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->OC_PLUS_RESTRICTIONS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    .line 149
    .restart local v4    # "restriction":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 150
    .restart local v5    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    const/16 v6, 0x1a

    invoke-interface {v5, v6}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setMinSdkVersion(I)V

    .line 148
    .end local v4    # "restriction":Ljava/lang/String;
    .end local v5    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 152
    :cond_5
    sget-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->PIC_PLUS_RESTRICTIONS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    .line 153
    .restart local v4    # "restriction":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 154
    .restart local v5    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    const/16 v6, 0x1c

    invoke-interface {v5, v6}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setMinSdkVersion(I)V

    .line 152
    .end local v4    # "restriction":Ljava/lang/String;
    .end local v5    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 156
    :cond_6
    sget-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->QT_PLUS_RESTRICTIONS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_7

    aget-object v4, v0, v3

    .line 157
    .restart local v4    # "restriction":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 158
    .restart local v5    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    const/16 v6, 0x1d

    invoke-interface {v5, v6}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setMinSdkVersion(I)V

    .line 156
    .end local v4    # "restriction":Ljava/lang/String;
    .end local v5    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 160
    :cond_7
    sget-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->SC_PLUS_RESTRICTIONS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_8

    aget-object v4, v0, v3

    .line 161
    .restart local v4    # "restriction":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 162
    .restart local v5    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    const/16 v6, 0x1f

    invoke-interface {v5, v6}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setMinSdkVersion(I)V

    .line 160
    .end local v4    # "restriction":Ljava/lang/String;
    .end local v5    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 164
    :cond_8
    sget-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->TM_PLUS_RESTRICTIONS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_9

    aget-object v4, v0, v3

    .line 165
    .restart local v4    # "restriction":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 166
    .restart local v5    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    const/16 v6, 0x21

    invoke-interface {v5, v6}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setMinSdkVersion(I)V

    .line 164
    .end local v4    # "restriction":Ljava/lang/String;
    .end local v5    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 168
    :cond_9
    sget-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->UDC_PLUS_RESTRICTIONS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_a

    aget-object v4, v0, v3

    .line 169
    .restart local v4    # "restriction":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 170
    .restart local v5    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    const/16 v6, 0x22

    invoke-interface {v5, v6}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setMinSdkVersion(I)V

    .line 168
    .end local v4    # "restriction":Ljava/lang/String;
    .end local v5    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 172
    :cond_a
    sget-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->VIC_PLUS_RESTRICTIONS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_b

    aget-object v4, v0, v3

    .line 173
    .restart local v4    # "restriction":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 174
    .restart local v5    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    const/16 v6, 0x23

    invoke-interface {v5, v6}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setMinSdkVersion(I)V

    .line 172
    .end local v4    # "restriction":Ljava/lang/String;
    .end local v5    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 176
    :cond_b
    sget-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->PRIMARY_USER_ONLY_RESTRICTIONS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_c

    aget-object v4, v0, v3

    .line 177
    .restart local v4    # "restriction":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 178
    .restart local v5    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setUserConstraint(I)V

    .line 176
    .end local v4    # "restriction":Ljava/lang/String;
    .end local v5    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 180
    :cond_c
    sget-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->MANAGED_PROFILE_ONLY_RESTRICTIONS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_d

    aget-object v4, v0, v3

    .line 181
    .restart local v4    # "restriction":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 182
    .restart local v5    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    const/4 v6, 0x4

    invoke-interface {v5, v6}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setUserConstraint(I)V

    .line 180
    .end local v4    # "restriction":Ljava/lang/String;
    .end local v5    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 184
    :cond_d
    sget-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->NON_MANAGED_PROFILE_RESTRICTIONS:[Ljava/lang/String;

    array-length v1, v0

    :goto_d
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 185
    .local v3, "restriction":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 186
    .local v4, "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    const/4 v5, 0x3

    invoke-interface {v4, v5}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setUserConstraint(I)V

    .line 184
    .end local v3    # "restriction":Ljava/lang/String;
    .end local v4    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 188
    :cond_e
    return-void
.end method

.method public static newInstance()Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;
    .locals 1

    .line 47
    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;-><init>()V

    .line 48
    .local v0, "fragment":Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;
    return-object v0
.end method

.method private updateAllUserRestrictions()V
    .locals 5

    .line 116
    sget-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->ALL_USER_RESTRICTIONS:[Lcom/afwsamples/testdpc/policy/UserRestriction;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 117
    .local v3, "restriction":Lcom/afwsamples/testdpc/policy/UserRestriction;
    iget-object v4, v3, Lcom/afwsamples/testdpc/policy/UserRestriction;->key:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->updateUserRestriction(Ljava/lang/String;)V

    .line 116
    .end local v3    # "restriction":Lcom/afwsamples/testdpc/policy/UserRestriction;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method private updateUserRestriction(Ljava/lang/String;)V
    .locals 2
    .param p1, "userRestriction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userRestriction"
        }
    .end annotation

    .line 122
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 123
    .local v0, "preference":Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1, p1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    .line 124
    .local v1, "disallowed":Z
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 125
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

    .line 85
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

    .line 53
    new-instance v0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 54
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->user_restrictions_management_title:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 56
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "rootkey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bundle",
            "rootkey"
        }
    .end annotation

    .line 60
    nop

    .line 61
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 62
    .local v0, "preferenceScreen":Landroidx/preference/PreferenceScreen;
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 64
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 65
    .local v1, "preferenceContext":Landroid/content/Context;
    sget-object v2, Lcom/afwsamples/testdpc/policy/UserRestriction;->ALL_USER_RESTRICTIONS:[Lcom/afwsamples/testdpc/policy/UserRestriction;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 66
    .local v5, "restriction":Lcom/afwsamples/testdpc/policy/UserRestriction;
    new-instance v6, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-direct {v6, v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 67
    .local v6, "preference":Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;
    iget v7, v5, Lcom/afwsamples/testdpc/policy/UserRestriction;->titleResId:I

    invoke-virtual {v6, v7}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setTitle(I)V

    .line 68
    iget-object v7, v5, Lcom/afwsamples/testdpc/policy/UserRestriction;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v6, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 70
    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 65
    .end local v5    # "restriction":Lcom/afwsamples/testdpc/policy/UserRestriction;
    .end local v6    # "preference":Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->updateAllUserRestrictions()V

    .line 74
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->constrainPreferences()V

    .line 75
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
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

    .line 90
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "restriction":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 93
    .local v2, "enabled":Z
    :try_start_0
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v3, v0, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setUserRestriction(Ljava/lang/String;Z)V

    .line 94
    if-nez v2, :cond_1

    .line 95
    const-string v3, "no_install_unknown_sources"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "no_install_unknown_sources_globally"

    .line 96
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/afwsamples/testdpc/R$string;->check_setting_disallow_install_unknown_sources:I

    .line 98
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/afwsamples/testdpc/R$string;->check_setting_ok:I

    .line 99
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 100
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 103
    :cond_1
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->updateUserRestriction(Ljava/lang/String;)V

    .line 104
    const-string v3, "no_unified_password"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->sendPasswordRequirementsChanged(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_2
    return v1

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/afwsamples/testdpc/R$string;->user_restriction_error_msg:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred while updating user restriction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UserRestrictions"

    invoke-static {v4, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    return v5
.end method

.method public onResume()V
    .locals 0

    .line 79
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onResume()V

    .line 80
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->updateAllUserRestrictions()V

    .line 81
    return-void
.end method
