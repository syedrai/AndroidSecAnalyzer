.class public Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppPermissionsArrayAdapter.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermissionsViewHolder;,
        Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;",
        ">;",
        "Landroid/widget/RadioGroup$OnCheckedChangeListener;"
    }
.end annotation


# instance fields
.field private final mAdminComponentName:Landroid/content/ComponentName;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p4, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "resource",
            "objects",
            "admin"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;",
            ">;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .line 44
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 45
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 46
    iput-object p4, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter;->mAdminComponentName:Landroid/content/ComponentName;

    .line 47
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 52
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermissionsViewHolder;

    if-nez v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermissionsViewHolder;

    .local v0, "viewHolder":Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermissionsViewHolder;
    goto :goto_1

    .line 53
    .end local v0    # "viewHolder":Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermissionsViewHolder;
    :cond_1
    :goto_0
    nop

    .line 54
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->permission_row:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 56
    new-instance v0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermissionsViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermissionsViewHolder;-><init>(Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter;Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter-IA;)V

    .line 57
    .restart local v0    # "viewHolder":Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermissionsViewHolder;
    sget v1, Lcom/afwsamples/testdpc/R$id;->permission_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermissionsViewHolder;->permissionName:Landroid/widget/TextView;

    .line 58
    sget v1, Lcom/afwsamples/testdpc/R$id;->permission_group:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, v0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermissionsViewHolder;->permissionGroup:Landroid/widget/RadioGroup;

    .line 59
    iget-object v1, v0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermissionsViewHolder;->permissionGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 61
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    :goto_1
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;

    iput-object v1, v0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermissionsViewHolder;->appPermission:Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;

    .line 67
    iget-object v1, v0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermissionsViewHolder;->permissionName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermissionsViewHolder;->appPermission:Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;

    iget-object v2, v2, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;->permissionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, v0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermissionsViewHolder;->permissionGroup:Landroid/widget/RadioGroup;

    iget-object v2, v0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermissionsViewHolder;->appPermission:Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    .line 69
    iget-object v1, v0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermissionsViewHolder;->appPermission:Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;

    iget v1, v1, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;->permissionState:I

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 77
    :pswitch_0
    iget-object v1, v0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermissionsViewHolder;->permissionGroup:Landroid/widget/RadioGroup;

    sget v2, Lcom/afwsamples/testdpc/R$id;->permission_deny:I

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_2

    .line 71
    :pswitch_1
    iget-object v1, v0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermissionsViewHolder;->permissionGroup:Landroid/widget/RadioGroup;

    sget v2, Lcom/afwsamples/testdpc/R$id;->permission_allow:I

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 72
    goto :goto_2

    .line 74
    :pswitch_2
    iget-object v1, v0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermissionsViewHolder;->permissionGroup:Landroid/widget/RadioGroup;

    sget v2, Lcom/afwsamples/testdpc/R$id;->permission_default:I

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 75
    nop

    .line 80
    :goto_2
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 6
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "radioGroup",
            "checkedId"
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;

    .line 86
    .local v0, "appPermission":Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;
    sget v1, Lcom/afwsamples/testdpc/R$id;->permission_allow:I

    if-ne p2, v1, :cond_0

    .line 87
    const/4 v1, 0x1

    iput v1, v0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;->permissionState:I

    goto :goto_0

    .line 88
    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$id;->permission_default:I

    if-ne p2, v1, :cond_1

    .line 89
    const/4 v1, 0x0

    iput v1, v0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;->permissionState:I

    goto :goto_0

    .line 90
    :cond_1
    sget v1, Lcom/afwsamples/testdpc/R$id;->permission_deny:I

    if-ne p2, v1, :cond_2

    .line 91
    const/4 v1, 0x2

    iput v1, v0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;->permissionState:I

    .line 93
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter;->mAdminComponentName:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;->pkgName:Ljava/lang/String;

    iget-object v4, v0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;->permissionName:Ljava/lang/String;

    iget v5, v0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;->permissionState:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/admin/DevicePolicyManager;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 98
    return-void
.end method
