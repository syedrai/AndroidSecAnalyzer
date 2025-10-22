.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$8;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showCheckLockTaskPermittedPrompt()V
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

    .line 2009
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$8;->val$input:Landroid/widget/EditText;

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$8;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

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

    .line 2012
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$8;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2013
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$8;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$fgetmDevicePolicyManagerGateway(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v1

    .line 2014
    invoke-interface {v1, v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v1

    .line 2015
    .local v1, "isLockTaskPermitted":Z
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$8;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .line 2016
    if-eqz v1, :cond_0

    .line 2017
    sget v3, Lcom/afwsamples/testdpc/R$string;->check_lock_task_permitted_result_permitted:I

    goto :goto_0

    .line 2018
    :cond_0
    sget v3, Lcom/afwsamples/testdpc/R$string;->check_lock_task_permitted_result_not_permitted:I

    :goto_0
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 2015
    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$mshowToast(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V

    .line 2019
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2020
    return-void
.end method
