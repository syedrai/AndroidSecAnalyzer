.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSuspendAppsPrompt(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$failureResId:I

.field final synthetic val$forUnsuspending:Z

.field final synthetic val$showApps:Ljava/util/List;

.field final synthetic val$successResId:I


# direct methods
.method public static synthetic $r8$lambda$0p8Dh7DAQoRfF_QehjUe10yAO8c(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;ILjava/lang/String;I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;->lambda$onClick$0(ILjava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H9hhSJQhXt_8HEG5yjHuqMvUdlc(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;->lambda$onClick$1(ILjava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

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
            "val$forUnsuspending",
            "val$successResId",
            "val$failureResId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3791
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;->val$showApps:Ljava/util/List;

    iput-boolean p3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;->val$forUnsuspending:Z

    iput p4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;->val$successResId:I

    iput p5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;->val$failureResId:I

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0(ILjava/lang/String;I[Ljava/lang/String;)V
    .locals 4
    .param p1, "successResId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "failureResId"    # I
    .param p4, "failed"    # [Ljava/lang/String;

    .line 3799
    array-length v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "setPackagesSuspended"

    if-nez v0, :cond_0

    .line 3800
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-static {v0, v3, p1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$monSuccessShowToast(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 3802
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-static {v0, v3, p3, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$monErrorShowToast(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 3804
    :goto_0
    return-void
.end method

.method private synthetic lambda$onClick$1(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "failureResId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 3806
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v2, "setPackagesSuspended"

    invoke-static {v0, v2, p3, p1, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$monErrorShowToast(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;Ljava/lang/Exception;I[Ljava/lang/Object;)V

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

    .line 3794
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;->val$showApps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3795
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$fgetmDevicePolicyManagerGateway(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget-boolean v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;->val$forUnsuspending:Z

    xor-int/2addr v2, v4

    iget v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;->val$successResId:I

    iget v5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;->val$failureResId:I

    new-instance v6, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v4, v0, v5}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30$$ExternalSyntheticLambda0;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;ILjava/lang/String;I)V

    iget v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;->val$failureResId:I

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v4, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30$$ExternalSyntheticLambda1;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;ILjava/lang/String;)V

    invoke-interface {v1, v3, v2, v6, v5}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setPackagesSuspended([Ljava/lang/String;ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 3807
    return-void
.end method
