.class Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$ConfigsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WifiModificationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/net/wifi/WifiConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;


# direct methods
.method public constructor <init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$ConfigsAdapter;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    .line 98
    invoke-virtual {p1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1090005

    invoke-static {p1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->-$$Nest$fgetmConfiguredNetworks(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 99
    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$ConfigsAdapter;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->-$$Nest$fgetmConfiguredNetworks(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 113
    if-nez p2, :cond_0

    .line 114
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$ConfigsAdapter;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    .line 115
    invoke-virtual {v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 117
    const v1, 0x1090005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$ConfigsAdapter;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->-$$Nest$fgetmConfiguredNetworks(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 120
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    move-object v1, p2

    check-cast v1, Landroid/widget/CheckedTextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    .line 103
    const/4 v0, 0x1

    return v0
.end method
