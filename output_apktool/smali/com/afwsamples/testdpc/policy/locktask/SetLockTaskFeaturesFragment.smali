.class public Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;
.super Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
.source "SetLockTaskFeaturesFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final FEATURE_FLAGS:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_GLOBAL_ACTIONS:Ljava/lang/String; = "lock_task_feature_global_actions"

.field private static final KEY_HOME:Ljava/lang/String; = "lock_task_feature_home"

.field private static final KEY_KEYGUARD:Ljava/lang/String; = "lock_task_feature_keyguard"

.field private static final KEY_NOTIFICATIONS:Ljava/lang/String; = "lock_task_feature_notifications"

.field private static final KEY_OVERVIEW:Ljava/lang/String; = "lock_task_feature_overview"

.field private static final KEY_SYSTEM_INFO:Ljava/lang/String; = "lock_task_feature_system_info"

.field private static final TAG:Ljava/lang/String; = "SetLockTaskFeatures"


# instance fields
.field private mDpmGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->FEATURE_FLAGS:Landroid/util/ArrayMap;

    .line 67
    sget-object v0, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->FEATURE_FLAGS:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lock_task_feature_system_info"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->FEATURE_FLAGS:Landroid/util/ArrayMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lock_task_feature_notifications"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->FEATURE_FLAGS:Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lock_task_feature_home"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->FEATURE_FLAGS:Landroid/util/ArrayMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lock_task_feature_overview"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->FEATURE_FLAGS:Landroid/util/ArrayMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lock_task_feature_global_actions"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->FEATURE_FLAGS:Landroid/util/ArrayMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lock_task_feature_keyguard"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;-><init>()V

    return-void
.end method

.method private enforceEnablingRestrictions(I)V
    .locals 2
    .param p1, "enabledFeatures"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabledFeatures"
        }
    .end annotation

    .line 154
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 155
    .local v0, "isHomeEnabled":Z
    :goto_0
    const-string v1, "lock_task_feature_overview"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->setPrefEnabledState(Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;Z)V

    .line 156
    const-string v1, "lock_task_feature_notifications"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->setPrefEnabledState(Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;Z)V

    .line 157
    return-void
.end method

.method private getLockTaskFeatures()I
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->mDpmGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getLockTaskFeatures()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$setLockTaskFeatures$0(Ljava/lang/Void;)V
    .locals 3
    .param p0, "v"    # Ljava/lang/Void;

    .line 175
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SetLockTaskFeatures"

    const-string v2, "setLockTaskFeatures()"

    invoke-static {v1, v2, v0}, Lcom/afwsamples/testdpc/common/Util;->onSuccessLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$setLockTaskFeatures$1(Ljava/lang/Exception;)V
    .locals 3
    .param p0, "e"    # Ljava/lang/Exception;

    .line 176
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SetLockTaskFeatures"

    const-string v2, "setLockTaskFeatures()"

    invoke-static {v1, p0, v2, v0}, Lcom/afwsamples/testdpc/common/Util;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private setLockTaskFeatures(I)V
    .locals 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->mDpmGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setLockTaskFeatures(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 177
    return-void
.end method

.method private setPrefEnabledState(Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;Z)V
    .locals 1
    .param p1, "pref"    # Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pref",
            "enabled"
        }
    .end annotation

    .line 160
    invoke-virtual {p1, p2}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setEnabled(Z)V

    .line 161
    invoke-virtual {p1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 164
    :cond_0
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

    .line 150
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

    .line 79
    new-instance v0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->mDpmGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 81
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->set_lock_task_features_title:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 85
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
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

    .line 90
    sget v0, Lcom/afwsamples/testdpc/R$xml;->lock_task_features_preferences:I

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->addPreferencesFromResource(I)V

    .line 91
    sget-object v0, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->FEATURE_FLAGS:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

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

    .line 92
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 93
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "pref"    # Landroidx/preference/Preference;
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pref",
            "val"
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->FEATURE_FLAGS:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "SetLockTaskFeatures"

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined preference key: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return v2

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->getLockTaskFeatures()I

    move-result v1

    .line 117
    .local v1, "flagsBefore":I
    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    sget-object v4, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->FEATURE_FLAGS:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/2addr v4, v1

    goto :goto_0

    .line 119
    :cond_1
    sget-object v4, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->FEATURE_FLAGS:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    not-int v4, v4

    and-int/2addr v4, v1

    :goto_0
    nop

    .line 120
    .local v4, "flagsAfter":I
    and-int/lit8 v5, v4, 0x4

    if-nez v5, :cond_2

    .line 122
    and-int/lit8 v4, v4, -0xb

    .line 124
    :cond_2
    if-eq v4, v1, :cond_3

    .line 125
    nop

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 130
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LockTask feature flags changing from 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to 0x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 125
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :try_start_0
    invoke-direct {p0, v4}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->setLockTaskFeatures(I)V

    .line 133
    invoke-direct {p0, v4}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->enforceEnablingRestrictions(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    const/4 v2, 0x1

    return v2

    .line 135
    :catch_0
    move-exception v5

    .line 136
    .local v5, "e":Ljava/lang/SecurityException;
    const-string v6, "setLockTaskFeatures() can only be called by DO and affiliated PO"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    nop

    .line 138
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 137
    const-string v6, "Requires device owner or affiliated profile owner"

    invoke-static {v3, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 141
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 144
    .end local v5    # "e":Ljava/lang/SecurityException;
    :cond_3
    return v2
.end method

.method public onResume()V
    .locals 5

    .line 98
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onResume()V

    .line 99
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->getLockTaskFeatures()I

    move-result v0

    .line 100
    .local v0, "enabledFeatures":I
    sget-object v1, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->FEATURE_FLAGS:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

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

    .line 101
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 102
    .local v3, "pref":Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;
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
    invoke-virtual {v3, v4}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 103
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;
    goto :goto_0

    .line 104
    :cond_1
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->enforceEnablingRestrictions(I)V

    .line 105
    return-void
.end method
