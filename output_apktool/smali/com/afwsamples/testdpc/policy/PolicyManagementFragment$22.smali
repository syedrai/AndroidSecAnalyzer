.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$22;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showPromptForCertificatePassword(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$attempts:I

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$input",
            "val$intent",
            "val$attempts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3171
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$22;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$22;->val$intent:Landroid/content/Intent;

    iput p4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$22;->val$attempts:I

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$22;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

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

    .line 3174
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$22;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3175
    .local v0, "userPassword":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$22;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$22;->val$intent:Landroid/content/Intent;

    iget v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$22;->val$attempts:I

    invoke-static {v1, v2, v0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$mimportKeyCertificateFromIntent(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/content/Intent;Ljava/lang/String;I)V

    .line 3176
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3177
    return-void
.end method
