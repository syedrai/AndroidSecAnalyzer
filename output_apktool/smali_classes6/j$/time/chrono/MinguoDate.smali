.class public final Lj$/time/chrono/MinguoDate;
.super Lj$/time/chrono/ChronoLocalDateImpl;
.source "MinguoDate.java"

# interfaces
.implements Lj$/time/chrono/ChronoLocalDate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/time/chrono/ChronoLocalDateImpl<",
        "Lj$/time/chrono/MinguoDate;",
        ">;",
        "Lj$/time/chrono/ChronoLocalDate;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x120bd9be64a3de1eL


# instance fields
.field private final transient isoDate:Lj$/time/LocalDate;


# direct methods
.method constructor <init>(Lj$/time/LocalDate;)V
    .locals 1
    .param p1, "isoDate"    # Lj$/time/LocalDate;

    .line 212
    invoke-direct {p0}, Lj$/time/chrono/ChronoLocalDateImpl;-><init>()V

    .line 213
    const-string v0, "isoDate"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    iput-object p1, p0, Lj$/time/chrono/MinguoDate;->isoDate:Lj$/time/LocalDate;

    .line 215
    return-void
.end method

.method public static from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/MinguoDate;
    .locals 1
    .param p0, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 203
    sget-object v0, Lj$/time/chrono/MinguoChronology;->INSTANCE:Lj$/time/chrono/MinguoChronology;

    invoke-virtual {v0, p0}, Lj$/time/chrono/MinguoChronology;->date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method private getProlepticMonth()J
    .locals 4

    .line 302
    invoke-direct {p0}, Lj$/time/chrono/MinguoDate;->getProlepticYear()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget-object v2, p0, Lj$/time/chrono/MinguoDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v2}, Lj$/time/LocalDate;->getMonthValue()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getProlepticYear()I
    .locals 1

    .line 306
    iget-object v0, p0, Lj$/time/chrono/MinguoDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, -0x777

    return v0
.end method

.method public static now()Lj$/time/chrono/MinguoDate;
    .locals 1

    .line 133
    invoke-static {}, Lj$/time/Clock;->systemDefaultZone()Lj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Lj$/time/chrono/MinguoDate;->now(Lj$/time/Clock;)Lj$/time/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lj$/time/Clock;)Lj$/time/chrono/MinguoDate;
    .locals 2
    .param p0, "clock"    # Lj$/time/Clock;

    .line 164
    new-instance v0, Lj$/time/chrono/MinguoDate;

    invoke-static {p0}, Lj$/time/LocalDate;->now(Lj$/time/Clock;)Lj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/chrono/MinguoDate;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public static now(Lj$/time/ZoneId;)Lj$/time/chrono/MinguoDate;
    .locals 1
    .param p0, "zone"    # Lj$/time/ZoneId;

    .line 149
    invoke-static {p0}, Lj$/time/Clock;->system(Lj$/time/ZoneId;)Lj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Lj$/time/chrono/MinguoDate;->now(Lj$/time/Clock;)Lj$/time/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public static of(III)Lj$/time/chrono/MinguoDate;
    .locals 2
    .param p0, "prolepticYear"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .line 182
    new-instance v0, Lj$/time/chrono/MinguoDate;

    add-int/lit16 v1, p0, 0x777

    invoke-static {v1, p1, p2}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/chrono/MinguoDate;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Lj$/time/chrono/MinguoDate;
    .locals 4
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 514
    .local v0, "year":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 515
    .local v1, "month":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    .line 516
    .local v2, "dayOfMonth":I
    sget-object v3, Lj$/time/chrono/MinguoChronology;->INSTANCE:Lj$/time/chrono/MinguoChronology;

    invoke-virtual {v3, v0, v1, v2}, Lj$/time/chrono/MinguoChronology;->date(III)Lj$/time/chrono/MinguoDate;

    move-result-object v3

    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 485
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private with(Lj$/time/LocalDate;)Lj$/time/chrono/MinguoDate;
    .locals 1
    .param p1, "newDate"    # Lj$/time/LocalDate;

    .line 422
    iget-object v0, p0, Lj$/time/chrono/MinguoDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {p1, v0}, Lj$/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/time/chrono/MinguoDate;

    invoke-direct {v0, p1}, Lj$/time/chrono/MinguoDate;-><init>(Lj$/time/LocalDate;)V

    :goto_0
    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 502
    new-instance v0, Lj$/time/chrono/Ser;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final atTime(Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTime;
    .locals 1
    .param p1, "localTime"    # Lj$/time/LocalTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/LocalTime;",
            ")",
            "Lj$/time/chrono/ChronoLocalDateTime<",
            "Lj$/time/chrono/MinguoDate;",
            ">;"
        }
    .end annotation

    .line 428
    invoke-super {p0, p1}, Lj$/time/chrono/ChronoLocalDateImpl;->atTime(Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 457
    if-ne p0, p1, :cond_0

    .line 458
    const/4 v0, 0x1

    return v0

    .line 460
    :cond_0
    instance-of v0, p1, Lj$/time/chrono/MinguoDate;

    if-eqz v0, :cond_1

    .line 461
    move-object v0, p1

    check-cast v0, Lj$/time/chrono/MinguoDate;

    .line 462
    .local v0, "otherDate":Lj$/time/chrono/MinguoDate;
    iget-object v1, p0, Lj$/time/chrono/MinguoDate;->isoDate:Lj$/time/LocalDate;

    iget-object v2, v0, Lj$/time/chrono/MinguoDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v1, v2}, Lj$/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 464
    .end local v0    # "otherDate":Lj$/time/chrono/MinguoDate;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getChronology()Lj$/time/chrono/Chronology;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lj$/time/chrono/MinguoDate;->getChronology()Lj$/time/chrono/MinguoChronology;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Lj$/time/chrono/MinguoChronology;
    .locals 1

    .line 228
    sget-object v0, Lj$/time/chrono/MinguoChronology;->INSTANCE:Lj$/time/chrono/MinguoChronology;

    return-object v0
.end method

.method public bridge synthetic getEra()Lj$/time/chrono/Era;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lj$/time/chrono/MinguoDate;->getEra()Lj$/time/chrono/MinguoEra;

    move-result-object v0

    return-object v0
.end method

.method public getEra()Lj$/time/chrono/MinguoEra;
    .locals 2

    .line 241
    invoke-direct {p0}, Lj$/time/chrono/MinguoDate;->getProlepticYear()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sget-object v0, Lj$/time/chrono/MinguoEra;->ROC:Lj$/time/chrono/MinguoEra;

    goto :goto_0

    :cond_0
    sget-object v0, Lj$/time/chrono/MinguoEra;->BEFORE_ROC:Lj$/time/chrono/MinguoEra;

    :goto_0
    return-object v0
.end method

.method public getLong(Lj$/time/temporal/TemporalField;)J
    .locals 3
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 283
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 284
    sget-object v0, Lj$/time/chrono/MinguoDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 296
    iget-object v0, p0, Lj$/time/chrono/MinguoDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    .line 294
    :pswitch_0
    invoke-direct {p0}, Lj$/time/chrono/MinguoDate;->getProlepticYear()I

    move-result v0

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    int-to-long v0, v1

    return-wide v0

    .line 292
    :pswitch_1
    invoke-direct {p0}, Lj$/time/chrono/MinguoDate;->getProlepticYear()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 286
    :pswitch_2
    invoke-direct {p0}, Lj$/time/chrono/MinguoDate;->getProlepticMonth()J

    move-result-wide v0

    return-wide v0

    .line 288
    :pswitch_3
    invoke-direct {p0}, Lj$/time/chrono/MinguoDate;->getProlepticYear()I

    move-result v0

    .line 289
    .local v0, "prolepticYear":I
    if-lt v0, v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    rsub-int/lit8 v1, v0, 0x1

    :goto_1
    int-to-long v1, v1

    return-wide v1

    .line 298
    .end local v0    # "prolepticYear":I
    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->getFrom(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hashCode()I
    .locals 2

    .line 474
    invoke-virtual {p0}, Lj$/time/chrono/MinguoDate;->getChronology()Lj$/time/chrono/MinguoChronology;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/chrono/MinguoChronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/chrono/MinguoDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v1}, Lj$/time/LocalDate;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public lengthOfMonth()I
    .locals 1

    .line 254
    iget-object v0, p0, Lj$/time/chrono/MinguoDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->lengthOfMonth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 106
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/MinguoDate;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lj$/time/chrono/MinguoDate;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/MinguoDate;
    .locals 1
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 398
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDateImpl;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/MinguoDate;

    return-object v0
.end method

.method public minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/MinguoDate;
    .locals 1
    .param p1, "amount"    # Lj$/time/temporal/TemporalAmount;

    .line 367
    invoke-super {p0, p1}, Lj$/time/chrono/ChronoLocalDateImpl;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/MinguoDate;

    return-object v0
.end method

.method public bridge synthetic minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 106
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/MinguoDate;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lj$/time/chrono/MinguoDate;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic minusDays(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 106
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/MinguoDate;->minusDays(J)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method minusDays(J)Lj$/time/chrono/MinguoDate;
    .locals 1
    .param p1, "daysToSubtract"    # J

    .line 418
    invoke-super {p0, p1, p2}, Lj$/time/chrono/ChronoLocalDateImpl;->minusDays(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/MinguoDate;

    return-object v0
.end method

.method bridge synthetic minusMonths(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 106
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/MinguoDate;->minusMonths(J)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method minusMonths(J)Lj$/time/chrono/MinguoDate;
    .locals 1
    .param p1, "monthsToSubtract"    # J

    .line 408
    invoke-super {p0, p1, p2}, Lj$/time/chrono/ChronoLocalDateImpl;->minusMonths(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/MinguoDate;

    return-object v0
.end method

.method bridge synthetic minusWeeks(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 106
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/MinguoDate;->minusWeeks(J)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method minusWeeks(J)Lj$/time/chrono/MinguoDate;
    .locals 1
    .param p1, "weeksToSubtract"    # J

    .line 413
    invoke-super {p0, p1, p2}, Lj$/time/chrono/ChronoLocalDateImpl;->minusWeeks(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/MinguoDate;

    return-object v0
.end method

.method bridge synthetic minusYears(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 106
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/MinguoDate;->minusYears(J)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method minusYears(J)Lj$/time/chrono/MinguoDate;
    .locals 1
    .param p1, "yearsToSubtract"    # J

    .line 403
    invoke-super {p0, p1, p2}, Lj$/time/chrono/ChronoLocalDateImpl;->minusYears(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/MinguoDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 106
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/MinguoDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lj$/time/chrono/MinguoDate;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/MinguoDate;
    .locals 1
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 393
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDateImpl;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/MinguoDate;

    return-object v0
.end method

.method public plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/MinguoDate;
    .locals 1
    .param p1, "amount"    # Lj$/time/temporal/TemporalAmount;

    .line 357
    invoke-super {p0, p1}, Lj$/time/chrono/ChronoLocalDateImpl;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/MinguoDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 106
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/MinguoDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lj$/time/chrono/MinguoDate;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic plusDays(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 106
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/MinguoDate;->plusDays(J)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method plusDays(J)Lj$/time/chrono/MinguoDate;
    .locals 1
    .param p1, "days"    # J

    .line 388
    iget-object v0, p0, Lj$/time/chrono/MinguoDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/chrono/MinguoDate;->with(Lj$/time/LocalDate;)Lj$/time/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusMonths(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 106
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/MinguoDate;->plusMonths(J)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method plusMonths(J)Lj$/time/chrono/MinguoDate;
    .locals 1
    .param p1, "months"    # J

    .line 378
    iget-object v0, p0, Lj$/time/chrono/MinguoDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->plusMonths(J)Lj$/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/chrono/MinguoDate;->with(Lj$/time/LocalDate;)Lj$/time/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusWeeks(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 106
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/MinguoDate;->plusWeeks(J)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method plusWeeks(J)Lj$/time/chrono/MinguoDate;
    .locals 1
    .param p1, "weeksToAdd"    # J

    .line 383
    invoke-super {p0, p1, p2}, Lj$/time/chrono/ChronoLocalDateImpl;->plusWeeks(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/MinguoDate;

    return-object v0
.end method

.method bridge synthetic plusYears(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 106
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/MinguoDate;->plusYears(J)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method plusYears(J)Lj$/time/chrono/MinguoDate;
    .locals 1
    .param p1, "years"    # J

    .line 373
    iget-object v0, p0, Lj$/time/chrono/MinguoDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->plusYears(J)Lj$/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/chrono/MinguoDate;->with(Lj$/time/LocalDate;)Lj$/time/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .locals 9
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 260
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 261
    invoke-virtual {p0, p1}, Lj$/time/chrono/MinguoDate;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    .line 263
    .local v0, "f":Lj$/time/temporal/ChronoField;
    sget-object v1, Lj$/time/chrono/MinguoDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 274
    invoke-virtual {p0}, Lj$/time/chrono/MinguoDate;->getChronology()Lj$/time/chrono/MinguoChronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj$/time/chrono/MinguoChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 269
    :pswitch_0
    sget-object v1, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v1

    .line 270
    .local v1, "range":Lj$/time/temporal/ValueRange;
    invoke-direct {p0}, Lj$/time/chrono/MinguoDate;->getProlepticYear()I

    move-result v2

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x777

    if-gtz v2, :cond_0

    invoke-virtual {v1}, Lj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v7

    neg-long v7, v7

    add-long/2addr v7, v3

    add-long/2addr v7, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 271
    .local v7, "max":J
    :goto_0
    invoke-static {v3, v4, v7, v8}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 267
    .end local v1    # "range":Lj$/time/temporal/ValueRange;
    .end local v7    # "max":J
    :pswitch_1
    iget-object v1, p0, Lj$/time/chrono/MinguoDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v1, p1}, Lj$/time/LocalDate;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 276
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    :cond_1
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->rangeRefinedBy(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toEpochDay()J
    .locals 2

    .line 439
    iget-object v0, p0, Lj$/time/chrono/MinguoDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 106
    invoke-super {p0}, Lj$/time/chrono/ChronoLocalDateImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J
    .locals 0

    .line 106
    invoke-super {p0, p1, p2}, Lj$/time/chrono/ChronoLocalDateImpl;->until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide p1

    return-wide p1
.end method

.method public until(Lj$/time/chrono/ChronoLocalDate;)Lj$/time/chrono/ChronoPeriod;
    .locals 5
    .param p1, "endDate"    # Lj$/time/chrono/ChronoLocalDate;

    .line 433
    iget-object v0, p0, Lj$/time/chrono/MinguoDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->until(Lj$/time/chrono/ChronoLocalDate;)Lj$/time/Period;

    move-result-object v0

    .line 434
    .local v0, "period":Lj$/time/Period;
    invoke-virtual {p0}, Lj$/time/chrono/MinguoDate;->getChronology()Lj$/time/chrono/MinguoChronology;

    move-result-object v1

    invoke-virtual {v0}, Lj$/time/Period;->getYears()I

    move-result v2

    invoke-virtual {v0}, Lj$/time/Period;->getMonths()I

    move-result v3

    invoke-virtual {v0}, Lj$/time/Period;->getDays()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lj$/time/chrono/MinguoChronology;->period(III)Lj$/time/chrono/ChronoPeriod;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lj$/time/chrono/MinguoDate;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 106
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/MinguoDate;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/MinguoDate;
    .locals 1
    .param p1, "adjuster"    # Lj$/time/temporal/TemporalAdjuster;

    .line 347
    invoke-super {p0, p1}, Lj$/time/chrono/ChronoLocalDateImpl;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/MinguoDate;

    return-object v0
.end method

.method public with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/MinguoDate;
    .locals 5
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 312
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 313
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    .line 314
    .local v0, "f":Lj$/time/temporal/ChronoField;
    invoke-virtual {p0, v0}, Lj$/time/chrono/MinguoDate;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-nez v3, :cond_0

    .line 315
    return-object p0

    .line 317
    :cond_0
    sget-object v1, Lj$/time/chrono/MinguoDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 319
    :pswitch_0
    invoke-virtual {p0}, Lj$/time/chrono/MinguoDate;->getChronology()Lj$/time/chrono/MinguoChronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj$/time/chrono/MinguoChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Lj$/time/temporal/ValueRange;->checkValidValue(JLj$/time/temporal/TemporalField;)J

    .line 320
    invoke-direct {p0}, Lj$/time/chrono/MinguoDate;->getProlepticMonth()J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Lj$/time/chrono/MinguoDate;->plusMonths(J)Lj$/time/chrono/MinguoDate;

    move-result-object v1

    return-object v1

    .line 324
    :pswitch_1
    invoke-virtual {p0}, Lj$/time/chrono/MinguoDate;->getChronology()Lj$/time/chrono/MinguoChronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj$/time/chrono/MinguoChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v1

    .line 325
    .local v1, "nvalue":I
    sget-object v2, Lj$/time/chrono/MinguoDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_1

    :pswitch_2
    goto :goto_1

    .line 331
    :pswitch_3
    iget-object v2, p0, Lj$/time/chrono/MinguoDate;->isoDate:Lj$/time/LocalDate;

    invoke-direct {p0}, Lj$/time/chrono/MinguoDate;->getProlepticYear()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit16 v3, v3, 0x777

    invoke-virtual {v2, v3}, Lj$/time/LocalDate;->withYear(I)Lj$/time/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Lj$/time/chrono/MinguoDate;->with(Lj$/time/LocalDate;)Lj$/time/chrono/MinguoDate;

    move-result-object v2

    return-object v2

    .line 329
    :pswitch_4
    iget-object v2, p0, Lj$/time/chrono/MinguoDate;->isoDate:Lj$/time/LocalDate;

    add-int/lit16 v3, v1, 0x777

    invoke-virtual {v2, v3}, Lj$/time/LocalDate;->withYear(I)Lj$/time/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Lj$/time/chrono/MinguoDate;->with(Lj$/time/LocalDate;)Lj$/time/chrono/MinguoDate;

    move-result-object v2

    return-object v2

    .line 327
    :pswitch_5
    iget-object v2, p0, Lj$/time/chrono/MinguoDate;->isoDate:Lj$/time/LocalDate;

    invoke-direct {p0}, Lj$/time/chrono/MinguoDate;->getProlepticYear()I

    move-result v4

    if-lt v4, v3, :cond_1

    add-int/lit16 v3, v1, 0x777

    goto :goto_0

    :cond_1
    rsub-int/lit8 v3, v1, 0x1

    add-int/lit16 v3, v3, 0x777

    :goto_0
    invoke-virtual {v2, v3}, Lj$/time/LocalDate;->withYear(I)Lj$/time/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Lj$/time/chrono/MinguoDate;->with(Lj$/time/LocalDate;)Lj$/time/chrono/MinguoDate;

    move-result-object v2

    return-object v2

    .line 335
    .end local v1    # "nvalue":I
    :goto_1
    iget-object v1, p0, Lj$/time/chrono/MinguoDate;->isoDate:Lj$/time/LocalDate;

    invoke-virtual {v1, p1, p2, p3}, Lj$/time/LocalDate;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/LocalDate;

    move-result-object v1

    invoke-direct {p0, v1}, Lj$/time/chrono/MinguoDate;->with(Lj$/time/LocalDate;)Lj$/time/chrono/MinguoDate;

    move-result-object v1

    return-object v1

    .line 337
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/ChronoLocalDateImpl;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/MinguoDate;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/temporal/Temporal;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lj$/time/chrono/MinguoDate;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;
    .locals 0

    .line 106
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/MinguoDate;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lj$/time/chrono/MinguoDate;->get(Lj$/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 508
    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lj$/time/chrono/MinguoDate;->get(Lj$/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 509
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lj$/time/chrono/MinguoDate;->get(Lj$/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 510
    return-void
.end method
