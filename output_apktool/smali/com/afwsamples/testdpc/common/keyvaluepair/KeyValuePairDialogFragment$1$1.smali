.class Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1$1;
.super Ljava/lang/Object;
.source "KeyValuePairDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 189
    iput-object p2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1$1;->val$dialog:Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1$1;->this$1:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1$1;->this$1:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;

    iget-object v0, v0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->-$$Nest$fgetmKeyView(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1$1;->this$1:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;

    iget-object v1, v1, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    sget v2, Lcom/afwsamples/testdpc/R$string;->key_empty_error:I

    invoke-static {v1, v2}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->-$$Nest$mshowToast(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;I)V

    .line 195
    return-void

    .line 197
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v1, "result":Landroid/content/Intent;
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1$1;->this$1:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;

    iget-object v2, v2, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    invoke-static {v2}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->-$$Nest$fgetmDialogType(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)I

    move-result v2

    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    const-string v2, "key"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1$1;->this$1:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;

    iget-object v2, v2, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->-$$Nest$mputValueFromUiToResultIntent(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;Landroid/content/Intent;)Z

    move-result v2

    .line 201
    .local v2, "valid":Z
    if-eqz v2, :cond_1

    .line 202
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1$1;->this$1:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;

    iget-object v3, v3, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    invoke-virtual {v3}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v3

    iget-object v4, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1$1;->this$1:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;

    iget-object v4, v4, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    .line 203
    invoke-virtual {v4}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getTargetRequestCode()I

    move-result v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 204
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1$1;->this$1:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;

    iget-object v3, v3, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    sget v4, Lcom/afwsamples/testdpc/R$string;->value_not_valid:I

    invoke-static {v3, v4}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->-$$Nest$mshowToast(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;I)V

    .line 208
    :goto_0
    return-void
.end method
