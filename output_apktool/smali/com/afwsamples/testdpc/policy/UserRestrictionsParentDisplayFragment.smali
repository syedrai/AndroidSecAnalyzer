.class public Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;
.super Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
.source "UserRestrictionsParentDisplayFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "UserRestrictionsParent"


# instance fields
.field private mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;-><init>()V

    return-void
.end method

.method private constrainPreferences()V
    .locals 7

    .line 99
    sget-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->PROFILE_OWNER_ORG_DEVICE_RESTRICTIONS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 100
    .local v3, "restrictionKey":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 101
    .local v4, "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    sget-object v5, Lcom/afwsamples/testdpc/policy/UserRestriction;->VIC_PLUS_PARENT_RESTRICTIONS:[Ljava/lang/String;

    invoke-static {v5}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v5

    .line 102
    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/afwsamples/testdpc/policy/UserRestriction$$ExternalSyntheticLambda1;

    invoke-direct {v6, v3}, Lcom/afwsamples/testdpc/policy/UserRestriction$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    const/16 v5, 0x23

    invoke-interface {v4, v5}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setMinSdkVersion(I)V

    goto :goto_1

    .line 104
    :cond_0
    sget-object v5, Lcom/afwsamples/testdpc/policy/UserRestriction;->UDC_PLUS_RESTRICTIONS:[Ljava/lang/String;

    invoke-static {v5}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v5

    .line 105
    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/afwsamples/testdpc/policy/UserRestriction$$ExternalSyntheticLambda1;

    invoke-direct {v6, v3}, Lcom/afwsamples/testdpc/policy/UserRestriction$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 106
    const/16 v5, 0x22

    invoke-interface {v4, v5}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setMinSdkVersion(I)V

    goto :goto_1

    .line 107
    :cond_1
    sget-object v5, Lcom/afwsamples/testdpc/policy/UserRestriction;->TM_PLUS_RESTRICTIONS:[Ljava/lang/String;

    invoke-static {v5}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v5

    .line 108
    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/afwsamples/testdpc/policy/UserRestriction$$ExternalSyntheticLambda1;

    invoke-direct {v6, v3}, Lcom/afwsamples/testdpc/policy/UserRestriction$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 109
    const/16 v5, 0x21

    invoke-interface {v4, v5}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setMinSdkVersion(I)V

    goto :goto_1

    .line 111
    :cond_2
    const/16 v5, 0x1e

    invoke-interface {v4, v5}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setMinSdkVersion(I)V

    .line 99
    .end local v3    # "restrictionKey":Ljava/lang/String;
    .end local v4    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_3
    return-void
.end method

.method private updateAllUserRestrictions()V
    .locals 4

    .line 86
    sget-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->PROFILE_OWNER_ORG_DEVICE_RESTRICTIONS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 87
    .local v3, "restrictionKey":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->updateUserRestriction(Ljava/lang/String;)V

    .line 86
    .end local v3    # "restrictionKey":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method private updateUserRestriction(Ljava/lang/String;)V
    .locals 3
    .param p1, "userRestriction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userRestriction"
        }
    .end annotation

    .line 93
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 94
    .local v0, "preference":Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getUserRestrictions()Ljava/util/Set;

    move-result-object v1

    .line 95
    .local v1, "restrictions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 96
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

    .line 64
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

    .line 29
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->forParentProfile(Landroid/content/Context;)Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 30
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->user_restrictions_management_title:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 32
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 9
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

    .line 37
    nop

    .line 38
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 39
    .local v0, "preferenceScreen":Landroidx/preference/PreferenceScreen;
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 41
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 42
    .local v1, "preferenceContext":Landroid/content/Context;
    sget-object v2, Lcom/afwsamples/testdpc/policy/UserRestriction;->PROFILE_OWNER_ORG_DEVICE_RESTRICTIONS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 43
    .local v5, "restrictionKey":Ljava/lang/String;
    invoke-static {v5}, Lcom/afwsamples/testdpc/policy/UserRestriction;->getRestriction(Ljava/lang/String;)Lcom/afwsamples/testdpc/policy/UserRestriction;

    move-result-object v6

    .line 44
    .local v6, "restriction":Lcom/afwsamples/testdpc/policy/UserRestriction;
    new-instance v7, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-direct {v7, v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 45
    .local v7, "preference":Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;
    iget v8, v6, Lcom/afwsamples/testdpc/policy/UserRestriction;->titleResId:I

    invoke-virtual {v7, v8}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setTitle(I)V

    .line 46
    iget-object v8, v6, Lcom/afwsamples/testdpc/policy/UserRestriction;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v7, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 48
    invoke-virtual {v0, v7}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 42
    .end local v5    # "restrictionKey":Ljava/lang/String;
    .end local v6    # "restriction":Lcom/afwsamples/testdpc/policy/UserRestriction;
    .end local v7    # "preference":Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->updateAllUserRestrictions()V

    .line 52
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->constrainPreferences()V

    .line 53
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

    .line 70
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "restriction":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 74
    .local v2, "enabled":Z
    :try_start_0
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v3, v0, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setUserRestriction(Ljava/lang/String;Z)V

    .line 75
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->updateUserRestriction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return v1

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/afwsamples/testdpc/R$string;->user_restriction_error_msg:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred while updating user restriction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UserRestrictionsParent"

    invoke-static {v4, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    return v5
.end method

.method public onResume()V
    .locals 0

    .line 58
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onResume()V

    .line 59
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->updateAllUserRestrictions()V

    .line 60
    return-void
.end method
