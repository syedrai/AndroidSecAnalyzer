.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$32;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetWifiSsidRestrictionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$listTypeGroup:Landroid/widget/RadioGroup;

.field final synthetic val$ssidsTextEdit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/widget/RadioGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$ssidsTextEdit",
            "val$listTypeGroup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4662
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$32;->val$ssidsTextEdit:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$32;->val$listTypeGroup:Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$32;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    .line 4665
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$32;->val$ssidsTextEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4666
    .local v0, "ssids":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4667
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$32;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$fgetmDevicePolicyManager(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->setWifiSsidPolicy(Landroid/app/admin/WifiSsidPolicy;)V

    .line 4668
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$32;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const-string v2, "SSID restriction removed"

    invoke-static {v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$mshowToast(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V

    .line 4669
    return-void

    .line 4672
    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4673
    .local v1, "ssidsArray":[Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 4674
    .local v2, "ssidList":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/wifi/WifiSsid;>;"
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 4675
    .local v5, "ssid":Ljava/lang/String;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/WifiSsid;->fromBytes([B)Landroid/net/wifi/WifiSsid;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4674
    .end local v5    # "ssid":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4678
    :cond_1
    const/4 v3, 0x0

    .line 4679
    .local v3, "type":I
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$32;->val$listTypeGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v4

    .line 4680
    .local v4, "checked":I
    sget v5, Lcom/afwsamples/testdpc/R$id;->allow:I

    if-ne v4, v5, :cond_2

    .line 4681
    const/4 v3, 0x0

    goto :goto_1

    .line 4682
    :cond_2
    sget v5, Lcom/afwsamples/testdpc/R$id;->deny:I

    if-ne v4, v5, :cond_3

    .line 4683
    const/4 v3, 0x1

    .line 4686
    :cond_3
    :goto_1
    new-instance v5, Landroid/app/admin/WifiSsidPolicy;

    invoke-direct {v5, v3, v2}, Landroid/app/admin/WifiSsidPolicy;-><init>(ILjava/util/Set;)V

    .line 4687
    .local v5, "policy":Landroid/app/admin/WifiSsidPolicy;
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$32;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v6}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$fgetmDevicePolicyManager(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/admin/DevicePolicyManager;->setWifiSsidPolicy(Landroid/app/admin/WifiSsidPolicy;)V

    .line 4688
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$32;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const-string v7, "SSID restriction set"

    invoke-static {v6, v7}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$mshowToast(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V

    .line 4689
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4690
    return-void
.end method
