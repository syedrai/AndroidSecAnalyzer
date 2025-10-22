.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$9;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showResetPasswordPrompt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$dontRequireOnBoot:Landroid/widget/CheckBox;

.field final synthetic val$passwordView:Landroid/widget/EditText;

.field final synthetic val$requireEntry:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
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
            "val$passwordView",
            "val$requireEntry",
            "val$dontRequireOnBoot"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2049
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$9;->val$passwordView:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$9;->val$requireEntry:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$9;->val$dontRequireOnBoot:Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$9;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialogInterface",
            "which"
        }
    .end annotation

    .line 2052
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$9;->val$passwordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2053
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2054
    const/4 v0, 0x0

    .line 2057
    :cond_0
    const/4 v1, 0x0

    .line 2058
    .local v1, "flags":I
    nop

    .line 2059
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$9;->val$requireEntry:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    or-int/2addr v1, v2

    .line 2060
    nop

    .line 2061
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$9;->val$dontRequireOnBoot:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 2062
    const/4 v2, 0x2

    goto :goto_0

    .line 2063
    :cond_1
    const/4 v2, 0x0

    :goto_0
    or-int/2addr v1, v2

    .line 2065
    const/4 v2, 0x0

    .line 2067
    .local v2, "ok":Z
    :try_start_0
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$9;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$fgetmDevicePolicyManager(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/app/admin/DevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 2072
    goto :goto_2

    .line 2068
    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v4

    .line 2071
    .local v4, "e":Ljava/lang/RuntimeException;
    :goto_1
    const-string v5, "PolicyManagement"

    const-string v6, "Failed to reset password"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2073
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :goto_2
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$9;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    if-eqz v2, :cond_2

    sget v5, Lcom/afwsamples/testdpc/R$string;->password_reset_success:I

    goto :goto_3

    :cond_2
    sget v5, Lcom/afwsamples/testdpc/R$string;->password_reset_failed:I

    :goto_3
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$mshowToast(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V

    .line 2074
    return-void
.end method
