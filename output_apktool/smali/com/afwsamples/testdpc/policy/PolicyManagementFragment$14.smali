.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showCreateAndManageUserPrompt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$leaveAllSystemAppsEnabled:Landroid/widget/CheckBox;

.field final synthetic val$makeUserEphemeralCheckBox:Landroid/widget/CheckBox;

.field final synthetic val$skipSetupWizardCheckBox:Landroid/widget/CheckBox;

.field final synthetic val$userNameEditText:Landroid/widget/EditText;


# direct methods
.method public static synthetic $r8$lambda$0859SUBJ0hIyb9NFEdRijNYWzO4(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->lambda$onClick$0(Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_-ogldjtUcjarbUYOBk8hH0NY-U(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->lambda$onClick$1(Ljava/lang/Exception;)V

    return-void
.end method

.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
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
            "val$userNameEditText",
            "val$skipSetupWizardCheckBox",
            "val$makeUserEphemeralCheckBox",
            "val$leaveAllSystemAppsEnabled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2385
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->val$userNameEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->val$skipSetupWizardCheckBox:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->val$makeUserEphemeralCheckBox:Landroid/widget/CheckBox;

    iput-object p5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->val$leaveAllSystemAppsEnabled:Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0(Landroid/os/UserHandle;)V
    .locals 5
    .param p1, "u"    # Landroid/os/UserHandle;

    .line 2405
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    sget v1, Lcom/afwsamples/testdpc/R$string;->user_created:I

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$fgetmUserManager(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$mshowToast(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onClick$1(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 2406
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    sget v1, Lcom/afwsamples/testdpc/R$string;->failed_to_create_user:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$mshowToast(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V

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

    .line 2388
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->val$userNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2389
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2390
    const/4 v1, 0x0

    .line 2391
    .local v1, "flags":I
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->val$skipSetupWizardCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2392
    or-int/lit8 v1, v1, 0x1

    .line 2394
    :cond_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->val$makeUserEphemeralCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2395
    or-int/lit8 v1, v1, 0x2

    .line 2397
    :cond_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->val$leaveAllSystemAppsEnabled:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2398
    or-int/lit8 v1, v1, 0x10

    .line 2401
    :cond_2
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$fgetmDevicePolicyManagerGateway(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14$$ExternalSyntheticLambda0;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;)V

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14$$ExternalSyntheticLambda1;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;)V

    invoke-interface {v2, v0, v1, v3, v4}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->createAndManageUser(Ljava/lang/String;ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 2408
    .end local v1    # "flags":I
    :cond_3
    return-void
.end method
