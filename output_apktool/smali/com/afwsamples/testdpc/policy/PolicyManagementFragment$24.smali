.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showPromptForKeyCertificateAlias(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$certificate:Ljava/security/cert/Certificate;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$key:Ljava/security/PrivateKey;

.field final synthetic val$userSelectableCheckbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/widget/CheckBox;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$input",
            "val$userSelectableCheckbox",
            "val$key",
            "val$certificate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3224
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;->val$userSelectableCheckbox:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;->val$key:Ljava/security/PrivateKey;

    iput-object p5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;->val$certificate:Ljava/security/cert/Certificate;

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
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

    .line 3227
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3228
    .local v0, "alias":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;->val$userSelectableCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 3229
    .local v1, "isUserSelectable":Z
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;->val$key:Ljava/security/PrivateKey;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;->val$certificate:Ljava/security/cert/Certificate;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$minstallKeyPair(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 3230
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    sget v5, Lcom/afwsamples/testdpc/R$string;->certificate_added:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-static {v2, v5, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$mshowToast(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 3232
    :cond_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    sget v5, Lcom/afwsamples/testdpc/R$string;->certificate_add_failed:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-static {v2, v5, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$mshowToast(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V

    .line 3234
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3235
    return-void
.end method
