.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$15;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showRemoveUserPromptLegacy()V
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

    .line 2431
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$15;->val$input:Landroid/widget/EditText;

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$15;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
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

    .line 2434
    const-wide/16 v0, -0x1

    .line 2436
    .local v0, "serialNumber":J
    :try_start_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$15;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v0, v2

    .line 2437
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$15;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$15;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$fgetmDevicePolicyManagerGateway(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getUserHandle(J)Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$mremoveUser(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2440
    goto :goto_0

    .line 2438
    :catch_0
    move-exception v2

    .line 2441
    :goto_0
    return-void
.end method
