.class public Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;
.super Lcom/afwsamples/testdpc/common/SelectAppFragment;
.source "AlwaysOnVpnFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlwaysOnVpnFragment"

.field private static final VPN_INTENT:Landroid/content/Intent;


# instance fields
.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mExemptedPackages:Landroid/widget/EditText;

.field private mLockdown:Landroid/widget/CheckBox;

.field private mWho:Landroid/content/ComponentName;


# direct methods
.method public static synthetic $r8$lambda$z5fRmcmX_kyN7HZaCuSZj3d70VY(Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->lambda$onCreateView$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.VpnService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->VPN_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "unused"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 95
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mExemptedPackages:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method static synthetic lambda$setAlwaysOnVpnPackageQPlus$0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private setAlwaysOnVpnPackageQPlus(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mLockdown:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 152
    .local v0, "lockdown":Z
    if-eqz v0, :cond_0

    .line 156
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mExemptedPackages:Landroid/widget/EditText;

    .line 153
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment$$ExternalSyntheticLambda1;-><init>()V

    .line 154
    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment$$ExternalSyntheticLambda2;-><init>()V

    .line 155
    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v1

    .line 156
    invoke-static {}, Lj$/util/stream/Collectors;->toSet()Lj$/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    goto :goto_0

    .line 157
    :cond_0
    const/4 v1, 0x0

    :goto_0
    nop

    .line 158
    .local v1, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mWho:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, p1, v0, v1}, Landroid/app/admin/DevicePolicyManager;->setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/util/Set;)V

    .line 159
    return-void
.end method

.method private updateLockdown()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mLockdown:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mWho:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->isAlwaysOnVpnLockdownEnabled(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 125
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mWho:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAlwaysOnVpnLockdownWhitelist(Landroid/content/ComponentName;)Ljava/util/Set;

    move-result-object v0

    .line 126
    .local v0, "exemptedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mExemptedPackages:Landroid/widget/EditText;

    .line 127
    if-eqz v0, :cond_0

    const-string v2, ","

    invoke-static {v2}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 126
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method


# virtual methods
.method protected clearSelectedPackage()V
    .locals 1

    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->setSelectedPackage(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method protected createAppList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 103
    .local v0, "apps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 104
    .local v1, "pm":Landroid/content/pm/PackageManager;
    sget-object v2, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->VPN_INTENT:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 105
    .local v2, "serviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 106
    .local v4, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v5, :cond_0

    .line 107
    goto :goto_0

    .line 109
    :cond_0
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v4    # "serviceInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_0

    .line 111
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v3
.end method

.method protected getSelectedPackage()Ljava/lang/String;
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 72
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 74
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mWho:Landroid/content/ComponentName;

    .line 75
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
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

    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 89
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->getExtensionLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 90
    .local v1, "extension":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 91
    sget v2, Lcom/afwsamples/testdpc/R$layout;->lockdown_settings:I

    invoke-virtual {p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 92
    sget v2, Lcom/afwsamples/testdpc/R$id;->enable_lockdown:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mLockdown:Landroid/widget/CheckBox;

    .line 93
    sget v2, Lcom/afwsamples/testdpc/R$id;->exempted_packages:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mExemptedPackages:Landroid/widget/EditText;

    .line 94
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mLockdown:Landroid/widget/CheckBox;

    new-instance v3, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment$$ExternalSyntheticLambda0;-><init>(Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    .end local v1    # "extension":Landroid/view/ViewGroup;
    :cond_0
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .line 79
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->onResume()V

    .line 80
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->set_always_on_vpn:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 81
    return-void
.end method

.method protected reloadSelectedPackage()V
    .locals 2

    .line 116
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->reloadSelectedPackage()V

    .line 117
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->updateLockdown()V

    .line 120
    :cond_0
    return-void
.end method

.method protected setSelectedPackage(Ljava/lang/String;)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkg"
        }
    .end annotation

    .line 133
    const-string v0, "setAlwaysOnVpnPackage:"

    const-string v1, "AlwaysOnVpnFragment"

    const/4 v2, 0x0

    :try_start_0
    sget v3, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_0

    .line 134
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->setAlwaysOnVpnPackageQPlus(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mWho:Landroid/content/ComponentName;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, p1, v5}, Landroid/app/admin/DevicePolicyManager;->setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v3

    .line 143
    .local v3, "e":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "App doesn\'t support always-on VPN"

    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 144
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 138
    .end local v3    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v3

    .line 139
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 141
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "text":Ljava/lang/String;
    :goto_0
    nop

    .line 146
    :goto_1
    return-void
.end method
