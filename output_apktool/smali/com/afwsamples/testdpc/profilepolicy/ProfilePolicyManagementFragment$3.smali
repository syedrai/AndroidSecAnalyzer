.class Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment$3;
.super Ljava/lang/Object;
.source "ProfilePolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->showManagedSubscriptionsPolicyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;

.field final synthetic val$permissionGroup:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;Landroid/widget/RadioGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;
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

    .line 412
    iput-object p2, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment$3;->val$permissionGroup:Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment$3;->this$0:Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;

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

    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, "policy":Landroid/app/admin/ManagedSubscriptionsPolicy;
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment$3;->val$permissionGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    .line 417
    .local v1, "checked":I
    sget v2, Lcom/afwsamples/testdpc/R$id;->personal_subscriptions:I

    if-ne v1, v2, :cond_0

    .line 418
    new-instance v2, Landroid/app/admin/ManagedSubscriptionsPolicy;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/app/admin/ManagedSubscriptionsPolicy;-><init>(I)V

    move-object v0, v2

    goto :goto_0

    .line 420
    :cond_0
    sget v2, Lcom/afwsamples/testdpc/R$id;->work_subscriptions:I

    if-ne v1, v2, :cond_1

    .line 421
    new-instance v2, Landroid/app/admin/ManagedSubscriptionsPolicy;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/app/admin/ManagedSubscriptionsPolicy;-><init>(I)V

    move-object v0, v2

    .line 424
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment$3;->this$0:Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;

    invoke-static {v2}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->-$$Nest$fgetmDevicePolicyManager(Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->setManagedSubscriptionsPolicy(Landroid/app/admin/ManagedSubscriptionsPolicy;)V

    .line 425
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 426
    return-void
.end method
