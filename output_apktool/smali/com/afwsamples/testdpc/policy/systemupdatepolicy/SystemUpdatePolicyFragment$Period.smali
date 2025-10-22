.class Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;
.super Ljava/lang/Object;
.source "SystemUpdatePolicyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Period"
.end annotation


# instance fields
.field mEnd:Lj$/time/MonthDay;

.field mStart:Lj$/time/MonthDay;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lj$/time/MonthDay;Lj$/time/MonthDay;)V
    .locals 0
    .param p1, "start"    # Lj$/time/MonthDay;
    .param p2, "end"    # Lj$/time/MonthDay;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->mStart:Lj$/time/MonthDay;

    .line 72
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->mEnd:Lj$/time/MonthDay;

    .line 73
    return-void
.end method


# virtual methods
.method public getEndDate()Lj$/time/LocalDate;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->mEnd:Lj$/time/MonthDay;

    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/LocalDate;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/time/MonthDay;->atYear(I)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public getStartDate()Lj$/time/LocalDate;
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->mStart:Lj$/time/MonthDay;

    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/LocalDate;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/time/MonthDay;->atYear(I)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public set(Lj$/time/LocalDate;Lj$/time/LocalDate;)V
    .locals 2
    .param p1, "startDate"    # Lj$/time/LocalDate;
    .param p2, "endDate"    # Lj$/time/LocalDate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startDate",
            "endDate"
        }
    .end annotation

    .line 76
    invoke-virtual {p1}, Lj$/time/LocalDate;->getMonth()Lj$/time/Month;

    move-result-object v0

    invoke-virtual {p1}, Lj$/time/LocalDate;->getDayOfMonth()I

    move-result v1

    invoke-static {v0, v1}, Lj$/time/MonthDay;->of(Lj$/time/Month;I)Lj$/time/MonthDay;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->mStart:Lj$/time/MonthDay;

    .line 77
    invoke-virtual {p2}, Lj$/time/LocalDate;->getMonth()Lj$/time/Month;

    move-result-object v0

    invoke-virtual {p2}, Lj$/time/LocalDate;->getDayOfMonth()I

    move-result v1

    invoke-static {v0, v1}, Lj$/time/MonthDay;->of(Lj$/time/Month;I)Lj$/time/MonthDay;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->mEnd:Lj$/time/MonthDay;

    .line 78
    return-void
.end method

.method public toFreezePeriod()Landroid/app/admin/FreezePeriod;
    .locals 3

    .line 109
    new-instance v0, Landroid/app/admin/FreezePeriod;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->mStart:Lj$/time/MonthDay;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->mEnd:Lj$/time/MonthDay;

    invoke-static {v2}, Lj$/time/TimeConversions;->convert(Lj$/time/MonthDay;)Ljava/time/MonthDay;

    move-result-object v2

    invoke-static {v1}, Lj$/time/TimeConversions;->convert(Lj$/time/MonthDay;)Ljava/time/MonthDay;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/app/admin/FreezePeriod;-><init>(Ljava/time/MonthDay;Ljava/time/MonthDay;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 83
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    .local v1, "stringBuffer":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->mStart:Lj$/time/MonthDay;

    .line 87
    invoke-virtual {v3}, Lj$/time/MonthDay;->getMonthValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->mStart:Lj$/time/MonthDay;

    invoke-virtual {v4}, Lj$/time/MonthDay;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Ljava/util/Date;-><init>(III)V

    new-instance v3, Ljava/text/FieldPosition;

    invoke-direct {v3, v5}, Ljava/text/FieldPosition;-><init>(I)V

    .line 86
    invoke-virtual {v0, v2, v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 90
    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->mEnd:Lj$/time/MonthDay;

    .line 93
    invoke-virtual {v3}, Lj$/time/MonthDay;->getMonthValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->mEnd:Lj$/time/MonthDay;

    invoke-virtual {v4}, Lj$/time/MonthDay;->getDayOfMonth()I

    move-result v4

    invoke-direct {v2, v5, v3, v4}, Ljava/util/Date;-><init>(III)V

    new-instance v3, Ljava/text/FieldPosition;

    invoke-direct {v3, v5}, Ljava/text/FieldPosition;-><init>(I)V

    .line 92
    invoke-virtual {v0, v2, v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    return-object v2
.end method
