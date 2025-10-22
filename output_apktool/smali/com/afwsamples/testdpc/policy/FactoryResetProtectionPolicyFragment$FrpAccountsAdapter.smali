.class Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FactoryResetProtectionPolicyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrpAccountsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;


# direct methods
.method public static synthetic $r8$lambda$IYXBoO6SDvUJkqAyZP0ehLED4QA(Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;->lambda$getView$0(ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;->this$0:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;

    .line 126
    invoke-virtual {p1}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->factory_reset_protection_policy_account:I

    invoke-static {p1}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->-$$Nest$fgetmAccounts(Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 127
    return-void
.end method

.method private synthetic lambda$getView$0(ILandroid/view/View;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 143
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;->this$0:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->-$$Nest$fgetmAccounts(Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 144
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;->notifyDataSetChanged()V

    .line 145
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "view",
            "parent"
        }
    .end annotation

    .line 131
    if-nez p2, :cond_0

    .line 132
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;->this$0:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;

    .line 133
    invoke-virtual {v0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->factory_reset_protection_policy_account:I

    .line 135
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 137
    :cond_0
    sget v0, Lcom/afwsamples/testdpc/R$id;->frp_account:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 138
    .local v0, "listItemText":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;->this$0:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->-$$Nest$fgetmAccounts(Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    sget v1, Lcom/afwsamples/testdpc/R$id;->remove_account_button:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 141
    .local v1, "removeAccountButton":Landroid/widget/Button;
    new-instance v2, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-object p2
.end method
