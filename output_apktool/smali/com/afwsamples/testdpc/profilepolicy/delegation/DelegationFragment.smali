.class public Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;
.super Lcom/afwsamples/testdpc/common/ManageAppFragment;
.source "DelegationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mDelegations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;",
            ">;"
        }
    .end annotation
.end field

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mIsDeviceOrProfileOwner:Z

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/ManageAppFragment;-><init>()V

    return-void
.end method

.method private isDelegatedApp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private readScopesFromDpm(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkgName"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 111
    iget-boolean v1, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mIsDeviceOrProfileOwner:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 110
    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 113
    .local v0, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->TAG:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDelegations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    .line 117
    .local v2, "delegationScope":Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;
    iget-object v3, v2, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;->scope:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;->granted:Z

    .line 118
    .end local v2    # "delegationScope":Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;
    goto :goto_1

    .line 119
    :cond_1
    return-void
.end method

.method private readScopesFromUi()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v0, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDelegations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mAppListView:Landroid/widget/ListView;

    .line 130
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/afwsamples/testdpc/R$id;->checkbox_delegation_scope:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 131
    .local v2, "checkBox":Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDelegations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    iput-boolean v4, v3, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;->granted:Z

    .line 133
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDelegations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    iget-boolean v3, v3, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;->granted:Z

    if-eqz v3, :cond_0

    .line 134
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDelegations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    iget-object v3, v3, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;->scope:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v2    # "checkBox":Landroid/widget/CheckBox;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected addNewRow()V
    .locals 0

    .line 187
    return-void
.end method

.method protected createListAdapter()Landroid/widget/BaseAdapter;
    .locals 4

    .line 180
    new-instance v0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationScopesArrayAdapter;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDelegations:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationScopesArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-object v0
.end method

.method protected filterApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 97
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mIsDeviceOrProfileOwner:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->filterApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0

    .line 101
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected loadDefault()V
    .locals 0

    .line 190
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 60
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 62
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mPackageName:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->isDelegatedApp(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 65
    invoke-static {v1}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;->defaultDelegationScopes(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDelegations:Ljava/util/List;

    goto :goto_3

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 68
    .local v0, "mAdminName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v2

    .line 69
    .local v2, "isDeviceOwner":Z
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v3

    .line 70
    .local v3, "isProfileOwner":Z
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/afwsamples/testdpc/common/Util;->isManagedProfileOwner(Landroid/content/Context;)Z

    move-result v4

    .line 71
    .local v4, "isManagedProfileOwner":Z
    const/4 v5, 0x0

    if-nez v2, :cond_2

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mIsDeviceOrProfileOwner:Z

    .line 74
    if-nez v2, :cond_4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 75
    :cond_4
    :goto_2
    invoke-static {v1}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;->defaultDelegationScopes(Z)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDelegations:Ljava/util/List;

    .line 78
    .end local v0    # "mAdminName":Landroid/content/ComponentName;
    .end local v2    # "isDeviceOwner":Z
    .end local v3    # "isProfileOwner":Z
    .end local v4    # "isManagedProfileOwner":Z
    :goto_3
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->generic_delegation:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 79
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

    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->add_new_row:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    sget v1, Lcom/afwsamples/testdpc/R$id;->reset_app:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-boolean v1, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mIsDeviceOrProfileOwner:Z

    if-nez v1, :cond_0

    .line 90
    sget v1, Lcom/afwsamples/testdpc/R$id;->save_app:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_0
    return-object v0
.end method

.method protected onSpinnerItemSelected(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 142
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 143
    .local v0, "pkgName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 144
    return-void

    .line 148
    :cond_0
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->readScopesFromDpm(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 152
    return-void
.end method

.method protected bridge synthetic onSpinnerItemSelected(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "info"
        }
    .end annotation

    .line 47
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->onSpinnerItemSelected(Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method

.method protected resetConfig()V
    .locals 0

    .line 184
    return-void
.end method

.method protected saveConfig()V
    .locals 6

    .line 157
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mIsDeviceOrProfileOwner:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v2, Lcom/afwsamples/testdpc/R$string;->delegation_error:I

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 160
    sget-object v0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->TAG:Ljava/lang/String;

    const-string v1, "Only PO/DO can modify delegations"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mManagedAppsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 165
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 168
    .local v2, "pkgName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->readScopesFromUi()Ljava/util/List;

    move-result-object v3

    .line 171
    .local v3, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V

    .line 172
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    sget v5, Lcom/afwsamples/testdpc/R$string;->delegation_success:I

    invoke-virtual {p0, v5}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 175
    sget-object v1, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->TAG:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method
