.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$26$1;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$26;->alias(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$26;

.field final synthetic val$removed:Z


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$26;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$26;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$removed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3358
    iput-boolean p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$26$1;->val$removed:Z

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$26$1;->this$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3361
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$26$1;->val$removed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3362
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$26$1;->this$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$26;

    iget-object v0, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$26;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    sget v2, Lcom/afwsamples/testdpc/R$string;->remove_keypair_successfully:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$mshowToast(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 3364
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$26$1;->this$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$26;

    iget-object v0, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$26;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    sget v2, Lcom/afwsamples/testdpc/R$string;->remove_keypair_fail:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$mshowToast(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V

    .line 3366
    :goto_0
    return-void
.end method
