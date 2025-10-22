.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$31;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetWifiMinSecurityLevelDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$securityLevelGroup:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/RadioGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$securityLevelGroup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4621
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$31;->val$securityLevelGroup:Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$31;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
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

    .line 4624
    const/4 v0, 0x0

    .line 4625
    .local v0, "level":I
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$31;->val$securityLevelGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    .line 4626
    .local v1, "checked":I
    sget v2, Lcom/afwsamples/testdpc/R$id;->open:I

    if-ne v1, v2, :cond_0

    .line 4627
    const/4 v0, 0x0

    goto :goto_0

    .line 4628
    :cond_0
    sget v2, Lcom/afwsamples/testdpc/R$id;->personal:I

    if-ne v1, v2, :cond_1

    .line 4629
    const/4 v0, 0x1

    goto :goto_0

    .line 4630
    :cond_1
    sget v2, Lcom/afwsamples/testdpc/R$id;->enterprise_eap:I

    if-ne v1, v2, :cond_2

    .line 4631
    const/4 v0, 0x2

    goto :goto_0

    .line 4632
    :cond_2
    sget v2, Lcom/afwsamples/testdpc/R$id;->enterprise_192:I

    if-ne v1, v2, :cond_3

    .line 4633
    const/4 v0, 0x3

    .line 4635
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$31;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$fgetmDevicePolicyManager(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->setMinimumRequiredWifiSecurityLevel(I)V

    .line 4636
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4637
    return-void
.end method
