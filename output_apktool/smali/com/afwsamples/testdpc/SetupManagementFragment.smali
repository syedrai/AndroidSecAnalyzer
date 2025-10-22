.class public Lcom/afwsamples/testdpc/SetupManagementFragment;
.super Landroid/app/Fragment;
.source "SetupManagementFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/afwsamples/testdpc/common/ColorPicker$OnColorSelectListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String; = "SetupManagementFragment"

.field private static final NO_COLOR_SPECIFIED:I = -0x1

.field private static final REQUEST_GET_LOGO:I = 0x3

.field private static final REQUEST_PROVISION_DEVICE_OWNER:I = 0x2

.field private static final REQUEST_PROVISION_MANAGED_PROFILE:I = 0x1

.field private static final STATE_COLLAPSED:[I

.field private static final STATE_EXPANDED:[I


# instance fields
.field private mColorPreviewView:Landroid/widget/ImageView;

.field private mColorValue:Landroid/widget/TextView;

.field private mCurrentColor:I

.field private mKeepAccountMigrated:Landroid/widget/CheckBox;

.field private mLogoPreviewView:Landroid/widget/ImageView;

.field private mLogoUri:Landroid/net/Uri;

.field private mLogoValue:Landroid/widget/TextView;

.field private mNavigationNextButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private mParamsIndicator:Landroid/widget/ImageButton;

.field private mParamsView:Landroid/view/View;

.field private mSetupManagementMessage:Landroid/widget/TextView;

.field private mSetupOptions:Landroid/widget/RadioGroup;

.field private mSkipEncryption:Landroid/widget/CheckBox;

.field private mSkipUserConsent:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    sget v0, Lcom/afwsamples/testdpc/R$attr;->state_expanded:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/SetupManagementFragment;->STATE_EXPANDED:[I

    .line 88
    sget v0, Lcom/afwsamples/testdpc/R$attr;->state_expanded:I

    neg-int v0, v0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/SetupManagementFragment;->STATE_COLLAPSED:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mCurrentColor:I

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoUri:Landroid/net/Uri;

    return-void
.end method

.method private canAnAppHandleGetContent()Z
    .locals 2

    .line 502
    invoke-direct {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getGetContentIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getGetContentIntent()Landroid/content/Intent;
    .locals 2

    .line 496
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 497
    .local v0, "getContent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    return-object v0
.end method

.method private maybeLaunchProvisioning(Ljava/lang/String;I)V
    .locals 5
    .param p1, "intentAction"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intentAction",
            "requestCode"
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 231
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v1, "intent":Landroid/content/Intent;
    sget v2, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 233
    nop

    .line 235
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getReceiverComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    .line 233
    const-string v3, "android.app.extra.PROVISIONING_DEVICE_ADMIN_COMPONENT_NAME"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    :goto_0
    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/SetupManagementFragment;->maybeSpecifyNExtras(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 242
    return-void

    .line 244
    :cond_1
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    .line 245
    .local v2, "adminExtras":Landroid/os/PersistableBundle;
    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/SetupManagementFragment;->maybeSpecifySyncAuthExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)V

    .line 246
    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/SetupManagementFragment;->maybePassAffiliationIds(Landroid/content/Intent;Landroid/os/PersistableBundle;)V

    .line 247
    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/SetupManagementFragment;->specifySkipUserConsent(Landroid/content/Intent;)V

    .line 248
    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/SetupManagementFragment;->specifyKeepAccountMigrated(Landroid/content/Intent;)V

    .line 249
    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/SetupManagementFragment;->specifySkipEncryption(Landroid/content/Intent;)V

    .line 250
    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/SetupManagementFragment;->specifyDefaultDisclaimers(Landroid/content/Intent;)V

    .line 252
    invoke-virtual {v2}, Landroid/os/PersistableBundle;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 253
    const-string v3, "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 255
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 256
    invoke-virtual {p0, v1, p2}, Lcom/afwsamples/testdpc/SetupManagementFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 258
    :cond_3
    sget v3, Lcom/afwsamples/testdpc/R$string;->provisioning_not_supported:I

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 260
    :goto_1
    return-void
.end method

.method private maybePassAffiliationIds(Landroid/content/Intent;Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "adminExtras"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "adminExtras"
        }
    .end annotation

    .line 288
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->isDeviceOwner(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 291
    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/SetupManagementFragment;->passAffiliationIds(Landroid/content/Intent;Landroid/os/PersistableBundle;)V

    .line 293
    :cond_0
    return-void
.end method

.method private maybeSpecifyNExtras(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 312
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 313
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/SetupManagementFragment;->specifyLogoUri(Landroid/content/Intent;)V

    .line 314
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/SetupManagementFragment;->specifyColor(Landroid/content/Intent;)V

    .line 316
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private maybeSpecifySyncAuthExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "adminExtras"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "adminExtras"
        }
    .end annotation

    .line 263
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 264
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 266
    .local v1, "launchIntent":Landroid/content/Intent;
    invoke-static {v1}, Lcom/afwsamples/testdpc/common/LaunchIntentUtil;->isSynchronousAuthLaunch(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    return-void

    .line 271
    :cond_0
    invoke-static {v1}, Lcom/afwsamples/testdpc/common/LaunchIntentUtil;->getAddedAccount(Landroid/content/Intent;)Landroid/accounts/Account;

    move-result-object v2

    .line 272
    .local v2, "accountToMigrate":Landroid/accounts/Account;
    if-eqz v2, :cond_2

    .line 274
    sget v3, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v3, v4, :cond_1

    .line 277
    const-string v3, "android.app.extra.PROVISIONING_ACCOUNT_TO_MIGRATE"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 279
    :cond_1
    sget v3, Lcom/afwsamples/testdpc/R$string;->migration_not_supported:I

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 284
    :cond_2
    :goto_0
    invoke-static {v1, p2}, Lcom/afwsamples/testdpc/common/LaunchIntentUtil;->prepareDeviceAdminExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)V

    .line 285
    return-void
.end method

.method private passAffiliationIds(Landroid/content/Intent;Landroid/os/PersistableBundle;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "adminExtras"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "adminExtras"
        }
    .end annotation

    .line 297
    new-instance v0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;-><init>(Landroid/content/Context;)V

    .line 298
    .local v0, "dpmg":Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;
    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getAffiliationIds()Ljava/util/Set;

    move-result-object v1

    .line 299
    .local v1, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 300
    .local v2, "affiliationId":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 301
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 302
    .local v3, "randomGenerator":Ljava/security/SecureRandom;
    const v4, 0xf4240

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setAffiliationIds(Ljava/util/Set;)V

    .line 304
    .end local v3    # "randomGenerator":Ljava/security/SecureRandom;
    goto :goto_0

    .line 305
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    .line 307
    :goto_0
    const-string v3, "affiliation_id"

    invoke-virtual {p2, v3, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method private static resourceToUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resID"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resID"
        }
    .end annotation

    .line 342
    nop

    .line 345
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.resource://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private setProvisioningMethodsVisibility()Z
    .locals 3

    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, "hasProvisioningOption":Z
    sget v1, Lcom/afwsamples/testdpc/R$id;->setup_managed_profile:I

    .line 413
    const-string v2, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-direct {p0, v2, v1}, Lcom/afwsamples/testdpc/SetupManagementFragment;->setVisibility(Ljava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 414
    sget v1, Lcom/afwsamples/testdpc/R$id;->setup_device_owner:I

    .line 415
    const-string v2, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-direct {p0, v2, v1}, Lcom/afwsamples/testdpc/SetupManagementFragment;->setVisibility(Ljava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 416
    return v0
.end method

.method private setProvisioningModeSpecificUI()V
    .locals 8

    .line 204
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSetupOptions:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 205
    .local v0, "setUpOptionId":I
    sget v1, Lcom/afwsamples/testdpc/R$id;->setup_managed_profile:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 206
    .local v1, "isManagedProfileAction":Z
    :goto_0
    sget v4, Lcom/afwsamples/testdpc/R$id;->setup_device_owner:I

    if-ne v0, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 207
    .local v2, "isManagedDeviceAction":Z
    :goto_1
    iget-object v4, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSkipUserConsent:Landroid/widget/CheckBox;

    .line 210
    sget v5, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v6, 0x1a

    const/16 v7, 0x8

    if-lt v5, v6, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/afwsamples/testdpc/common/Util;->isDeviceOwner(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 211
    const/4 v5, 0x0

    goto :goto_2

    .line 212
    :cond_2
    const/16 v5, 0x8

    .line 207
    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 213
    iget-object v4, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mKeepAccountMigrated:Landroid/widget/CheckBox;

    .line 214
    sget v5, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    if-lt v5, v6, :cond_3

    if-eqz v1, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    const/16 v5, 0x8

    .line 213
    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 215
    iget-object v4, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSkipEncryption:Landroid/widget/CheckBox;

    .line 217
    if-eqz v1, :cond_4

    sget v5, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v6, 0x18

    if-ge v5, v6, :cond_5

    :cond_4
    if-eqz v2, :cond_6

    sget v5, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_6

    .line 218
    :cond_5
    goto :goto_4

    .line 219
    :cond_6
    const/16 v3, 0x8

    .line 215
    :goto_4
    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 223
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/afwsamples/testdpc/common/Util;->isDeviceOwner(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 224
    iget-object v3, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSetupManagementMessage:Landroid/widget/TextView;

    sget v4, Lcom/afwsamples/testdpc/R$string;->setup_management_message_for_do:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 226
    :cond_7
    return-void
.end method

.method private setVisibility(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "radioButtonId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "action",
            "radioButtonId"
        }
    .end annotation

    .line 421
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/afwsamples/testdpc/common/ProvisioningStateUtil;->isProvisioningAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 422
    const/4 v0, 0x0

    goto :goto_0

    .line 423
    :cond_0
    const/16 v0, 0x8

    :goto_0
    nop

    .line 424
    .local v0, "visibility":I
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 425
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private showNoProvisioningPossibleUI()V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mNavigationNextButton:Lcom/google/android/setupcompat/template/FooterButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    .line 398
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$id;->setup_management_message_id:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 399
    .local v0, "textView":Landroid/widget/TextView;
    nop

    .line 400
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/common/Util;->isDeviceOwner(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    sget v1, Lcom/afwsamples/testdpc/R$string;->provisioning_not_possible_for_do:I

    goto :goto_0

    .line 402
    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$string;->provisioning_not_possible:I

    .line 399
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 403
    return-void
.end method

.method private specifyColor(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 390
    iget v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mCurrentColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 391
    return-void

    .line 393
    :cond_0
    const-string v0, "android.app.extra.PROVISIONING_MAIN_COLOR"

    iget v1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mCurrentColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 394
    return-void
.end method

.method private specifyDefaultDisclaimers(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 320
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 321
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 322
    .local v0, "emmBundle":Landroid/os/Bundle;
    sget v1, Lcom/afwsamples/testdpc/R$string;->default_disclaimer_emm_name:I

    .line 324
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 322
    const-string v2, "android.app.extra.PROVISIONING_DISCLAIMER_HEADER"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    nop

    .line 327
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v3, Lcom/afwsamples/testdpc/R$raw;->emm_disclaimer:I

    invoke-static {v1, v3}, Lcom/afwsamples/testdpc/SetupManagementFragment;->resourceToUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 325
    const-string v3, "android.app.extra.PROVISIONING_DISCLAIMER_CONTENT"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 328
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 329
    .local v1, "companyBundle":Landroid/os/Bundle;
    sget v4, Lcom/afwsamples/testdpc/R$string;->default_disclaimer_company_name:I

    .line 331
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 329
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    nop

    .line 334
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v4, Lcom/afwsamples/testdpc/R$raw;->company_disclaimer:I

    invoke-static {v2, v4}, Lcom/afwsamples/testdpc/SetupManagementFragment;->resourceToUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 332
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 335
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/os/Bundle;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v3, "android.app.extra.PROVISIONING_DISCLAIMERS"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 339
    .end local v0    # "emmBundle":Landroid/os/Bundle;
    .end local v1    # "companyBundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private specifyKeepAccountMigrated(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 362
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 363
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mKeepAccountMigrated:Landroid/widget/CheckBox;

    .line 364
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mKeepAccountMigrated:Landroid/widget/CheckBox;

    .line 367
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 365
    const-string v1, "android.app.extra.PROVISIONING_KEEP_ACCOUNT_ON_MIGRATION"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 369
    :cond_0
    return-void
.end method

.method private specifyLogoUri(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 380
    return-void

    .line 382
    :cond_0
    const-string v0, "android.app.extra.PROVISIONING_LOGO_URI"

    iget-object v1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 383
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 385
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 387
    :cond_1
    return-void
.end method

.method private specifySkipEncryption(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSkipEncryption:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSkipEncryption:Landroid/widget/CheckBox;

    .line 374
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 373
    const-string v1, "android.app.extra.PROVISIONING_SKIP_ENCRYPTION"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 376
    :cond_0
    return-void
.end method

.method private specifySkipUserConsent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 353
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 354
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSkipUserConsent:Landroid/widget/CheckBox;

    .line 355
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSkipUserConsent:Landroid/widget/CheckBox;

    .line 357
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 356
    const-string v1, "android.app.extra.PROVISIONING_SKIP_USER_CONSENT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 359
    :cond_0
    return-void
.end method

.method private updateColorUi()V
    .locals 4

    .line 506
    iget v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mCurrentColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 507
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mColorValue:Landroid/widget/TextView;

    iget v1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mCurrentColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "#%08x"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mColorPreviewView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mCurrentColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 509
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mColorPreviewView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mColorValue:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mColorPreviewView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 514
    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 430
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 432
    .local v0, "activity":Landroid/app/Activity;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 449
    :pswitch_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 450
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoUri:Landroid/net/Uri;

    .line 451
    iget-object v1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoValue:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoPreviewView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoUri:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Lcom/afwsamples/testdpc/common/Util;->updateImageView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;)V

    goto :goto_0

    .line 435
    :pswitch_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 439
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 440
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 444
    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$string;->provisioning_failed_or_cancelled:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 445
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 447
    nop

    .line 456
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "radioGroup",
            "i"
        }
    .end annotation

    .line 200
    invoke-direct {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->setProvisioningModeSpecificUI()V

    .line 201
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 460
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 461
    .local v0, "id":I
    sget v1, Lcom/afwsamples/testdpc/R$id;->params_indicator:I

    if-ne v0, v1, :cond_1

    .line 462
    iget-object v1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mParamsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mParamsView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 464
    iget-object v1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mParamsIndicator:Landroid/widget/ImageButton;

    sget-object v3, Lcom/afwsamples/testdpc/SetupManagementFragment;->STATE_COLLAPSED:[I

    invoke-virtual {v1, v3, v2}, Landroid/widget/ImageButton;->setImageState([IZ)V

    goto :goto_0

    .line 466
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mParamsIndicator:Landroid/widget/ImageButton;

    sget-object v3, Lcom/afwsamples/testdpc/SetupManagementFragment;->STATE_EXPANDED:[I

    invoke-virtual {v1, v3, v2}, Landroid/widget/ImageButton;->setImageState([IZ)V

    .line 467
    iget-object v1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mParamsView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 469
    :cond_1
    sget v1, Lcom/afwsamples/testdpc/R$id;->color_select_button:I

    if-ne v0, v1, :cond_2

    .line 470
    iget v1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mCurrentColor:I

    const-string v2, "SetupManagementFragment"

    const-string v3, "provisioningColor"

    invoke-static {v1, v2, v3}, Lcom/afwsamples/testdpc/common/ColorPicker;->newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/afwsamples/testdpc/common/ColorPicker;

    move-result-object v1

    .line 471
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "colorPicker"

    invoke-virtual {v1, v2, v3}, Lcom/afwsamples/testdpc/common/ColorPicker;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :cond_2
    sget v1, Lcom/afwsamples/testdpc/R$id;->logo_select_button:I

    if-ne v0, v1, :cond_3

    .line 473
    invoke-direct {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getGetContentIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/afwsamples/testdpc/SetupManagementFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 475
    :cond_3
    :goto_0
    return-void
.end method

.method public onColorSelected(ILjava/lang/String;)V
    .locals 0
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

    .line 479
    iput p1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mCurrentColor:I

    .line 480
    invoke-direct {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->updateColorUi()V

    .line 481
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 101
    if-eqz p3, :cond_0

    .line 102
    const-string v0, "android.app.extra.PROVISIONING_LOGO_URI"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoUri:Landroid/net/Uri;

    .line 103
    const-string v0, "android.app.extra.PROVISIONING_MAIN_COLOR"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mCurrentColor:I

    .line 106
    :cond_0
    sget v0, Lcom/afwsamples/testdpc/R$layout;->setup_management_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, "view":Landroid/view/View;
    sget v2, Lcom/afwsamples/testdpc/R$id;->setup_wizard_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/setupdesign/GlifLayout;

    .line 109
    .local v2, "layout":Lcom/google/android/setupdesign/GlifLayout;
    const-class v3, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v2, v3}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v3

    check-cast v3, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 111
    .local v3, "mixin":Lcom/google/android/setupcompat/template/FooterBarMixin;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 113
    .local v4, "context":Landroid/content/Context;
    new-instance v5, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v5, v4}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v6, Lcom/afwsamples/testdpc/R$string;->sud_next_button_label:I

    .line 115
    invoke-virtual {v5, v6}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v5

    new-instance v6, Lcom/afwsamples/testdpc/SetupManagementFragment$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/afwsamples/testdpc/SetupManagementFragment$$ExternalSyntheticLambda0;-><init>(Lcom/afwsamples/testdpc/SetupManagementFragment;)V

    .line 116
    invoke-virtual {v5, v6}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v5

    .line 117
    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v5

    sget v6, Lcom/afwsamples/testdpc/R$style;->SudGlifButton_Primary:I

    .line 118
    invoke-virtual {v5, v6}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v5

    .line 119
    invoke-virtual {v5}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v5

    .line 120
    .local v5, "nextButton":Lcom/google/android/setupcompat/template/FooterButton;
    new-instance v6, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v6, v4}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v7, Lcom/afwsamples/testdpc/R$string;->exit:I

    .line 122
    invoke-virtual {v6, v7}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v6

    new-instance v7, Lcom/afwsamples/testdpc/SetupManagementFragment$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lcom/afwsamples/testdpc/SetupManagementFragment$$ExternalSyntheticLambda1;-><init>(Lcom/afwsamples/testdpc/SetupManagementFragment;)V

    .line 123
    invoke-virtual {v6, v7}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v6

    .line 124
    invoke-virtual {v6, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v6

    sget v7, Lcom/afwsamples/testdpc/R$style;->SudGlifButtonBar_Stackable:I

    .line 125
    invoke-virtual {v6, v7}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v6

    .line 126
    invoke-virtual {v6}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v6

    .line 127
    .local v6, "exitButton":Lcom/google/android/setupcompat/template/FooterButton;
    invoke-virtual {v3, v5}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 128
    invoke-virtual {v3, v6}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 130
    iput-object v5, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mNavigationNextButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 132
    sget v7, Lcom/afwsamples/testdpc/R$id;->setup_management_message_id:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSetupManagementMessage:Landroid/widget/TextView;

    .line 133
    sget v7, Lcom/afwsamples/testdpc/R$id;->setup_options:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioGroup;

    iput-object v7, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSetupOptions:Landroid/widget/RadioGroup;

    .line 134
    iget-object v7, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSetupOptions:Landroid/widget/RadioGroup;

    invoke-virtual {v7, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 135
    sget v7, Lcom/afwsamples/testdpc/R$id;->skip_user_consent:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSkipUserConsent:Landroid/widget/CheckBox;

    .line 136
    sget v7, Lcom/afwsamples/testdpc/R$id;->keep_account_migrated:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mKeepAccountMigrated:Landroid/widget/CheckBox;

    .line 137
    sget v7, Lcom/afwsamples/testdpc/R$id;->skip_encryption:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSkipEncryption:Landroid/widget/CheckBox;

    .line 139
    sget v7, Lcom/afwsamples/testdpc/R$id;->params:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mParamsView:Landroid/view/View;

    .line 140
    sget v7, Lcom/afwsamples/testdpc/R$id;->params_indicator:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mParamsIndicator:Landroid/widget/ImageButton;

    .line 141
    iget-object v7, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mParamsIndicator:Landroid/widget/ImageButton;

    invoke-virtual {v7, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    sget v7, Lcom/afwsamples/testdpc/R$id;->color_select_button:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    sget v7, Lcom/afwsamples/testdpc/R$id;->selected_color_value:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mColorValue:Landroid/widget/TextView;

    .line 145
    sget v7, Lcom/afwsamples/testdpc/R$id;->preview_color:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mColorPreviewView:Landroid/widget/ImageView;

    .line 147
    invoke-direct {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->updateColorUi()V

    .line 149
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 150
    .local v7, "launchIntent":Landroid/content/Intent;
    invoke-static {v7}, Lcom/afwsamples/testdpc/common/LaunchIntentUtil;->isSynchronousAuthLaunch(Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 151
    invoke-static {v7}, Lcom/afwsamples/testdpc/common/LaunchIntentUtil;->getAddedAccount(Landroid/content/Intent;)Landroid/accounts/Account;

    move-result-object v8

    .line 152
    .local v8, "addedAccount":Landroid/accounts/Account;
    if-eqz v8, :cond_1

    .line 153
    sget v9, Lcom/afwsamples/testdpc/R$id;->managed_account_desc:I

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    sget v9, Lcom/afwsamples/testdpc/R$id;->managed_account_name:I

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 156
    .local v9, "managedAccountName":Landroid/widget/TextView;
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v1, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .end local v9    # "managedAccountName":Landroid/widget/TextView;
    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v9, Lcom/afwsamples/testdpc/R$string;->invalid_launch_intent_no_account:I

    const/4 v10, 0x1

    invoke-static {v1, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 166
    .end local v8    # "addedAccount":Landroid/accounts/Account;
    :cond_2
    :goto_0
    return-object v0
.end method

.method public onNavigateBack(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 484
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 485
    return-void
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSetupOptions:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget v1, Lcom/afwsamples/testdpc/R$id;->setup_managed_profile:I

    if-ne v0, v1, :cond_0

    .line 489
    const-string v0, "android.app.action.PROVISION_MANAGED_PROFILE"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/SetupManagementFragment;->maybeLaunchProvisioning(Ljava/lang/String;I)V

    goto :goto_0

    .line 491
    :cond_0
    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/SetupManagementFragment;->maybeLaunchProvisioning(Ljava/lang/String;I)V

    .line 493
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 178
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 180
    invoke-direct {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->setProvisioningMethodsVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 183
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$id;->params_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    invoke-direct {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->canAnAppHandleGetContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/afwsamples/testdpc/R$id;->choose_logo_item_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$id;->logo_select_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$id;->selected_logo_value:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoValue:Landroid/widget/TextView;

    .line 188
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$id;->preview_logo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoPreviewView:Landroid/widget/ImageView;

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->setProvisioningModeSpecificUI()V

    goto :goto_0

    .line 193
    :cond_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->showNoProvisioningPossibleUI()V

    .line 195
    :cond_2
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outState"
        }
    .end annotation

    .line 171
    const-string v0, "android.app.extra.PROVISIONING_LOGO_URI"

    iget-object v1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 172
    const-string v0, "android.app.extra.PROVISIONING_MAIN_COLOR"

    iget v1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mCurrentColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 174
    return-void
.end method
