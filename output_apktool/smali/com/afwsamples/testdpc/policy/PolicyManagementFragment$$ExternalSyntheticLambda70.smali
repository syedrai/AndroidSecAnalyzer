.class public final synthetic Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda70;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field public synthetic f$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field public synthetic f$1:Landroid/accounts/Account;


# direct methods
.method public synthetic constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/accounts/Account;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda70;->f$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda70;->f$1:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public final run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda70;->f$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda70;->f$1:Landroid/accounts/Account;

    invoke-static {v0, v1, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->$r8$lambda$7uls_Kb_evpsxbO8pGOx7adXJxI(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/accounts/Account;Landroid/accounts/AccountManagerFuture;)V

    return-void
.end method
