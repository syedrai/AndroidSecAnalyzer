.class Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$1;
.super Ljava/lang/Object;
.source "WifiModificationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->-$$Nest$mgetClickedItem(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 175
    .local v0, "oldConf":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 176
    return-void

    .line 180
    :cond_0
    :try_start_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 181
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 185
    :cond_1
    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->newInstance(Landroid/net/wifi/WifiConfiguration;)Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;

    move-result-object v1

    .local v1, "dialog":Landroid/app/DialogFragment;
    goto :goto_1

    .line 182
    .end local v1    # "dialog":Landroid/app/DialogFragment;
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    .line 183
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->newInstance(Landroid/net/wifi/WifiConfiguration;Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog$Listener;)Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;

    move-result-object v1

    .line 187
    .restart local v1    # "dialog":Landroid/app/DialogFragment;
    :goto_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    invoke-virtual {v2}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "wifi_config_modification"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v1    # "dialog":Landroid/app/DialogFragment;
    goto :goto_2

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->-$$Nest$mshowError(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;Ljava/lang/String;)V

    .line 191
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_2
    return-void
.end method
