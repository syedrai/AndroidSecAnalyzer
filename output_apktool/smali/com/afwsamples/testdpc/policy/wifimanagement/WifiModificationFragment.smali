.class public Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;
.super Landroid/app/Fragment;
.source "WifiModificationFragment.java"

# interfaces
.implements Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$ConfigsAdapter;
    }
.end annotation


# static fields
.field private static final ARG_OWNED_NETWORKS_ONLY:Ljava/lang/String; = "owned_networks_only"

.field private static final TAG_WIFI_CONFIG_MODIFICATION:Ljava/lang/String; = "wifi_config_modification"


# instance fields
.field private mConfigsAdapter:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$ConfigsAdapter;

.field private mConfigsList:Landroid/widget/ListView;

.field private mConfiguredNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mShowOwnedNetworksOnly:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConfiguredNetworks(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfiguredNetworks:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManager(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)Landroid/net/wifi/WifiManager;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetClickedItem(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->getClickedItem()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowError(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->showError(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateConfigsList(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->updateConfigsList()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfiguredNetworks:Ljava/util/List;

    return-void
.end method

.method public static createFragment(Z)Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;
    .locals 3
    .param p0, "showOwnedNetworksOnly"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showOwnedNetworksOnly"
        }
    .end annotation

    .line 258
    new-instance v0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;-><init>()V

    .line 259
    .local v0, "fragment":Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 260
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "owned_networks_only"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 261
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->setArguments(Landroid/os/Bundle;)V

    .line 262
    return-object v0
.end method

.method private getClickedItem()Landroid/net/wifi/WifiConfiguration;
    .locals 10

    .line 82
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfigsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v0

    .line 83
    .local v0, "clickedIds":[J
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 84
    return-object v2

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfiguredNetworks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 87
    .local v1, "configuredNetworksSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 88
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfiguredNetworks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 89
    .local v4, "config":Landroid/net/wifi/WifiConfiguration;
    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    int-to-long v5, v5

    const/4 v7, 0x0

    aget-wide v7, v0, v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    .line 90
    return-object v4

    .line 87
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    .end local v3    # "i":I
    :cond_2
    return-object v2
.end method

.method private showError(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 241
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/afwsamples/testdpc/R$string;->wifi_modification_error_title:I

    .line 242
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 243
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 244
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 245
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 247
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
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

    .line 250
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 251
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 255
    return-void

    .line 252
    :cond_1
    :goto_0
    return-void
.end method

.method private updateConfigsList()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfiguredNetworks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mShowOwnedNetworksOnly:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCallerConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .local v0, "configuredNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    goto :goto_0

    .line 73
    .end local v0    # "configuredNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 75
    .restart local v0    # "configuredNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 76
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfiguredNetworks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfigsAdapter:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$ConfigsAdapter;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$ConfigsAdapter;->notifyDataSetChanged()V

    .line 79
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .line 227
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 147
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 148
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "owned_networks_only"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mShowOwnedNetworksOnly:Z

    .line 149
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 150
    sget v0, Lcom/afwsamples/testdpc/R$layout;->wifi_config_modification:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 152
    .local v0, "view":Landroid/view/View;
    sget v2, Lcom/afwsamples/testdpc/R$id;->wifiConfigs:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfigsList:Landroid/widget/ListView;

    .line 153
    sget v2, Lcom/afwsamples/testdpc/R$layout;->wifi_config_list_header:I

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfigsList:Landroid/widget/ListView;

    .line 154
    invoke-virtual {p1, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 155
    .local v2, "configsHeader":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfigsList:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 157
    new-instance v3, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$ConfigsAdapter;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$ConfigsAdapter;-><init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)V

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfigsAdapter:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$ConfigsAdapter;

    .line 158
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfigsList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfigsAdapter:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$ConfigsAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfigsList:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 161
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->shouldRequestLocationPermission(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v4, v3, v1

    invoke-virtual {p0, v3, v1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->updateConfigsList()V

    .line 168
    :goto_0
    sget v1, Lcom/afwsamples/testdpc/R$id;->updateSelectedConfig:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 169
    .local v1, "updateConfigButton":Landroid/widget/Button;
    if-eqz v1, :cond_1

    .line 170
    new-instance v3, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$1;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$1;-><init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    :cond_1
    sget v3, Lcom/afwsamples/testdpc/R$id;->removeSelectedConfig:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 196
    .local v3, "removeConfigButton":Landroid/widget/Button;
    if-eqz v3, :cond_2

    .line 197
    new-instance v4, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$2;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$2;-><init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    :cond_2
    return-object v0
.end method

.method public onDismiss()V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->updateConfigsList()V

    .line 224
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 135
    const/4 v0, 0x0

    aget v0, p3, v0

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "Location permission denied, network list unavailable."

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->updateConfigsList()V

    .line 140
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 141
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 128
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 129
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->updateConfigsList()V

    .line 130
    return-void
.end method

.method public shouldRequestLocationPermission(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 230
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 231
    return v2

    .line 233
    :cond_0
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mShowOwnedNetworksOnly:Z

    if-eqz v0, :cond_1

    .line 234
    return v2

    .line 236
    :cond_1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method
