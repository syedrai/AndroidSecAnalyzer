.class Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment$1;
.super Ljava/lang/Object;
.source "ProfilePolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->showDisabledAppWidgetList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;

.field final synthetic val$disabledCrossProfileWidgetProvidersList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$disabledCrossProfileWidgetProvidersList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 324
    iput-object p2, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment$1;->val$disabledCrossProfileWidgetProvidersList:Ljava/util/List;

    iput-object p1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment$1;->this$0:Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;

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

    .line 327
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment$1;->val$disabledCrossProfileWidgetProvidersList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 328
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment$1;->this$0:Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->-$$Nest$fgetmDevicePolicyManager(Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment$1;->this$0:Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;

    invoke-static {v2}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->-$$Nest$fgetmAdminComponentName(Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 329
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment$1;->this$0:Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;

    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment$1;->this$0:Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;

    sget v3, Lcom/afwsamples/testdpc/R$string;->cross_profile_widget_enable:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->-$$Nest$mshowToast(Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;Ljava/lang/String;)V

    .line 330
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 331
    return-void
.end method
