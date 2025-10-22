.class public abstract Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;
.super Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
.source "ProfileOrParentFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/common/ProfileOrParentFragment$Container;
    }
.end annotation


# static fields
.field private static final EXTRA_PARENT_PROFILE:Ljava/lang/String; = "com.afwsamples.testdpc.extra.PARENT"

.field private static final LOG_TAG:Ljava/lang/String; = "ProfileOrParentFragment"

.field private static final TAG_PARENT:Ljava/lang/String; = ":parent"


# instance fields
.field private mDeviceOwner:Z

.field private mDevicePolicyGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

.field private mParentInstance:Z

.field private mProfileOwner:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 108
    const-string v0, "ProfileOrParentFragment"

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 109
    return-void
.end method


# virtual methods
.method protected final getAdmin()Landroid/content/ComponentName;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mDevicePolicyGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getAdmin()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method protected final getDpm()Landroid/app/admin/DevicePolicyManager;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mDevicePolicyGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    return-object v0
.end method

.method protected final getDpmGateway()Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mDevicePolicyGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    return-object v0
.end method

.method protected isDeviceOwner()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mDeviceOwner:Z

    return v0
.end method

.method protected final isManagedProfileInstance()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mProfileOwner:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->isParentProfileInstance()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final isParentProfileInstance()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mParentInstance:Z

    return v0
.end method

.method protected isProfileOwner()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mProfileOwner:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 149
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 150
    const-string v1, "com.afwsamples.testdpc.extra.PARENT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mParentInstance:Z

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 154
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    invoke-direct {v2, v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mDevicePolicyGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 157
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mDevicePolicyGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isProfileOwnerApp()Z

    move-result v2

    iput-boolean v2, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mProfileOwner:Z

    .line 158
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mDevicePolicyGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isDeviceOwnerApp()Z

    move-result v2

    iput-boolean v2, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mDeviceOwner:Z

    .line 160
    iget-boolean v2, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mParentInstance:Z

    if-eqz v2, :cond_1

    .line 161
    invoke-static {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->forParentProfile(Landroid/content/Context;)Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mDevicePolicyGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 166
    :cond_1
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 171
    iget-boolean v2, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mParentInstance:Z

    if-eqz v2, :cond_2

    .line 172
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v2

    .line 173
    .local v2, "pm":Landroidx/preference/PreferenceManager;
    invoke-virtual {v2}, Landroidx/preference/PreferenceManager;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":parent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 175
    .end local v2    # "pm":Landroidx/preference/PreferenceManager;
    :cond_2
    return-void
.end method
