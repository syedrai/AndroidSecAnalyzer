.class public Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;
.super Lcom/afwsamples/testdpc/common/ManageResolveInfoFragment;
.source "SetTrustAgentConfigFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;
.implements Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment$StringEditDeleteArrayAdapter;,
        Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/afwsamples/testdpc/common/ManageResolveInfoFragment;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_TYPE:Ljava/lang/String; = "type"

.field private static final RESULT_CODE_EDIT_DIALOG:I = 0x1

.field private static final SUPPORTED_TYPE:[I


# instance fields
.field private mAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBundle:Landroid/os/PersistableBundle;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mEditingKey:Ljava/lang/String;

.field private mInitialBundle:Landroid/os/PersistableBundle;

.field private mKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 71
    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->SUPPORTED_TYPE:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/ManageResolveInfoFragment;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mKeyList:Ljava/util/List;

    .line 71
    return-void
.end method

.method private getAdmin()Landroid/content/ComponentName;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolveInfo"
        }
    .end annotation

    .line 141
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getDevicePolicyManagerFromType(I)Landroid/app/admin/DevicePolicyManager;
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 259
    nop

    .line 260
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 261
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 262
    return-object v0

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getParentProfileInstance(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    return-object v1
.end method

.method public static newInstance(I)Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;
    .locals 2
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    new-instance v1, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;-><init>()V

    .line 88
    .local v1, "fragment":Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;
    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->setArguments(Landroid/os/Bundle;)V

    .line 89
    return-object v1
.end method

.method private setTrustAgentConfiguration()V
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v0

    .line 167
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/admin/DevicePolicyManager;->setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V

    .line 168
    return-void
.end method

.method private showEditDialog(Ljava/lang/String;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mEditingKey:Ljava/lang/String;

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "type":I
    const/4 v1, 0x0

    .line 174
    .local v1, "value":Ljava/lang/Object;
    if-eqz p1, :cond_5

    .line 175
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 176
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 177
    const/4 v0, 0x0

    move v2, v0

    move-object v5, v1

    goto :goto_0

    .line 178
    :cond_0
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 179
    const/4 v0, 0x1

    move v2, v0

    move-object v5, v1

    goto :goto_0

    .line 180
    :cond_1
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 181
    const/4 v0, 0x2

    move v2, v0

    move-object v5, v1

    goto :goto_0

    .line 182
    :cond_2
    instance-of v2, v1, [Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 183
    const/4 v0, 0x3

    move v2, v0

    move-object v5, v1

    goto :goto_0

    .line 184
    :cond_3
    instance-of v2, v1, Landroid/os/PersistableBundle;

    if-eqz v2, :cond_4

    .line 185
    const/4 v0, 0x4

    .line 186
    move-object v2, v1

    check-cast v2, Landroid/os/PersistableBundle;

    invoke-static {v2}, Lcom/afwsamples/testdpc/common/BundleUtil;->persistableBundleToBundle(Landroid/os/PersistableBundle;)Landroid/os/Bundle;

    move-result-object v1

    move v2, v0

    move-object v5, v1

    goto :goto_0

    .line 184
    :cond_4
    move v2, v0

    move-object v5, v1

    goto :goto_0

    .line 174
    :cond_5
    move v2, v0

    move-object v5, v1

    .line 189
    .end local v0    # "type":I
    .end local v1    # "value":Ljava/lang/Object;
    .local v2, "type":I
    .local v5, "value":Ljava/lang/Object;
    :goto_0
    sget-object v6, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->SUPPORTED_TYPE:[I

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 190
    const/4 v3, 0x1

    move-object v4, p1

    .end local p1    # "key":Ljava/lang/String;
    .local v4, "key":Ljava/lang/String;
    invoke-static/range {v2 .. v7}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->newInstance(IZLjava/lang/String;Ljava/lang/Object;[ILjava/lang/String;)Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    move-result-object p1

    .line 197
    .local p1, "dialogFragment":Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 198
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {p1, v0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method private updateBundleFromResultIntent(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "key",
            "intent"
        }
    .end annotation

    .line 235
    const/4 v0, 0x0

    const-string/jumbo v1, "value"

    packed-switch p1, :pswitch_data_0

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :pswitch_0
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 250
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/BundleUtil;->bundleToPersistableBundle(Landroid/os/Bundle;)Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 251
    goto :goto_0

    .line 246
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 247
    goto :goto_0

    .line 243
    :pswitch_2
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    goto :goto_0

    .line 240
    :pswitch_3
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, p2, v0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 241
    goto :goto_0

    .line 237
    :pswitch_4
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, p2, v0}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    nop

    .line 255
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected addNewRow()V
    .locals 1

    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->showEditDialog(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method protected createListAdapter()Landroid/widget/BaseAdapter;
    .locals 3

    .line 119
    new-instance v0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment$StringEditDeleteArrayAdapter;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mKeyList:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0, p0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment$StringEditDeleteArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    .line 120
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    return-object v0
.end method

.method protected loadDefault()V
    .locals 0

    .line 163
    return-void
.end method

.method protected loadResolveInfoList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 103
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.trust.TrustAgentService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, "trustAgentIntent":Landroid/content/Intent;
    nop

    .line 105
    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 107
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v3, "agents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 109
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 110
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 111
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v7, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 114
    .end local v5    # "i":I
    :cond_1
    return-object v3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
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

    .line 217
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 218
    return-void

    .line 220
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 222
    :pswitch_0
    const-string/jumbo v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 223
    .local v0, "type":I
    const-string v1, "key"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0, v0, v1, p3}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->updateBundleFromResultIntent(ILjava/lang/String;Landroid/content/Intent;)V

    .line 225
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mEditingKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mEditingKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 228
    :cond_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    invoke-virtual {v2, v1}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->add(Ljava/lang/Object;)V

    .line 229
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mEditingKey:Ljava/lang/String;

    .line 232
    .end local v0    # "type":I
    .end local v1    # "key":Ljava/lang/String;
    :goto_0
    return-void

    nop

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

    .line 94
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/ManageResolveInfoFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mType:I

    .line 96
    iget v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mType:I

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getDevicePolicyManagerFromType(I)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 97
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 98
    return-void
.end method

.method public bridge synthetic onDeleteButtonClick(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "entry"
        }
    .end annotation

    .line 47
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->onDeleteButtonClick(Ljava/lang/String;)V

    return-void
.end method

.method public onDeleteButtonClick(Ljava/lang/String;)V
    .locals 1
    .param p1, "entry"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public bridge synthetic onEditButtonClick(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "key"
        }
    .end annotation

    .line 47
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->onEditButtonClick(Ljava/lang/String;)V

    return-void
.end method

.method public onEditButtonClick(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 207
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->showEditDialog(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method protected onSpinnerItemSelected(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolveInfo"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 126
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v0

    .line 127
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v1

    .line 128
    .local v1, "admin":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 129
    invoke-virtual {v2, v1, v0}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v2

    .line 130
    .local v2, "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    goto :goto_1

    .line 131
    :cond_1
    :goto_0
    new-instance v3, Landroid/os/PersistableBundle;

    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    .line 135
    :goto_1
    new-instance v3, Landroid/os/PersistableBundle;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    invoke-direct {v3, v4}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mInitialBundle:Landroid/os/PersistableBundle;

    .line 136
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    invoke-virtual {v3}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->clear()V

    .line 137
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v4}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 138
    return-void
.end method

.method protected bridge synthetic onSpinnerItemSelected(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "resolveInfo"
        }
    .end annotation

    .line 47
    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->onSpinnerItemSelected(Landroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method protected resetConfig()V
    .locals 2

    .line 146
    new-instance v0, Landroid/os/PersistableBundle;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mInitialBundle:Landroid/os/PersistableBundle;

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    .line 147
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->clear()V

    .line 148
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v1}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 149
    return-void
.end method

.method protected saveConfig()V
    .locals 3

    .line 153
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->setTrustAgentConfiguration()V

    .line 154
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->saved_trust_agent_config:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 155
    return-void
.end method
