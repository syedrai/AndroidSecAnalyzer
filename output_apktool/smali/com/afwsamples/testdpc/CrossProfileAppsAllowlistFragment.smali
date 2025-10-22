.class public Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;
.super Landroid/app/Fragment;
.source "CrossProfileAppsAllowlistFragment.java"


# static fields
.field private static final DELIMITER:Ljava/lang/String; = "\n"


# instance fields
.field private mAddButton:Landroid/widget/Button;

.field private mAdminComponent:Landroid/content/ComponentName;

.field private mAppNameEditText:Landroid/widget/EditText;

.field private mAppsList:Landroid/widget/TextView;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mInflatedView:Landroid/view/View;

.field private mRemoveButton:Landroid/widget/Button;

.field private mResetButton:Landroid/widget/Button;


# direct methods
.method public static synthetic $r8$lambda$53uLFDegNPzyjCLkqrBZJFevsCs(Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->lambda$setOnClickListeners$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bSPqSbWGZPMOp_aWDurakrWlr-c(Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->lambda$setOnClickListeners$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e9maOYrRB4teH71t7EsZqyMPMQM(Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->lambda$setOnClickListeners$2(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private addApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "app"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "app"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAdminComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCrossProfilePackages(Landroid/content/ComponentName;)Ljava/util/Set;

    move-result-object v0

    .line 96
    .local v0, "currentApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v1, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAdminComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->setCrossProfilePackages(Landroid/content/ComponentName;Ljava/util/Set;)V

    .line 98
    invoke-direct {p0}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->updateCrossProfileAppsList()V

    .line 99
    return-void
.end method

.method private synthetic lambda$setOnClickListeners$0(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 79
    invoke-direct {p0}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->resetApps()V

    return-void
.end method

.method private synthetic lambda$setOnClickListeners$1(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAppNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->addApp(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setOnClickListeners$2(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAppNameEditText:Landroid/widget/EditText;

    .line 86
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->removeApp(Ljava/lang/String;)V

    return-void
.end method

.method private removeApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "app"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "app"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAdminComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCrossProfilePackages(Landroid/content/ComponentName;)Ljava/util/Set;

    move-result-object v0

    .line 103
    .local v0, "currentApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 104
    iget-object v1, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAdminComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->setCrossProfilePackages(Landroid/content/ComponentName;Ljava/util/Set;)V

    .line 105
    invoke-direct {p0}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->updateCrossProfileAppsList()V

    .line 106
    return-void
.end method

.method private resetApps()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAdminComponent:Landroid/content/ComponentName;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setCrossProfilePackages(Landroid/content/ComponentName;Ljava/util/Set;)V

    .line 91
    invoke-direct {p0}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->updateCrossProfileAppsList()V

    .line 92
    return-void
.end method

.method private setOnClickListeners()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mResetButton:Landroid/widget/Button;

    new-instance v1, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment$$ExternalSyntheticLambda0;-><init>(Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAddButton:Landroid/widget/Button;

    new-instance v1, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment$$ExternalSyntheticLambda1;-><init>(Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mRemoveButton:Landroid/widget/Button;

    new-instance v1, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment$$ExternalSyntheticLambda2;-><init>(Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method private updateCrossProfileAppsList()V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAdminComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCrossProfilePackages(Landroid/content/ComponentName;)Ljava/util/Set;

    move-result-object v0

    .line 110
    .local v0, "currentApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAppsList:Landroid/widget/TextView;

    sget v2, Lcom/afwsamples/testdpc/R$string;->cross_profile_apps_no_allowlisted_apps:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAppsList:Landroid/widget/TextView;

    const-string v2, "\n"

    invoke-static {v2}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
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

    .line 62
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 63
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAdminComponent:Landroid/content/ComponentName;

    .line 64
    sget v0, Lcom/afwsamples/testdpc/R$layout;->cross_profile_apps_allowlist:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mInflatedView:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mInflatedView:Landroid/view/View;

    sget v1, Lcom/afwsamples/testdpc/R$id;->cross_profile_app_allowlist_input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAppNameEditText:Landroid/widget/EditText;

    .line 67
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mInflatedView:Landroid/view/View;

    sget v1, Lcom/afwsamples/testdpc/R$id;->cross_profile_app_allowlist_reset_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mResetButton:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mInflatedView:Landroid/view/View;

    sget v1, Lcom/afwsamples/testdpc/R$id;->cross_profile_app_allowlist_add_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAddButton:Landroid/widget/Button;

    .line 69
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mInflatedView:Landroid/view/View;

    sget v1, Lcom/afwsamples/testdpc/R$id;->cross_profile_app_allowlist_remove_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mRemoveButton:Landroid/widget/Button;

    .line 70
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mInflatedView:Landroid/view/View;

    sget v1, Lcom/afwsamples/testdpc/R$id;->cross_profile_app_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAppsList:Landroid/widget/TextView;

    .line 72
    invoke-direct {p0}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->setOnClickListeners()V

    .line 73
    invoke-direct {p0}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->updateCrossProfileAppsList()V

    .line 75
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mInflatedView:Landroid/view/View;

    return-object v0
.end method
