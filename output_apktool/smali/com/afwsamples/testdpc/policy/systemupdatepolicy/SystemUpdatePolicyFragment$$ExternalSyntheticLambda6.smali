.class public final synthetic Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$DatePickResult;


# instance fields
.field public synthetic f$0:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;

.field public synthetic f$1:Lj$/time/LocalDate;


# direct methods
.method public synthetic constructor <init>(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;Lj$/time/LocalDate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$ExternalSyntheticLambda6;->f$0:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$ExternalSyntheticLambda6;->f$1:Lj$/time/LocalDate;

    return-void
.end method


# virtual methods
.method public final onResult(Lj$/time/LocalDate;)V
    .locals 2

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$ExternalSyntheticLambda6;->f$0:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$ExternalSyntheticLambda6;->f$1:Lj$/time/LocalDate;

    invoke-static {v0, v1, p1}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->lambda$promptToSetFreezePeriod$1(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;Lj$/time/LocalDate;Lj$/time/LocalDate;)V

    return-void
.end method
