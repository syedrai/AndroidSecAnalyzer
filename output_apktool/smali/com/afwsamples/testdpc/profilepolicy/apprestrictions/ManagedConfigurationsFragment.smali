.class public Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;
.super Lcom/afwsamples/testdpc/common/ManageAppFragment;
.source "ManagedConfigurationsFragment.java"

# interfaces
.implements Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment$RestrictionEntryEditDeleteArrayAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/afwsamples/testdpc/common/ManageAppFragment;",
        "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener<",
        "Landroid/content/RestrictionEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final RESULT_CODE_EDIT_DIALOG:I = 0x1

.field private static final SUPPORTED_TYPES:[I

.field private static final SUPPORTED_TYPES_PRE_M:[I


# instance fields
.field private mAdminComponent:Landroid/content/ComponentName;

.field private mAppRestrictionsArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mEditingRestrictionEntry:Landroid/content/RestrictionEntry;

.field private mLastRestrictionEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRestrictionEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRestrictionsManager:Landroid/content/RestrictionsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 67
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->SUPPORTED_TYPES:[I

    .line 75
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->SUPPORTED_TYPES_PRE_M:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/ManageAppFragment;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mRestrictionEntries:Ljava/util/List;

    .line 75
    return-void
.end method

.method private addBundleArrayToRestrictions(Ljava/util/List;Ljava/lang/String;[Landroid/os/Parcelable;)V
    .locals 4
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # [Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "restrictionEntries",
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/RestrictionEntry;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 144
    .local p1, "restrictionEntries":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    array-length v0, p3

    .line 145
    .local v0, "length":I
    new-array v1, v0, [Landroid/content/RestrictionEntry;

    .line 146
    .local v1, "entriesArray":[Landroid/content/RestrictionEntry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 147
    aget-object v3, p3, v2

    check-cast v3, Landroid/os/Bundle;

    .line 148
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->convertBundleToRestrictions(Landroid/os/Bundle;)[Landroid/content/RestrictionEntry;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/content/RestrictionEntry;->createBundleEntry(Ljava/lang/String;[Landroid/content/RestrictionEntry;)Landroid/content/RestrictionEntry;

    move-result-object v3

    aput-object v3, v1, v2

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v2    # "i":I
    :cond_0
    invoke-static {p2, v1}, Landroid/content/RestrictionEntry;->createBundleArrayEntry(Ljava/lang/String;[Landroid/content/RestrictionEntry;)Landroid/content/RestrictionEntry;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method private addBundleEntryToRestrictions(Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "restrictionEntries",
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/RestrictionEntry;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 137
    .local p1, "restrictionEntries":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    nop

    .line 138
    invoke-virtual {p0, p3}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->convertBundleToRestrictions(Landroid/os/Bundle;)[Landroid/content/RestrictionEntry;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/content/RestrictionEntry;->createBundleEntry(Ljava/lang/String;[Landroid/content/RestrictionEntry;)Landroid/content/RestrictionEntry;

    move-result-object v0

    .line 137
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method private convertTypeChoiceAndNullToString(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "restrictionEntries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/RestrictionEntry;",
            ">;)V"
        }
    .end annotation

    .line 358
    .local p1, "restrictionEntries":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/RestrictionEntry;

    .line 359
    .local v1, "entry":Landroid/content/RestrictionEntry;
    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 360
    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getType()I

    move-result v2

    if-nez v2, :cond_1

    .line 361
    :cond_0
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/content/RestrictionEntry;->setType(I)V

    .line 363
    .end local v1    # "entry":Landroid/content/RestrictionEntry;
    :cond_1
    goto :goto_0

    .line 364
    :cond_2
    return-void
.end method

.method private getCurrentAppName()Ljava/lang/String;
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mManagedAppsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 338
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private getRestrictionEntries(Landroid/content/RestrictionEntry;)[Landroid/content/RestrictionEntry;
    .locals 1
    .param p1, "restrictionEntry"    # Landroid/content/RestrictionEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "restrictionEntry"
        }
    .end annotation

    .line 391
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getRestrictions()[Landroid/content/RestrictionEntry;

    move-result-object v0

    return-object v0
.end method

.method private getRestrictionTypeFromDialogType(I)I
    .locals 2
    .param p1, "typeIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeIndex"
        }
    .end annotation

    .line 286
    packed-switch p1, :pswitch_data_0

    .line 300
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unknown type index"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 298
    :pswitch_0
    const/16 v0, 0x8

    return v0

    .line 296
    :pswitch_1
    const/4 v0, 0x7

    return v0

    .line 294
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 292
    :pswitch_3
    const/4 v0, 0x6

    return v0

    .line 290
    :pswitch_4
    const/4 v0, 0x5

    return v0

    .line 288
    :pswitch_5
    const/4 v0, 0x1

    return v0

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

.method private getTypeIndexFromRestrictionType(I)I
    .locals 2
    .param p1, "restrictionType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "restrictionType"
        }
    .end annotation

    .line 209
    packed-switch p1, :pswitch_data_0

    .line 223
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unknown restriction type"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 221
    :pswitch_1
    const/4 v0, 0x5

    return v0

    .line 219
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 215
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 213
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 217
    :pswitch_5
    const/4 v0, 0x3

    return v0

    .line 211
    :pswitch_6
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private loadManifestAppRestrictions(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkgName"
        }
    .end annotation

    .line 342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    const/4 v0, 0x0

    .line 345
    .local v0, "manifestRestrictions":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    invoke-virtual {v1, p1}, Landroid/content/RestrictionsManager;->getManifestRestrictions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .line 346
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->convertTypeChoiceAndNullToString(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    goto :goto_0

    .line 347
    :catch_0
    move-exception v1

    .line 350
    :goto_0
    if-eqz v0, :cond_0

    .line 351
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/RestrictionEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/RestrictionEntry;

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->loadAppRestrictionsList([Landroid/content/RestrictionEntry;)V

    .line 354
    .end local v0    # "manifestRestrictions":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    :cond_0
    return-void
.end method

.method private showEditDialog(Landroid/content/RestrictionEntry;)V
    .locals 9
    .param p1, "restrictionEntry"    # Landroid/content/RestrictionEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "restrictionEntry"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mEditingRestrictionEntry:Landroid/content/RestrictionEntry;

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "type":I
    const/4 v1, 0x0

    .line 166
    .local v1, "value":Ljava/lang/Object;
    const-string v2, ""

    .line 167
    .local v2, "key":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 168
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getType()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getTypeIndexFromRestrictionType(I)I

    move-result v0

    .line 170
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v3, v0

    move-object v6, v1

    move-object v5, v2

    goto/16 :goto_1

    .line 189
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getRestrictionEntries(Landroid/content/RestrictionEntry;)[Landroid/content/RestrictionEntry;

    move-result-object v3

    .line 190
    .local v3, "restrictionEntries":[Landroid/content/RestrictionEntry;
    array-length v4, v3

    new-array v4, v4, [Landroid/os/Bundle;

    .line 191
    .local v4, "bundles":[Landroid/os/Bundle;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_0

    .line 192
    aget-object v6, v3, v5

    .line 194
    invoke-direct {p0, v6}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getRestrictionEntries(Landroid/content/RestrictionEntry;)[Landroid/content/RestrictionEntry;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 193
    invoke-static {v6}, Lcom/afwsamples/testdpc/common/RestrictionManagerCompat;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v6

    aput-object v6, v4, v5

    .line 191
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 196
    .end local v5    # "i":I
    :cond_0
    move-object v1, v4

    move v3, v0

    move-object v6, v1

    move-object v5, v2

    goto :goto_1

    .line 184
    .end local v3    # "restrictionEntries":[Landroid/content/RestrictionEntry;
    .end local v4    # "bundles":[Landroid/os/Bundle;
    :pswitch_2
    nop

    .line 186
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getRestrictionEntries(Landroid/content/RestrictionEntry;)[Landroid/content/RestrictionEntry;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 185
    invoke-static {v3}, Lcom/afwsamples/testdpc/common/RestrictionManagerCompat;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v1

    .line 187
    move v3, v0

    move-object v6, v1

    move-object v5, v2

    goto :goto_1

    .line 178
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    .line 179
    move v3, v0

    move-object v6, v1

    move-object v5, v2

    goto :goto_1

    .line 175
    :pswitch_4
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getIntValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 176
    move v3, v0

    move-object v6, v1

    move-object v5, v2

    goto :goto_1

    .line 181
    :pswitch_5
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getAllSelectedStrings()[Ljava/lang/String;

    move-result-object v1

    .line 182
    move v3, v0

    move-object v6, v1

    move-object v5, v2

    goto :goto_1

    .line 172
    :pswitch_6
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 173
    move v3, v0

    move-object v6, v1

    move-object v5, v2

    goto :goto_1

    .line 167
    :cond_1
    move v3, v0

    move-object v6, v1

    move-object v5, v2

    .line 200
    .end local v0    # "type":I
    .end local v1    # "value":Ljava/lang/Object;
    .end local v2    # "key":Ljava/lang/String;
    .local v3, "type":I
    .local v5, "key":Ljava/lang/String;
    .local v6, "value":Ljava/lang/Object;
    :goto_1
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    sget-object v0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->SUPPORTED_TYPES_PRE_M:[I

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->SUPPORTED_TYPES:[I

    :goto_2
    move-object v7, v0

    .line 201
    .local v7, "supportType":[I
    nop

    .line 203
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getCurrentAppName()Ljava/lang/String;

    move-result-object v8

    .line 202
    const/4 v4, 0x1

    invoke-static/range {v3 .. v8}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->newInstance(IZLjava/lang/String;Ljava/lang/Object;[ILjava/lang/String;)Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    move-result-object v0

    .line 204
    .local v0, "dialogFragment":Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 205
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 206
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateRestrictionEntryFromResultIntent(Landroid/content/RestrictionEntry;Landroid/content/Intent;)V
    .locals 5
    .param p1, "restrictionEntry"    # Landroid/content/RestrictionEntry;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "restrictionEntry",
            "intent"
        }
    .end annotation

    .line 251
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getType()I

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "value"

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 272
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 273
    .local v0, "bundleArray":[Landroid/os/Parcelable;
    array-length v1, v0

    new-array v1, v1, [Landroid/content/RestrictionEntry;

    .line 274
    .local v1, "restrictionEntryArray":[Landroid/content/RestrictionEntry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 275
    nop

    .line 277
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v2

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->convertBundleToRestrictions(Landroid/os/Bundle;)[Landroid/content/RestrictionEntry;

    move-result-object v4

    .line 276
    invoke-static {v3, v4}, Landroid/content/RestrictionEntry;->createBundleEntry(Ljava/lang/String;[Landroid/content/RestrictionEntry;)Landroid/content/RestrictionEntry;

    move-result-object v3

    aput-object v3, v1, v2

    .line 274
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 279
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/RestrictionEntry;->setRestrictions([Landroid/content/RestrictionEntry;)V

    .line 280
    goto :goto_1

    .line 266
    .end local v0    # "bundleArray":[Landroid/os/Parcelable;
    .end local v1    # "restrictionEntryArray":[Landroid/content/RestrictionEntry;
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 267
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->convertBundleToRestrictions(Landroid/os/Bundle;)[Landroid/content/RestrictionEntry;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/RestrictionEntry;->setRestrictions([Landroid/content/RestrictionEntry;)V

    .line 268
    goto :goto_1

    .line 259
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/RestrictionEntry;->setSelectedString(Ljava/lang/String;)V

    .line 260
    goto :goto_1

    .line 256
    :pswitch_4
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/RestrictionEntry;->setIntValue(I)V

    .line 257
    goto :goto_1

    .line 262
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/RestrictionEntry;->setAllSelectedStrings([Ljava/lang/String;)V

    .line 263
    goto :goto_1

    .line 253
    :pswitch_6
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    .line 254
    nop

    .line 283
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected addNewRow()V
    .locals 1

    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->showEditDialog(Landroid/content/RestrictionEntry;)V

    .line 307
    return-void
.end method

.method protected convertBundleToRestrictions(Landroid/os/Bundle;)[Landroid/content/RestrictionEntry;
    .locals 7
    .param p1, "restrictionBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "restrictionBundle"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "restrictionEntries":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 113
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 114
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 115
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 116
    new-instance v5, Landroid/content/RestrictionEntry;

    move-object v6, v4

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct {v5, v3, v6}, Landroid/content/RestrictionEntry;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 117
    :cond_0
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 118
    new-instance v5, Landroid/content/RestrictionEntry;

    move-object v6, v4

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v3, v6}, Landroid/content/RestrictionEntry;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    :cond_1
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 120
    new-instance v5, Landroid/content/RestrictionEntry;

    const/4 v6, 0x6

    invoke-direct {v5, v6, v3}, Landroid/content/RestrictionEntry;-><init>(ILjava/lang/String;)V

    .line 121
    .local v5, "entry":Landroid/content/RestrictionEntry;
    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/RestrictionEntry;->setSelectedString(Ljava/lang/String;)V

    .line 122
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v5    # "entry":Landroid/content/RestrictionEntry;
    goto :goto_1

    :cond_2
    instance-of v5, v4, [Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 124
    new-instance v5, Landroid/content/RestrictionEntry;

    move-object v6, v4

    check-cast v6, [Ljava/lang/String;

    invoke-direct {v5, v3, v6}, Landroid/content/RestrictionEntry;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 125
    :cond_3
    instance-of v5, v4, Landroid/os/Bundle;

    if-eqz v5, :cond_4

    .line 126
    move-object v5, v4

    check-cast v5, Landroid/os/Bundle;

    invoke-direct {p0, v0, v3, v5}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->addBundleEntryToRestrictions(Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 127
    :cond_4
    instance-of v5, v4, [Landroid/os/Parcelable;

    if-eqz v5, :cond_5

    .line 128
    move-object v5, v4

    check-cast v5, [Landroid/os/Parcelable;

    invoke-direct {p0, v0, v3, v5}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->addBundleArrayToRestrictions(Ljava/util/List;Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 130
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_5
    :goto_1
    goto :goto_0

    .line 131
    :cond_6
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/RestrictionEntry;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/RestrictionEntry;

    return-object v2
.end method

.method protected createListAdapter()Landroid/widget/BaseAdapter;
    .locals 6

    .line 320
    new-instance v0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment$RestrictionEntryEditDeleteArrayAdapter;

    .line 321
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mRestrictionEntries:Ljava/util/List;

    const/4 v5, 0x0

    move-object v4, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment$RestrictionEntryEditDeleteArrayAdapter;-><init>(Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;Landroid/content/Context;Ljava/util/List;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;)V

    iput-object v0, v1, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mAppRestrictionsArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    .line 322
    iget-object v0, v1, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mAppRestrictionsArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    return-object v0
.end method

.method protected loadAppRestrictionsList([Landroid/content/RestrictionEntry;)V
    .locals 2
    .param p1, "restrictionEntries"    # [Landroid/content/RestrictionEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "restrictionEntries"
        }
    .end annotation

    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mAppRestrictionsArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->clear()V

    .line 106
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mAppRestrictionsArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 108
    :cond_0
    return-void
.end method

.method protected loadDefault()V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mManagedAppsSpinner:Landroid/widget/Spinner;

    .line 386
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 385
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->loadManifestAppRestrictions(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "result"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "result"
        }
    .end annotation

    .line 229
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 230
    return-void

    .line 233
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 235
    :pswitch_0
    const-string/jumbo v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 236
    .local v0, "type":I
    const-string v1, "key"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "key":Ljava/lang/String;
    new-instance v2, Landroid/content/RestrictionEntry;

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getRestrictionTypeFromDialogType(I)I

    move-result v3

    invoke-direct {v2, v3, v1}, Landroid/content/RestrictionEntry;-><init>(ILjava/lang/String;)V

    .line 238
    .local v2, "newRestrictionEntry":Landroid/content/RestrictionEntry;
    invoke-direct {p0, v2, p3}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->updateRestrictionEntryFromResultIntent(Landroid/content/RestrictionEntry;Landroid/content/Intent;)V

    .line 239
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mAppRestrictionsArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    iget-object v4, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mEditingRestrictionEntry:Landroid/content/RestrictionEntry;

    invoke-virtual {v3, v4}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 240
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mEditingRestrictionEntry:Landroid/content/RestrictionEntry;

    .line 241
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mAppRestrictionsArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    invoke-virtual {v3, v2}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->add(Ljava/lang/Object;)V

    .line 244
    .end local v0    # "type":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "newRestrictionEntry":Landroid/content/RestrictionEntry;
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
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

    .line 84
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->setRetainInstance(Z)V

    .line 86
    nop

    .line 87
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 88
    nop

    .line 89
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "restrictions"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionsManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    .line 90
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "delegation-app-restrictions"

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/common/Util;->hasDelegation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mAdminComponent:Landroid/content/ComponentName;

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mAdminComponent:Landroid/content/ComponentName;

    .line 95
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "layoutInflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 312
    invoke-super {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 313
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->load_default_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 314
    .local v1, "loadDefaultButton":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 315
    return-object v0
.end method

.method public onEditButtonClick(Landroid/content/RestrictionEntry;)V
    .locals 0
    .param p1, "restrictionEntry"    # Landroid/content/RestrictionEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "restrictionEntry"
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->showEditDialog(Landroid/content/RestrictionEntry;)V

    .line 160
    return-void
.end method

.method public bridge synthetic onEditButtonClick(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "restrictionEntry"
        }
    .end annotation

    .line 55
    check-cast p1, Landroid/content/RestrictionEntry;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->onEditButtonClick(Landroid/content/RestrictionEntry;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 99
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->onResume()V

    .line 100
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->managed_configurations:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 101
    return-void
.end method

.method protected onSpinnerItemSelected(Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appInfo"
        }
    .end annotation

    .line 327
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 328
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mAdminComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 330
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->convertBundleToRestrictions(Landroid/os/Bundle;)[Landroid/content/RestrictionEntry;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->loadAppRestrictionsList([Landroid/content/RestrictionEntry;)V

    .line 331
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mRestrictionEntries:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mLastRestrictionEntries:Ljava/util/List;

    .line 333
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSpinnerItemSelected(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "appInfo"
        }
    .end annotation

    .line 55
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->onSpinnerItemSelected(Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method

.method protected resetConfig()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mAppRestrictionsArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->clear()V

    .line 380
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mAppRestrictionsArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mLastRestrictionEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 381
    return-void
.end method

.method protected saveConfig()V
    .locals 4

    .line 368
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mManagedAppsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 369
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mAdminComponent:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mRestrictionEntries:Ljava/util/List;

    .line 372
    invoke-static {v3}, Lcom/afwsamples/testdpc/common/RestrictionManagerCompat;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v3

    .line 369
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/admin/DevicePolicyManager;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 373
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mRestrictionEntries:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mLastRestrictionEntries:Ljava/util/List;

    .line 374
    sget v1, Lcom/afwsamples/testdpc/R$string;->set_app_restrictions_success:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->showToast(Ljava/lang/String;)V

    .line 375
    return-void
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

    .line 154
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 155
    return-void
.end method
