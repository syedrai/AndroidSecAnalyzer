.class public final Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;
.super Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;
.source "PasswordConstraintsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$Keys;,
        Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$Container;
    }
.end annotation


# static fields
.field private static final PASSWORD_QUALITIES:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMinLength:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

.field private mMinLetters:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

.field private mMinLower:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

.field private mMinNonLetter:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

.field private mMinNumeric:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

.field private mMinSymbols:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

.field private mMinUpper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;


# direct methods
.method public static synthetic $r8$lambda$DVsGffzDA2EitofKwRY-cu3Fl_A(Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->lambda$onPreferenceChange$0(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IwtSNGoyvQOfGEmqdPg7xABfYJk(Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;)I
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->lambda$setPreferencesConstraint$1()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$W9GXr_n2NLUiNAqMSiz-Q-jubfI(Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;)I
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->lambda$setPreferencesConstraint$0()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yvQbfYeeK8rRROGyWA3L7tB09e4(Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->lambda$onPreferenceChange$1(Ljava/lang/Exception;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 100
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->PASSWORD_QUALITIES:Ljava/util/TreeMap;

    .line 104
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 115
    .local v0, "policyIds":[I
    sget v1, Lcom/afwsamples/testdpc/R$string;->password_quality_unspecified:I

    sget v2, Lcom/afwsamples/testdpc/R$string;->password_quality_something:I

    sget v3, Lcom/afwsamples/testdpc/R$string;->password_quality_numeric:I

    sget v4, Lcom/afwsamples/testdpc/R$string;->password_quality_numeric_complex:I

    sget v5, Lcom/afwsamples/testdpc/R$string;->password_quality_alphabetic:I

    sget v6, Lcom/afwsamples/testdpc/R$string;->password_quality_alphanumeric:I

    sget v7, Lcom/afwsamples/testdpc/R$string;->password_quality_complex:I

    filled-new-array/range {v1 .. v7}, [I

    move-result-object v1

    .line 125
    .local v1, "policyNames":[I
    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_1

    .line 128
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 129
    sget-object v3, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->PASSWORD_QUALITIES:Ljava/util/TreeMap;

    aget v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "policyIds":[I
    .end local v1    # "policyNames":[I
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 126
    .restart local v0    # "policyIds":[I
    .restart local v1    # "policyNames":[I
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Number of items in policyIds and policyNames do not match"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :array_0
    .array-data 4
        0x0
        0x10000
        0x20000
        0x30000
        0x40000
        0x50000
        0x60000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onPreferenceChange$0(Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .line 231
    const-string v0, "setPasswordQuality"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->onSuccessLog(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onPreferenceChange$1(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 232
    const-string v0, "setPasswordQuality"

    invoke-virtual {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$setPreferencesConstraint$0()I
    .locals 2

    .line 271
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpmGateway()Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v0

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getPasswordQuality()I

    move-result v0

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_0

    .line 272
    const/4 v0, 0x0

    goto :goto_0

    .line 273
    :cond_0
    sget v0, Lcom/afwsamples/testdpc/R$string;->not_for_password_quality:I

    .line 271
    :goto_0
    return v0
.end method

.method private synthetic lambda$setPreferencesConstraint$1()I
    .locals 2

    .line 278
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpmGateway()Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v0

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getPasswordQuality()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    .line 279
    const/4 v0, 0x0

    goto :goto_0

    .line 280
    :cond_0
    sget v0, Lcom/afwsamples/testdpc/R$string;->not_for_password_quality:I

    .line 278
    :goto_0
    return v0
.end method

.method private refreshPreferences()V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinLength:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->refreshEnabledState()V

    .line 291
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinLetters:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->refreshEnabledState()V

    .line 292
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinNumeric:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->refreshEnabledState()V

    .line 293
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinLower:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->refreshEnabledState()V

    .line 294
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinUpper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->refreshEnabledState()V

    .line 295
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinSymbols:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->refreshEnabledState()V

    .line 296
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinNonLetter:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->refreshEnabledState()V

    .line 297
    return-void
.end method

.method private setPreferencesConstraint()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinLength:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    new-instance v1, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;)V

    invoke-interface {v0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 276
    new-instance v0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;)V

    .line 281
    .local v0, "constraint":Lcom/afwsamples/testdpc/common/preference/CustomConstraint;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinLetters:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    invoke-interface {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 282
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinNumeric:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    invoke-interface {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 283
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinLower:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    invoke-interface {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 284
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinUpper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    invoke-interface {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 285
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinSymbols:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    invoke-interface {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 286
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinNonLetter:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    invoke-interface {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 287
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

    .line 301
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 302
    .local v0, "field":Landroidx/preference/Preference;
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 304
    if-nez p2, :cond_0

    .line 305
    return-void

    .line 308
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "stringSetting":Ljava/lang/String;
    move-object v2, v1

    .line 311
    .local v2, "summary":Ljava/lang/CharSequence;
    instance-of v3, v0, Landroidx/preference/EditTextPreference;

    if-eqz v3, :cond_1

    .line 312
    move-object v3, v0

    check-cast v3, Landroidx/preference/EditTextPreference;

    .line 313
    .local v3, "p":Landroidx/preference/EditTextPreference;
    invoke-virtual {v3, v1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .end local v3    # "p":Landroidx/preference/EditTextPreference;
    goto :goto_0

    .line 314
    :cond_1
    instance-of v3, v0, Landroidx/preference/ListPreference;

    if-eqz v3, :cond_2

    .line 315
    move-object v3, v0

    check-cast v3, Landroidx/preference/ListPreference;

    .line 316
    .local v3, "p":Landroidx/preference/ListPreference;
    invoke-virtual {v3, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v3}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    .line 314
    .end local v3    # "p":Landroidx/preference/ListPreference;
    :cond_2
    :goto_0
    nop

    .line 319
    :goto_1
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 320
    return-void
.end method

.method private updateExpirationTimes()V
    .locals 4

    .line 324
    const-string v0, "password_expiration_time"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 325
    .local v0, "byAdmin":Landroidx/preference/Preference;
    const-string v1, "password_expiration_aggregate"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 327
    .local v1, "byAll":Landroidx/preference/Preference;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/common/Util;->formatTimestamp(J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 328
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/common/Util;->formatTimestamp(J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 329
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

    .line 135
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

    .line 140
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->password_constraints:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 141
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->onCreate(Landroid/os/Bundle;)V

    .line 142
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 13
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

    .line 146
    sget v0, Lcom/afwsamples/testdpc/R$xml;->password_constraint_preferences:I

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->addPreferencesFromResource(I)V

    .line 148
    const-string v0, "password_min_length"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinLength:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 149
    const-string v1, "password_min_letters"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinLetters:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 150
    const-string v2, "password_min_numeric"

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinNumeric:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 151
    const-string v3, "password_min_lowercase"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinLower:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 152
    const-string v4, "password_min_uppercase"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    iput-object v5, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinUpper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 153
    const-string v5, "password_min_symbols"

    invoke-virtual {p0, v5}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    iput-object v6, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinSymbols:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 154
    const-string v6, "password_min_nonletter"

    invoke-virtual {p0, v6}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    iput-object v7, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinNonLetter:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 158
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v7, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v8, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    sget-object v9, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->PASSWORD_QUALITIES:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 161
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 164
    :cond_0
    const-string v9, "minimum_password_quality"

    invoke-virtual {p0, v9}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v10

    check-cast v10, Landroidx/preference/ListPreference;

    .line 165
    .local v10, "quality":Landroidx/preference/ListPreference;
    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/CharSequence;

    invoke-interface {v7, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/CharSequence;

    invoke-virtual {v10, v12}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 166
    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-interface {v8, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 169
    const-string v11, "password_expiration_time"

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v11

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "password_history_length"

    invoke-direct {p0, v12, v11}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    sget-object v11, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->PASSWORD_QUALITIES:Ljava/util/TreeMap;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpmGateway()Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v12

    invoke-interface {v12}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getPasswordQuality()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/TreeMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-direct {p0, v9, v11}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v0, v9}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->setPreferencesConstraint()V

    .line 185
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
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

    .line 198
    instance-of v0, p2, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .local v0, "value":I
    goto :goto_0

    .line 201
    .end local v0    # "value":I
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/afwsamples/testdpc/R$string;->not_valid_input:I

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 203
    return v1

    .line 206
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v0, 0x0

    .line 210
    .local v0, "value":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    :cond_1
    goto/16 :goto_1

    :sswitch_0
    const-string v4, "password_min_nonletter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x9

    goto :goto_2

    :sswitch_1
    const-string v4, "password_history_length"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_2
    const-string v4, "password_expiration_time"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_3
    const-string v4, "password_min_uppercase"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_4
    const-string v4, "password_min_letters"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_5
    const-string v4, "password_min_length"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_6
    const-string v4, "password_min_lowercase"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_7
    const-string v4, "minimum_password_quality"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_8
    const-string v4, "password_min_symbols"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    goto :goto_2

    :sswitch_9
    const-string v4, "password_min_numeric"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 258
    return v1

    .line 255
    :pswitch_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    .line 256
    goto/16 :goto_3

    .line 252
    :pswitch_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V

    .line 253
    goto :goto_3

    .line 249
    :pswitch_2
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V

    .line 250
    goto :goto_3

    .line 246
    :pswitch_3
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V

    .line 247
    goto :goto_3

    .line 243
    :pswitch_4
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V

    .line 244
    goto :goto_3

    .line 240
    :pswitch_5
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLetters(Landroid/content/ComponentName;I)V

    .line 241
    goto :goto_3

    .line 237
    :pswitch_6
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 238
    goto :goto_3

    .line 224
    :pswitch_7
    move-object v1, p1

    check-cast v1, Landroidx/preference/ListPreference;

    .line 226
    .local v1, "list":Landroidx/preference/ListPreference;
    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    .line 228
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpmGateway()Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v3

    new-instance v4, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;)V

    new-instance v6, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;)V

    .line 229
    invoke-interface {v3, v0, v4, v6}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setPasswordQuality(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 233
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->refreshPreferences()V

    .line 234
    goto :goto_3

    .line 220
    .end local v1    # "list":Landroidx/preference/ListPreference;
    :pswitch_8
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/app/admin/DevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    .line 221
    nop

    .line 261
    :goto_3
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 262
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->sendPasswordRequirementsChanged(Landroid/content/Context;)V

    .line 263
    return v5

    .line 215
    :pswitch_9
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-virtual {v1, v3, v6, v7}, Landroid/app/admin/DevicePolicyManager;->setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V

    .line 216
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->updateExpirationTimes()V

    .line 217
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63c10184 -> :sswitch_9
        -0x546fdeb6 -> :sswitch_8
        -0x2bde7894 -> :sswitch_7
        0x1a50160 -> :sswitch_6
        0x901ad97 -> :sswitch_5
        0x178e447c -> :sswitch_4
        0x2da27681 -> :sswitch_3
        0x3b8a90b9 -> :sswitch_2
        0x48cc8f15 -> :sswitch_1
        0x595884e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public onResume()V
    .locals 0

    .line 189
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->onResume()V

    .line 192
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->updateExpirationTimes()V

    .line 193
    return-void
.end method
