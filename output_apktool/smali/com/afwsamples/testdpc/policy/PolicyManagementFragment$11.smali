.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$11;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetPermissionPolicyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$permissionGroup:Landroid/widget/RadioGroup;


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
            "val$permissionGroup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2261
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$11;->val$permissionGroup:Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$11;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
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

    .line 2264
    const/4 v0, 0x0

    .line 2265
    .local v0, "policy":I
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$11;->val$permissionGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    .line 2266
    .local v1, "checked":I
    sget v2, Lcom/afwsamples/testdpc/R$id;->prompt:I

    if-ne v1, v2, :cond_0

    .line 2267
    const/4 v0, 0x0

    goto :goto_0

    .line 2268
    :cond_0
    sget v2, Lcom/afwsamples/testdpc/R$id;->accept:I

    if-ne v1, v2, :cond_1

    .line 2269
    const/4 v0, 0x1

    goto :goto_0

    .line 2270
    :cond_1
    sget v2, Lcom/afwsamples/testdpc/R$id;->deny:I

    if-ne v1, v2, :cond_2

    .line 2271
    const/4 v0, 0x2

    .line 2273
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$11;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$fgetmDevicePolicyManager(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$11;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$fgetmAdminComponentName(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/app/admin/DevicePolicyManager;->setPermissionPolicy(Landroid/content/ComponentName;I)V

    .line 2274
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2275
    return-void
.end method
