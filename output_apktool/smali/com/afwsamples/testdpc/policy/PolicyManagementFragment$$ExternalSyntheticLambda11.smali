.class public final synthetic Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;


# instance fields
.field public synthetic f$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field public synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda11;->f$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onApplicationUserDataCleared(Ljava/lang/String;Z)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda11;->f$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->$r8$lambda$kh5Z1SrKenk10JYk4YGSrndyn2s(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
