.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$16;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showBlockUninstallationByPackageNamePrompt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2574
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$16;->val$input:Landroid/widget/EditText;

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$16;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialogInterface",
            "i"
        }
    .end annotation

    .line 2577
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$16;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2578
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2579
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$16;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$fgetmDevicePolicyManager(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$16;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$fgetmAdminComponentName(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/admin/DevicePolicyManager;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 2580
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$16;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    sget v3, Lcom/afwsamples/testdpc/R$string;->uninstallation_allowed:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v1, v3, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$mshowToast(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 2582
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$16;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    sget v3, Lcom/afwsamples/testdpc/R$string;->block_uninstallation_failed_invalid_pkgname:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$mshowToast(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V

    .line 2584
    :goto_0
    return-void
.end method
