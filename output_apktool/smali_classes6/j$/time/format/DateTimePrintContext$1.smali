.class Lj$/time/format/DateTimePrintContext$1;
.super Ljava/lang/Object;
.source "DateTimePrintContext.java"

# interfaces
.implements Lj$/time/temporal/TemporalAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/time/format/DateTimePrintContext;->adjust(Lj$/time/temporal/TemporalAccessor;Lj$/time/format/DateTimeFormatter;)Lj$/time/temporal/TemporalAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$effectiveChrono:Lj$/time/chrono/Chronology;

.field final synthetic val$effectiveDate:Lj$/time/chrono/ChronoLocalDate;

.field final synthetic val$effectiveZone:Lj$/time/ZoneId;

.field final synthetic val$temporal:Lj$/time/temporal/TemporalAccessor;


# direct methods
.method constructor <init>(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/TemporalAccessor;Lj$/time/chrono/Chronology;Lj$/time/ZoneId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lj$/time/format/DateTimePrintContext$1;->val$effectiveDate:Lj$/time/chrono/ChronoLocalDate;

    iput-object p2, p0, Lj$/time/format/DateTimePrintContext$1;->val$temporal:Lj$/time/temporal/TemporalAccessor;

    iput-object p3, p0, Lj$/time/format/DateTimePrintContext$1;->val$effectiveChrono:Lj$/time/chrono/Chronology;

    iput-object p4, p0, Lj$/time/format/DateTimePrintContext$1;->val$effectiveZone:Lj$/time/ZoneId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic get(Lj$/time/temporal/TemporalField;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/time/temporal/TemporalAccessor$-CC;->$default$get(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalField;)I

    move-result p1

    return p1
.end method

.method public getLong(Lj$/time/temporal/TemporalField;)J
    .locals 2
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 202
    iget-object v0, p0, Lj$/time/format/DateTimePrintContext$1;->val$effectiveDate:Lj$/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lj$/time/temporal/TemporalField;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lj$/time/format/DateTimePrintContext$1;->val$effectiveDate:Lj$/time/chrono/ChronoLocalDate;

    invoke-interface {v0, p1}, Lj$/time/chrono/ChronoLocalDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    .line 205
    :cond_0
    iget-object v0, p0, Lj$/time/format/DateTimePrintContext$1;->val$temporal:Lj$/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Lj$/time/temporal/TemporalAccessor;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isSupported(Lj$/time/temporal/TemporalField;)Z
    .locals 1
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 188
    iget-object v0, p0, Lj$/time/format/DateTimePrintContext$1;->val$effectiveDate:Lj$/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lj$/time/temporal/TemporalField;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lj$/time/format/DateTimePrintContext$1;->val$effectiveDate:Lj$/time/chrono/ChronoLocalDate;

    invoke-interface {v0, p1}, Lj$/time/chrono/ChronoLocalDate;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v0

    return v0

    .line 191
    :cond_0
    iget-object v0, p0, Lj$/time/format/DateTimePrintContext$1;->val$temporal:Lj$/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v0

    return v0
.end method

.method public query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/time/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 210
    .local p1, "query":Lj$/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->chronology()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 211
    iget-object v0, p0, Lj$/time/format/DateTimePrintContext$1;->val$effectiveChrono:Lj$/time/chrono/Chronology;

    return-object v0

    .line 213
    :cond_0
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zoneId()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 214
    iget-object v0, p0, Lj$/time/format/DateTimePrintContext$1;->val$effectiveZone:Lj$/time/ZoneId;

    return-object v0

    .line 216
    :cond_1
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->precision()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 217
    iget-object v0, p0, Lj$/time/format/DateTimePrintContext$1;->val$temporal:Lj$/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 219
    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalQuery;->queryFrom(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .locals 1
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 195
    iget-object v0, p0, Lj$/time/format/DateTimePrintContext$1;->val$effectiveDate:Lj$/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lj$/time/temporal/TemporalField;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lj$/time/format/DateTimePrintContext$1;->val$effectiveDate:Lj$/time/chrono/ChronoLocalDate;

    invoke-interface {v0, p1}, Lj$/time/chrono/ChronoLocalDate;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 198
    :cond_0
    iget-object v0, p0, Lj$/time/format/DateTimePrintContext$1;->val$temporal:Lj$/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Lj$/time/temporal/TemporalAccessor;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 224
    iget-object v0, p0, Lj$/time/format/DateTimePrintContext$1;->val$temporal:Lj$/time/temporal/TemporalAccessor;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lj$/time/format/DateTimePrintContext$1;->val$effectiveChrono:Lj$/time/chrono/Chronology;

    const-string v2, ""

    if-eqz v1, :cond_0

    iget-object v1, p0, Lj$/time/format/DateTimePrintContext$1;->val$effectiveChrono:Lj$/time/chrono/Chronology;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " with chronology "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 226
    :goto_0
    iget-object v3, p0, Lj$/time/format/DateTimePrintContext$1;->val$effectiveZone:Lj$/time/ZoneId;

    if-eqz v3, :cond_1

    iget-object v2, p0, Lj$/time/format/DateTimePrintContext$1;->val$effectiveZone:Lj$/time/ZoneId;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " with zone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    return-object v0
.end method
