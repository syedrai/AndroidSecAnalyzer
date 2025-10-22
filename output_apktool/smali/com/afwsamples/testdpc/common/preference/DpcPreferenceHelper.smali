.class public Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;
.super Ljava/lang/Object;
.source "DpcPreferenceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper$UserKind;,
        Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper$AdminKind;
    }
.end annotation


# static fields
.field public static final ADMIN_ANY:I = 0xf

.field public static final ADMIN_BYOD_PROFILE_OWNER:I = 0x4

.field public static final ADMIN_DEFAULT:I = 0xe

.field public static final ADMIN_DEVICE_OWNER:I = 0x2

.field public static final ADMIN_NONE:I = 0x1

.field public static final ADMIN_NOT_NONE:I = 0xe

.field public static final ADMIN_ORG_OWNED_PROFILE_OWNER:I = 0x8

.field public static final ADMIN_PROFILE_OWNER:I = 0xc

.field public static final NO_CUSTOM_CONSTRAINT:I = 0x0

.field private static final NUM_ADMIN_KINDS:I

.field private static final NUM_USER_KINDS:I

.field public static final USER_ANY:I = 0x7

.field public static final USER_DEFAULT:I = 0x7

.field public static final USER_MANAGED_PROFILE:I = 0x4

.field public static final USER_NOT_MANAGED_PROFILE:I = 0x3

.field public static final USER_NOT_PRIMARY_USER:I = 0x6

.field public static final USER_NOT_SECONDARY_USER:I = 0x5

.field public static final USER_PRIMARY_USER:I = 0x1

.field public static final USER_SECONDARY_USER:I = 0x2


# instance fields
.field private mAdminConstraint:I

.field private mConstraintViolationSummary:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mCustomConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/afwsamples/testdpc/common/preference/CustomConstraint;",
            ">;"
        }
    .end annotation
.end field

.field private mDelegationConstraint:Ljava/lang/String;

.field private mMinSdkVersion:I

.field private mPermissionConstraint:Ljava/lang/String;

.field private mPreference:Landroidx/preference/Preference;

.field private mUserConstraint:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    sput v0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->NUM_ADMIN_KINDS:I

    .line 89
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    sput v0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->NUM_USER_KINDS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preference"    # Landroidx/preference/Preference;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "preference",
            "attrs"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mConstraintViolationSummary:Ljava/lang/CharSequence;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mCustomConstraints:Ljava/util/List;

    .line 103
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mPreference:Landroidx/preference/Preference;

    .line 106
    sget-object v0, Lcom/afwsamples/testdpc/R$styleable;->DpcPreference:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/afwsamples/testdpc/R$styleable;->DpcPreference_minSdkVersion:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mMinSdkVersion:I

    .line 109
    if-nez p3, :cond_0

    .line 111
    const/16 v1, 0x15

    iput v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mMinSdkVersion:I

    .line 113
    :cond_0
    iget v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mMinSdkVersion:I

    if-eqz v1, :cond_1

    .line 118
    sget v1, Lcom/afwsamples/testdpc/R$styleable;->DpcPreference_admin:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mAdminConstraint:I

    .line 120
    sget v1, Lcom/afwsamples/testdpc/R$styleable;->DpcPreference_user:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mUserConstraint:I

    .line 121
    sget v1, Lcom/afwsamples/testdpc/R$styleable;->DpcPreference_delegation:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mDelegationConstraint:Ljava/lang/String;

    .line 122
    sget v1, Lcom/afwsamples/testdpc/R$styleable;->DpcPreference_permission:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mPermissionConstraint:Ljava/lang/String;

    .line 123
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    return-void

    .line 114
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "testdpc:minSdkVersion must be specified."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private findConstraintViolation()Ljava/lang/CharSequence;
    .locals 5

    .line 244
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    iget v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mMinSdkVersion:I

    if-ge v0, v1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    sget v1, Lcom/afwsamples/testdpc/R$string;->requires_android_api_level:I

    iget v2, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mMinSdkVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->getCurrentAdmin()I

    move-result v0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->getCurrentDelegations()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->isSufficientlyPrivileged(ILjava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->getAdminConstraintSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 252
    :cond_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->isEnabledForUser(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 253
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->getUserConstraintSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mCustomConstraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/common/preference/CustomConstraint;

    .line 257
    .local v1, "customConstraint":Lcom/afwsamples/testdpc/common/preference/CustomConstraint;
    invoke-interface {v1}, Lcom/afwsamples/testdpc/common/preference/CustomConstraint;->validateConstraint()I

    move-result v2

    .line 258
    .local v2, "strRes":I
    if-eqz v2, :cond_3

    .line 259
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 261
    .end local v1    # "customConstraint":Lcom/afwsamples/testdpc/common/preference/CustomConstraint;
    .end local v2    # "strRes":I
    :cond_3
    goto :goto_0

    .line 262
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAdminConstraintSummary()Ljava/lang/String;
    .locals 3

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->NUM_ADMIN_KINDS:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 332
    .local v0, "admins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->isEnabledForAdmin(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/afwsamples/testdpc/R$string;->device_owner:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_0
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->isEnabledForAdmin(I)Z

    move-result v1

    const/16 v2, 0xc

    if-eqz v1, :cond_1

    .line 338
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->isEnabledForAdmin(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 339
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/afwsamples/testdpc/R$string;->org_owned_profile_owner:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 340
    :cond_1
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->isEnabledForAdmin(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 341
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/afwsamples/testdpc/R$string;->profile_owner:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mDelegationConstraint:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 344
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mDelegationConstraint:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_3
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->joinRequirementList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCurrentAdmin()I
    .locals 5

    .line 266
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    .line 267
    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 268
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    const/4 v2, 0x2

    return v2

    .line 273
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 274
    sget v2, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v2, v4, :cond_1

    .line 275
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 276
    .local v2, "orgOwned":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 277
    const/16 v3, 0x8

    return v3

    .line 279
    :cond_2
    const/16 v3, 0xc

    return v3

    .line 282
    .end local v2    # "orgOwned":Ljava/lang/Boolean;
    :cond_3
    return v3
.end method

.method private getCurrentDelegations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 286
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 287
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    .line 291
    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 292
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyManager;->getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private getCurrentUser()I
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->isPrimaryUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x1

    return v0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->isManagedProfile(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    const/4 v0, 0x4

    return v0

    .line 305
    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method private getUserConstraintSummary()Ljava/lang/String;
    .locals 3

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->NUM_USER_KINDS:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 352
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->isEnabledForUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/afwsamples/testdpc/R$string;->primary_user:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->isEnabledForUser(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/afwsamples/testdpc/R$string;->secondary_user:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_1
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->isEnabledForUser(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 359
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/afwsamples/testdpc/R$string;->managed_profile:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_2
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->joinRequirementList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private hasDelegation(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 317
    .local p1, "delegations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mDelegationConstraint:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private hasPermission()Z
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mPermissionConstraint:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mPermissionConstraint:Ljava/lang/String;

    .line 322
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 321
    :goto_0
    return v0
.end method

.method private isEnabledForAdmin(I)Z
    .locals 1
    .param p1, "admin"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "admin"
        }
    .end annotation

    .line 313
    iget v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mAdminConstraint:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEnabledForUser(I)Z
    .locals 1
    .param p1, "user"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "user"
        }
    .end annotation

    .line 326
    iget v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mUserConstraint:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSufficientlyPrivileged(ILjava/util/List;)Z
    .locals 1
    .param p1, "admin"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "admin",
            "delegations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 309
    .local p2, "delegations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->isEnabledForAdmin(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->hasDelegation(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->hasPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private joinRequirementList(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 366
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/afwsamples/testdpc/R$string;->requires:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 368
    .local v1, "lastItem":Ljava/lang/String;
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    sget v3, Lcom/afwsamples/testdpc/R$string;->requires_delimiter:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 370
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    sget v3, Lcom/afwsamples/testdpc/R$string;->requires_or:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V
    .locals 1
    .param p1, "customConstraint"    # Lcom/afwsamples/testdpc/common/preference/CustomConstraint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customConstraint"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mCustomConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->disableIfConstraintsNotMet()V

    .line 220
    return-void
.end method

.method public clearAdminConstraint()V
    .locals 1

    .line 159
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->setAdminConstraint(I)V

    .line 160
    return-void
.end method

.method public clearCustomConstraints()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mCustomConstraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 230
    return-void
.end method

.method public clearNonCustomConstraints()V
    .locals 0

    .line 192
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->clearAdminConstraint()V

    .line 193
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->clearUserConstraint()V

    .line 194
    return-void
.end method

.method clearPermissionConstraint()V
    .locals 1

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->setPermissionConstraint(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public clearUserConstraint()V
    .locals 1

    .line 174
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->setUserConstraint(I)V

    .line 175
    return-void
.end method

.method public constraintsMet()Z
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mConstraintViolationSummary:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public disableIfConstraintsNotMet()V
    .locals 2

    .line 233
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->findConstraintViolation()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mConstraintViolationSummary:Ljava/lang/CharSequence;

    .line 234
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->constraintsMet()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 235
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->constraintsMet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 130
    .local v0, "summaryView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mConstraintViolationSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    .end local v0    # "summaryView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setAdminConstraint(I)V
    .locals 0
    .param p1, "adminConstraint"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adminConstraint"
        }
    .end annotation

    .line 153
    iput p1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mAdminConstraint:I

    .line 154
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->disableIfConstraintsNotMet()V

    .line 155
    return-void
.end method

.method public setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V
    .locals 0
    .param p1, "customConstraint"    # Lcom/afwsamples/testdpc/common/preference/CustomConstraint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customConstraint"
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->clearCustomConstraints()V

    .line 205
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->addCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 206
    return-void
.end method

.method public setMinSdkVersion(I)V
    .locals 0
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 143
    iput p1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mMinSdkVersion:I

    .line 144
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->disableIfConstraintsNotMet()V

    .line 145
    return-void
.end method

.method setPermissionConstraint(Ljava/lang/String;)V
    .locals 0
    .param p1, "permissionConstraints"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permissionConstraints"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mPermissionConstraint:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->disableIfConstraintsNotMet()V

    .line 180
    return-void
.end method

.method public setUserConstraint(I)V
    .locals 0
    .param p1, "userConstraint"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userConstraint"
        }
    .end annotation

    .line 168
    iput p1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mUserConstraint:I

    .line 169
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->disableIfConstraintsNotMet()V

    .line 170
    return-void
.end method
