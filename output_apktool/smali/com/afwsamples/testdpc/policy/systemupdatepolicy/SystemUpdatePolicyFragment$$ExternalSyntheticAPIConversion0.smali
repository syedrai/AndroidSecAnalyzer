.class public final synthetic Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$ExternalSyntheticAPIConversion0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic m(Landroid/app/admin/FreezePeriod;)Lj$/time/MonthDay;
    .locals 0

    invoke-virtual {p0}, Landroid/app/admin/FreezePeriod;->getStart()Ljava/time/MonthDay;

    move-result-object p0

    invoke-static {p0}, Lj$/time/TimeConversions;->convert(Ljava/time/MonthDay;)Lj$/time/MonthDay;

    move-result-object p0

    return-object p0
.end method
