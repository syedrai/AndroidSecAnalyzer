.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$20;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showConfigurePolicyAndManageCredentialsPrompt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$editText:Landroid/widget/EditText;


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
            "val$editText"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3062
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$20;->val$editText:Landroid/widget/EditText;

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$20;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

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

    .line 3065
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$20;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3066
    .local v0, "policy":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "com.android.chrome#client.badssl.com:443#testAlias\ncom.android.chrome#prod.idrix.eu/secure#testAlias\nde.blinkt.openvpn#192.168.0.1#vpnAlias"

    .line 3068
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$20;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v1, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$mrequestToManageCredentials(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V

    .line 3069
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$20;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .line 3070
    invoke-virtual {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 3071
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "appUriPolicy"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3072
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3074
    nop

    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3075
    nop

    .line 3076
    return-void

    .line 3074
    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3075
    throw v1
.end method
