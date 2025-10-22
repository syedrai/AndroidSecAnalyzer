.class Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$2;
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

    .line 198
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->-$$Nest$mgetClickedItem(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 202
    .local v0, "oldConf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->-$$Nest$fgetmWifiManager(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    sget v3, Lcom/afwsamples/testdpc/R$string;->wifi_remove_config_error:I

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 207
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v5, v6, v4

    .line 206
    invoke-virtual {v2, v3, v6}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-static {v1, v2}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->-$$Nest$mshowError(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->-$$Nest$mupdateConfigsList(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    goto :goto_1

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->-$$Nest$mshowError(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;Ljava/lang/String;)V

    .line 215
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_1
    :goto_1
    return-void
.end method
