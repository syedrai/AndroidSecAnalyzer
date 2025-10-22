.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$19;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showCredentialManagerPolicyDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$policyType:I


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;I)V
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
            "val$editText",
            "val$policyType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2980
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$19;->val$editText:Landroid/widget/EditText;

    iput p3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$19;->val$policyType:I

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$19;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
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

    .line 2983
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2984
    .local v0, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$19;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2985
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2986
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2989
    :cond_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$19;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$fgetmDevicePolicyManager(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    new-instance v3, Landroid/app/admin/PackagePolicy;

    iget v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$19;->val$policyType:I

    invoke-direct {v3, v4, v0}, Landroid/app/admin/PackagePolicy;-><init>(ILjava/util/Set;)V

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->setCredentialManagerPolicy(Landroid/app/admin/PackagePolicy;)V

    .line 2992
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$19;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    sget v3, Lcom/afwsamples/testdpc/R$string;->credential_manager_policy_applied_toast:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$mshowToast(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V

    .line 2993
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2994
    return-void
.end method
