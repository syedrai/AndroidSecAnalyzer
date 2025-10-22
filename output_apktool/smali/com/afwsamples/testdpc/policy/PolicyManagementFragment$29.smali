.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$29;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showHideAppsPrompt(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$failureResId:I

.field final synthetic val$showApps:Ljava/util/List;

.field final synthetic val$showHiddenApps:Z

.field final synthetic val$successResId:I


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/util/List;ZII)V
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
            "val$showApps",
            "val$showHiddenApps",
            "val$successResId",
            "val$failureResId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3684
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$29;->val$showApps:Ljava/util/List;

    iput-boolean p3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$29;->val$showHiddenApps:Z

    iput p4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$29;->val$successResId:I

    iput p5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$29;->val$failureResId:I

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$29;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "position"
        }
    .end annotation

    .line 3687
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$29;->val$showApps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3688
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$29;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$fgetmDevicePolicyManager(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$29;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$fgetmAdminComponentName(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/content/ComponentName;

    move-result-object v2

    iget-boolean v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$29;->val$showHiddenApps:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/admin/DevicePolicyManager;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3690
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$29;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iget v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$29;->val$successResId:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v1, v3, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$mshowToast(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 3692
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$29;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$29;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iget v5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$29;->val$failureResId:I

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {v3, v5, v6}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$mshowToast(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;I)V

    .line 3694
    :goto_0
    return-void
.end method
