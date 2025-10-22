.class public final synthetic Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public synthetic f$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;

.field public synthetic f$1:I

.field public synthetic f$2:Ljava/lang/String;

.field public synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30$$ExternalSyntheticLambda0;->f$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;

    iput p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30$$ExternalSyntheticLambda0;->f$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;

    iget v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30$$ExternalSyntheticLambda0;->f$3:I

    check-cast p1, [Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;->$r8$lambda$0p8Dh7DAQoRfF_QehjUe10yAO8c(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;ILjava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
