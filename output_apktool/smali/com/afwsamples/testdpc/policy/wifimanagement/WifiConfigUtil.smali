.class public Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigUtil;
.super Ljava/lang/Object;
.source "WifiConfigUtil.java"


# static fields
.field private static final INVALID_NETWORK_ID:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addWifiNetwork(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)I
    .locals 4
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "wifiManager",
            "wifiConfiguration"
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 58
    .local v0, "networkId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 59
    return v1

    .line 61
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_1

    .line 63
    invoke-static {p0, v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigUtil;->saveAddedWifiConfiguration(Landroid/net/wifi/WifiManager;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    return v1

    .line 67
    :cond_1
    return v0
.end method

.method private static saveAddedWifiConfiguration(Landroid/net/wifi/WifiManager;I)Z
    .locals 2
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "networkId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "wifiManager",
            "networkId"
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v0

    .line 72
    .local v0, "saveConfigurationSuccess":Z
    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 74
    const/4 v1, 0x0

    return v1

    .line 76
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private static saveUpdatedWifiConfiguration(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wifiManager"
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v0

    return v0
.end method

.method public static saveWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "wifiConfiguration"
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 39
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 40
    invoke-static {v0, p1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigUtil;->addWifiNetwork(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .local v1, "networkId":I
    goto :goto_0

    .line 42
    .end local v1    # "networkId":I
    :cond_0
    invoke-static {v0, p1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigUtil;->updateWifiNetwork(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 44
    .restart local v1    # "networkId":I
    :goto_0
    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 45
    return v3

    .line 47
    :cond_1
    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 48
    const/4 v2, 0x1

    return v2
.end method

.method private static updateWifiNetwork(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)I
    .locals 4
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "wifiManager",
            "wifiConfiguration"
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 87
    .local v0, "networkId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 88
    return v1

    .line 90
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_1

    .line 92
    invoke-static {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigUtil;->saveUpdatedWifiConfiguration(Landroid/net/wifi/WifiManager;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    return v1

    .line 96
    :cond_1
    return v0
.end method
