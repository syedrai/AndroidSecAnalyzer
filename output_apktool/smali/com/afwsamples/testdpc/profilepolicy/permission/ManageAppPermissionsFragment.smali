.class public Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;
.super Lcom/afwsamples/testdpc/common/ManageAppFragment;
.source "ManageAppPermissionsFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ManageAppPermissions"


# instance fields
.field private mAdminComponent:Landroid/content/ComponentName;

.field private mAppPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;",
            ">;"
        }
    .end annotation
.end field

.field private mAppPermissionsView:Landroid/widget/TextView;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/ManageAppFragment;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mAppPermissions:Ljava/util/List;

    return-void
.end method

.method private displayAppPermissions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permissions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;",
            ">;)V"
        }
    .end annotation

    .line 142
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mAppPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 143
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mAppPermissionsView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mAppPermissionsView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mAppPermissions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 150
    return-void
.end method


# virtual methods
.method protected addNewRow()V
    .locals 0

    .line 127
    return-void
.end method

.method protected createListAdapter()Landroid/widget/BaseAdapter;
    .locals 5

    .line 134
    new-instance v0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mAppPermissions:Ljava/util/List;

    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mAdminComponent:Landroid/content/ComponentName;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/content/ComponentName;)V

    return-object v0
.end method

.method protected loadDefault()V
    .locals 0

    .line 130
    return-void
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

    .line 58
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 60
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "delegation-permission-grant"

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/common/Util;->hasDelegation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mAdminComponent:Landroid/content/ComponentName;

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mAdminComponent:Landroid/content/ComponentName;

    .line 65
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

    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->load_default_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    sget v1, Lcom/afwsamples/testdpc/R$id;->add_new_row:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    sget v1, Lcom/afwsamples/testdpc/R$id;->manage_app_button_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    sget v1, Lcom/afwsamples/testdpc/R$id;->error_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mAppPermissionsView:Landroid/widget/TextView;

    .line 75
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mAppPermissionsView:Landroid/widget/TextView;

    sget v2, Lcom/afwsamples/testdpc/R$string;->app_permissions_empty:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 76
    return-object v0
.end method

.method protected onSpinnerItemSelected(Landroid/content/pm/ApplicationInfo;)V
    .locals 12
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appInfo"
        }
    .end annotation

    .line 81
    const-string v0, "ManageAppPermissions"

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 82
    .local v1, "pkgName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 87
    .local v3, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v4, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x1000

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    .local v4, "info":Landroid/content/pm/PackageInfo;
    nop

    .line 93
    if-eqz v4, :cond_1

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 94
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_1

    aget-object v8, v3, v7

    .line 96
    .local v8, "requestedPerm":Ljava/lang/String;
    :try_start_1
    iget-object v9, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v8, v6}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v9

    .line 97
    .local v9, "pInfo":Landroid/content/pm/PermissionInfo;
    if-eqz v9, :cond_0

    .line 98
    iget v10, v9, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v10, v10, 0xf

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 100
    iget-object v10, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    .end local v9    # "pInfo":Landroid/content/pm/PermissionInfo;
    :cond_0
    goto :goto_1

    .line 103
    :catch_0
    move-exception v9

    .line 104
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not retrieve info about the permission: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v8    # "requestedPerm":Ljava/lang/String;
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 109
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v0, "populatedPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 111
    .local v5, "permission":Ljava/lang/String;
    iget-object v6, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v7, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mAdminComponent:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v1, v5}, Landroid/app/admin/DevicePolicyManager;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 112
    .local v6, "permissionState":I
    new-instance v7, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;

    invoke-direct {v7, v1, v5, v6}, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 114
    .local v7, "populatedPerm":Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v5    # "permission":Ljava/lang/String;
    .end local v6    # "permissionState":I
    .end local v7    # "populatedPerm":Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;
    goto :goto_2

    .line 116
    :cond_2
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->displayAppPermissions(Ljava/util/List;)V

    goto :goto_3

    .line 88
    .end local v0    # "populatedPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;>;"
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    .restart local v3    # "info":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v4

    .line 89
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not retrieve info about the package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    return-void

    .line 118
    .end local v2    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    :goto_3
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

    .line 47
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->onSpinnerItemSelected(Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method

.method protected resetConfig()V
    .locals 0

    .line 121
    return-void
.end method

.method protected saveConfig()V
    .locals 0

    .line 124
    return-void
.end method
