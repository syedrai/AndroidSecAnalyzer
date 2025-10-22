.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showWipeDataPrompt(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$externalStorageCheckBox:Landroid/widget/CheckBox;

.field final synthetic val$resetProtectionCheckBox:Landroid/widget/CheckBox;

.field final synthetic val$wipeDevice:Z


# direct methods
.method public static synthetic $r8$lambda$0SSi1qRd_Ock9EHHUFhSSqtROfc(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->lambda$onClick$4(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3gLt2Cu5Xvc2dqfeUbP1btjgct8(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->lambda$onClick$2(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5MM-b74PQEFZQXC__nvHJOdNsbU(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->lambda$onClick$1(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RKw3JG9rVB1sF6Rkmv_kpVQJIrU(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->lambda$onClick$6(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X8Zc5omvU-grXx4skvP9Q8BL1nc(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->lambda$onClick$0(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hXTr1C_PBXmX50XwNDVLzhYaYGE(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->lambda$onClick$7(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pBYtdPWtWt_zvF7Yna_orD23jUw(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->lambda$onClick$5(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sP-XTHJ-5WuI3rfaLRbrGYcHFKs(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->lambda$onClick$3(Ljava/lang/Exception;)V

    return-void
.end method

.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Z)V
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
            "val$externalStorageCheckBox",
            "val$resetProtectionCheckBox",
            "val$wipeDevice"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2105
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->val$externalStorageCheckBox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->val$resetProtectionCheckBox:Landroid/widget/CheckBox;

    iput-boolean p4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->val$wipeDevice:Z

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0(Ljava/lang/Void;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Void;

    .line 2121
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const-string/jumbo v1, "wipeData"

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$000(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onClick$1(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 2121
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const-string/jumbo v1, "wipeData"

    invoke-static {v0, v1, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$100(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$onClick$2(Ljava/lang/Void;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Void;

    .line 2127
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const-string/jumbo v1, "wipeData"

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$200(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onClick$3(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 2128
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const-string/jumbo v1, "wipeData"

    invoke-static {v0, v1, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$300(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$onClick$4(Ljava/lang/Void;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Void;

    .line 2132
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const-string/jumbo v1, "wipeData"

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$400(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onClick$5(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 2132
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const-string/jumbo v1, "wipeData"

    invoke-static {v0, v1, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$500(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$onClick$6(Ljava/lang/Void;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Void;

    .line 2137
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const-string/jumbo v1, "wipeData"

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$600(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onClick$7(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 2137
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const-string/jumbo v1, "wipeData"

    invoke-static {v0, v1, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$700(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;Ljava/lang/Exception;)V

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

    .line 2108
    const/4 v0, 0x0

    .line 2109
    .local v0, "flags":I
    nop

    .line 2110
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->val$externalStorageCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2111
    const/4 v1, 0x1

    goto :goto_0

    .line 2112
    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    .line 2113
    nop

    .line 2114
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->val$resetProtectionCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2115
    const/4 v1, 0x2

    goto :goto_1

    .line 2116
    :cond_1
    const/4 v1, 0x0

    :goto_1
    or-int/2addr v0, v1

    .line 2117
    iget-boolean v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->val$wipeDevice:Z

    if-eqz v1, :cond_4

    .line 2118
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v1, v3, :cond_2

    .line 2120
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$fgetmDevicePolicyManagerGateway(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v1

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10$$ExternalSyntheticLambda0;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;)V

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10$$ExternalSyntheticLambda1;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->wipeDevice(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    goto :goto_2

    .line 2122
    :cond_2
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$fgetmIsOrganizationOwnedProfileOwner(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2124
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->forParentProfile(Landroid/content/Context;)Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    move-result-object v1

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10$$ExternalSyntheticLambda2;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;)V

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10$$ExternalSyntheticLambda3;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;)V

    .line 2125
    invoke-virtual {v1, v2, v3, v4}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->wipeData(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    goto :goto_2

    .line 2131
    :cond_3
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$fgetmDevicePolicyManagerGateway(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v1

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10$$ExternalSyntheticLambda4;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;)V

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10$$ExternalSyntheticLambda5;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->wipeData(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    goto :goto_2

    .line 2136
    :cond_4
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->-$$Nest$fgetmDevicePolicyManagerGateway(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v1

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10$$ExternalSyntheticLambda6;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;)V

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10$$ExternalSyntheticLambda7;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->wipeData(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 2139
    :goto_2
    return-void
.end method
