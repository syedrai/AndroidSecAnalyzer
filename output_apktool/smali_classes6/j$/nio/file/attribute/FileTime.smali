.class public final Lj$/nio/file/attribute/FileTime;
.super Ljava/lang/Object;
.source "FileTime.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lj$/nio/file/attribute/FileTime;",
        ">;"
    }
.end annotation


# static fields
.field private static final DAYS_PER_10000_YEARS:J = 0x37bb49L

.field private static final HOURS_PER_DAY:J = 0x18L

.field private static final MAX_SECOND:J = 0x701cd2fa9578ffL

.field private static final MICROS_PER_SECOND:J = 0xf4240L

.field private static final MILLIS_PER_SECOND:J = 0x3e8L

.field private static final MINUTES_PER_HOUR:J = 0x3cL

.field private static final MIN_SECOND:J = -0x701cefeb9bec00L

.field private static final NANOS_PER_MICRO:I = 0x3e8

.field private static final NANOS_PER_MILLI:I = 0xf4240

.field private static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field private static final SECONDS_0000_TO_1970:J = 0xe79747c00L

.field private static final SECONDS_PER_10000_YEARS:J = 0x497968bd80L

.field private static final SECONDS_PER_DAY:J = 0x15180L

.field private static final SECONDS_PER_HOUR:J = 0xe10L

.field private static final SECONDS_PER_MINUTE:J = 0x3cL


# instance fields
.field private instant:Lj$/time/Instant;

.field private final unit:Ljava/util/concurrent/TimeUnit;

.field private final value:J

.field private valueAsString:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/util/concurrent/TimeUnit;Lj$/time/Instant;)V
    .locals 0
    .param p1, "value"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "instant"    # Lj$/time/Instant;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-wide p1, p0, Lj$/nio/file/attribute/FileTime;->value:J

    .line 79
    iput-object p3, p0, Lj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    .line 80
    iput-object p4, p0, Lj$/nio/file/attribute/FileTime;->instant:Lj$/time/Instant;

    .line 81
    return-void
.end method

.method private append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "w"    # I
    .param p3, "d"    # I

    .line 377
    nop

    :goto_0
    if-lez p2, :cond_0

    .line 378
    div-int v0, p3, p2

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    rem-int/2addr p3, p2

    .line 380
    div-int/lit8 p2, p2, 0xa

    goto :goto_0

    .line 382
    :cond_0
    return-object p1
.end method

.method public static from(JLjava/util/concurrent/TimeUnit;)Lj$/nio/file/attribute/FileTime;
    .locals 2
    .param p0, "value"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 96
    const-string v0, "unit"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    new-instance v0, Lj$/nio/file/attribute/FileTime;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lj$/nio/file/attribute/FileTime;-><init>(JLjava/util/concurrent/TimeUnit;Lj$/time/Instant;)V

    return-object v0
.end method

.method public static from(Lj$/time/Instant;)Lj$/nio/file/attribute/FileTime;
    .locals 4
    .param p0, "instant"    # Lj$/time/Instant;

    .line 124
    const-string v0, "instant"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    new-instance v0, Lj$/nio/file/attribute/FileTime;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Lj$/nio/file/attribute/FileTime;-><init>(JLjava/util/concurrent/TimeUnit;Lj$/time/Instant;)V

    return-object v0
.end method

.method public static fromMillis(J)Lj$/nio/file/attribute/FileTime;
    .locals 3
    .param p0, "value"    # J

    .line 110
    new-instance v0, Lj$/nio/file/attribute/FileTime;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lj$/nio/file/attribute/FileTime;-><init>(JLjava/util/concurrent/TimeUnit;Lj$/time/Instant;)V

    return-object v0
.end method

.method private static scale(JJJ)J
    .locals 3
    .param p0, "d"    # J
    .param p2, "m"    # J
    .param p4, "over"    # J

    .line 209
    cmp-long v0, p0, p4

    if-lez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 210
    :cond_0
    neg-long v0, p4

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 211
    :cond_1
    mul-long v0, p0, p2

    return-wide v0
.end method

.method private toDays()J
    .locals 3

    .line 309
    iget-object v0, p0, Lj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lj$/nio/file/attribute/FileTime;->value:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    return-wide v0

    .line 312
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private toExcessNanos(J)J
    .locals 5
    .param p1, "days"    # J

    .line 317
    iget-object v0, p0, Lj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lj$/nio/file/attribute/FileTime;->value:J

    iget-object v3, p0, Lj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p1, p2, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0

    .line 320
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 321
    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 320
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public compareTo(Lj$/nio/file/attribute/FileTime;)I
    .locals 13
    .param p1, "other"    # Lj$/nio/file/attribute/FileTime;

    .line 339
    iget-object v0, p0, Lj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p1, Lj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-ne v0, v1, :cond_0

    .line 340
    iget-wide v0, p0, Lj$/nio/file/attribute/FileTime;->value:J

    iget-wide v2, p1, Lj$/nio/file/attribute/FileTime;->value:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0

    .line 343
    :cond_0
    invoke-virtual {p0}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v0

    .line 344
    .local v0, "secs":J
    invoke-virtual {p1}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v2

    .line 345
    .local v2, "secsOther":J
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v4

    .line 346
    .local v4, "cmp":I
    if-eqz v4, :cond_1

    .line 347
    return v4

    .line 349
    :cond_1
    invoke-virtual {p0}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Lj$/time/Instant;->getNano()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p1}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    move-result-object v7

    invoke-virtual {v7}, Lj$/time/Instant;->getNano()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Long;->compare(JJ)I

    move-result v4

    .line 350
    if-eqz v4, :cond_2

    .line 351
    return v4

    .line 353
    :cond_2
    const-wide v5, 0x701cd2fa9578ffL

    cmp-long v7, v0, v5

    if-eqz v7, :cond_3

    const-wide v5, -0x701cefeb9bec00L

    cmp-long v7, v0, v5

    if-eqz v7, :cond_3

    .line 354
    const/4 v5, 0x0

    return v5

    .line 359
    :cond_3
    invoke-direct {p0}, Lj$/nio/file/attribute/FileTime;->toDays()J

    move-result-wide v5

    .line 360
    .local v5, "days":J
    invoke-direct {p1}, Lj$/nio/file/attribute/FileTime;->toDays()J

    move-result-wide v7

    .line 361
    .local v7, "daysOther":J
    cmp-long v9, v5, v7

    if-nez v9, :cond_4

    .line 362
    invoke-direct {p0, v5, v6}, Lj$/nio/file/attribute/FileTime;->toExcessNanos(J)J

    move-result-wide v9

    invoke-direct {p1, v7, v8}, Lj$/nio/file/attribute/FileTime;->toExcessNanos(J)J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Long;->compare(JJ)I

    move-result v9

    return v9

    .line 364
    :cond_4
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Long;->compare(JJ)I

    move-result v9

    return v9
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 48
    check-cast p1, Lj$/nio/file/attribute/FileTime;

    invoke-virtual {p0, p1}, Lj$/nio/file/attribute/FileTime;->compareTo(Lj$/nio/file/attribute/FileTime;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 291
    instance-of v0, p1, Lj$/nio/file/attribute/FileTime;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lj$/nio/file/attribute/FileTime;

    invoke-virtual {p0, v0}, Lj$/nio/file/attribute/FileTime;->compareTo(Lj$/nio/file/attribute/FileTime;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 305
    invoke-virtual {p0}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/Instant;->hashCode()I

    move-result v0

    return v0
.end method

.method public to(Ljava/util/concurrent/TimeUnit;)J
    .locals 17
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 142
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "unit"

    invoke-static {v1, v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    iget-object v2, v0, Lj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v2, :cond_0

    .line 144
    iget-wide v2, v0, Lj$/nio/file/attribute/FileTime;->value:J

    iget-object v4, v0, Lj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    return-wide v2

    .line 146
    :cond_0
    iget-object v2, v0, Lj$/nio/file/attribute/FileTime;->instant:Lj$/time/Instant;

    invoke-virtual {v2}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 147
    .local v2, "secs":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v8, v2, v6

    if-nez v8, :cond_1

    goto :goto_1

    .line 150
    :cond_1
    iget-object v8, v0, Lj$/nio/file/attribute/FileTime;->instant:Lj$/time/Instant;

    invoke-virtual {v8}, Lj$/time/Instant;->getNano()I

    move-result v8

    int-to-long v8, v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    .line 151
    .local v8, "nanos":J
    add-long v10, v2, v8

    .line 153
    .local v10, "r":J
    xor-long v12, v2, v10

    xor-long v14, v8, v10

    and-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-gez v16, :cond_3

    .line 154
    cmp-long v12, v2, v14

    if-gez v12, :cond_2

    goto :goto_0

    :cond_2
    move-wide v4, v6

    :goto_0
    return-wide v4

    .line 156
    :cond_3
    return-wide v10

    .line 148
    .end local v8    # "nanos":J
    .end local v10    # "r":J
    :cond_4
    :goto_1
    return-wide v2
.end method

.method public toInstant()Lj$/time/Instant;
    .locals 9

    .line 231
    iget-object v0, p0, Lj$/nio/file/attribute/FileTime;->instant:Lj$/time/Instant;

    if-nez v0, :cond_2

    .line 232
    const-wide/16 v0, 0x0

    .line 233
    .local v0, "secs":J
    const/4 v2, 0x0

    .line 234
    .local v2, "nanos":I
    sget-object v3, Lj$/nio/file/attribute/FileTime$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    iget-object v4, p0, Lj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 264
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Unit not handled"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 261
    :pswitch_0
    iget-wide v3, p0, Lj$/nio/file/attribute/FileTime;->value:J

    const-wide/32 v5, 0x3b9aca00

    invoke-static {v3, v4, v5, v6}, Lj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    .line 262
    iget-wide v3, p0, Lj$/nio/file/attribute/FileTime;->value:J

    invoke-static {v3, v4, v5, v6}, Lj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v3

    long-to-int v2, v3

    .line 263
    goto :goto_0

    .line 256
    :pswitch_1
    iget-wide v3, p0, Lj$/nio/file/attribute/FileTime;->value:J

    const-wide/32 v5, 0xf4240

    invoke-static {v3, v4, v5, v6}, Lj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    .line 257
    iget-wide v3, p0, Lj$/nio/file/attribute/FileTime;->value:J

    invoke-static {v3, v4, v5, v6}, Lj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    mul-int/lit16 v2, v4, 0x3e8

    .line 259
    goto :goto_0

    .line 251
    :pswitch_2
    iget-wide v3, p0, Lj$/nio/file/attribute/FileTime;->value:J

    const-wide/16 v5, 0x3e8

    invoke-static {v3, v4, v5, v6}, Lj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    .line 252
    iget-wide v3, p0, Lj$/nio/file/attribute/FileTime;->value:J

    invoke-static {v3, v4, v5, v6}, Lj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    const v3, 0xf4240

    mul-int v2, v4, v3

    .line 254
    goto :goto_0

    .line 248
    :pswitch_3
    iget-wide v0, p0, Lj$/nio/file/attribute/FileTime;->value:J

    .line 249
    goto :goto_0

    .line 244
    :pswitch_4
    iget-wide v3, p0, Lj$/nio/file/attribute/FileTime;->value:J

    const-wide/16 v5, 0x3c

    const-wide v7, 0x222222222222222L

    invoke-static/range {v3 .. v8}, Lj$/nio/file/attribute/FileTime;->scale(JJJ)J

    move-result-wide v0

    .line 246
    goto :goto_0

    .line 240
    :pswitch_5
    iget-wide v3, p0, Lj$/nio/file/attribute/FileTime;->value:J

    const-wide/16 v5, 0xe10

    const-wide v7, 0x91a2b3c4d5e6fL

    invoke-static/range {v3 .. v8}, Lj$/nio/file/attribute/FileTime;->scale(JJJ)J

    move-result-wide v0

    .line 242
    goto :goto_0

    .line 236
    :pswitch_6
    iget-wide v3, p0, Lj$/nio/file/attribute/FileTime;->value:J

    const-wide/32 v5, 0x15180

    const-wide v7, 0x611722833944L

    invoke-static/range {v3 .. v8}, Lj$/nio/file/attribute/FileTime;->scale(JJJ)J

    move-result-wide v0

    .line 238
    nop

    .line 266
    :goto_0
    const-wide v3, -0x701cefeb9bec00L

    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    .line 267
    sget-object v3, Lj$/time/Instant;->MIN:Lj$/time/Instant;

    iput-object v3, p0, Lj$/nio/file/attribute/FileTime;->instant:Lj$/time/Instant;

    goto :goto_1

    .line 268
    :cond_0
    const-wide v3, 0x701cd2fa9578ffL

    cmp-long v5, v0, v3

    if-ltz v5, :cond_1

    .line 269
    sget-object v3, Lj$/time/Instant;->MAX:Lj$/time/Instant;

    iput-object v3, p0, Lj$/nio/file/attribute/FileTime;->instant:Lj$/time/Instant;

    goto :goto_1

    .line 271
    :cond_1
    int-to-long v3, v2

    invoke-static {v0, v1, v3, v4}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object v3

    iput-object v3, p0, Lj$/nio/file/attribute/FileTime;->instant:Lj$/time/Instant;

    .line 273
    .end local v0    # "secs":J
    .end local v2    # "nanos":I
    :cond_2
    :goto_1
    iget-object v0, p0, Lj$/nio/file/attribute/FileTime;->instant:Lj$/time/Instant;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toMillis()J
    .locals 14

    .line 170
    iget-object v0, p0, Lj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lj$/nio/file/attribute/FileTime;->value:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    .line 173
    :cond_0
    iget-object v0, p0, Lj$/nio/file/attribute/FileTime;->instant:Lj$/time/Instant;

    invoke-virtual {v0}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v0

    .line 174
    .local v0, "secs":J
    iget-object v2, p0, Lj$/nio/file/attribute/FileTime;->instant:Lj$/time/Instant;

    invoke-virtual {v2}, Lj$/time/Instant;->getNano()I

    move-result v2

    .line 176
    .local v2, "nanos":I
    const-wide/16 v3, 0x3e8

    mul-long v5, v0, v3

    .line 177
    .local v5, "r":J
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 178
    .local v7, "ax":J
    or-long v9, v7, v3

    const/16 v11, 0x1f

    ushr-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-eqz v13, :cond_2

    .line 179
    div-long v3, v5, v3

    cmp-long v9, v3, v0

    if-eqz v9, :cond_2

    .line 180
    cmp-long v3, v0, v11

    if-gez v3, :cond_1

    const-wide/high16 v3, -0x8000000000000000L

    goto :goto_0

    :cond_1
    const-wide v3, 0x7fffffffffffffffL

    :goto_0
    return-wide v3

    .line 183
    :cond_2
    const v3, 0xf4240

    div-int v3, v2, v3

    int-to-long v3, v3

    add-long/2addr v3, v5

    return-wide v3
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .line 412
    iget-object v0, p0, Lj$/nio/file/attribute/FileTime;->valueAsString:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 413
    const-wide/16 v0, 0x0

    .line 414
    .local v0, "secs":J
    const/4 v2, 0x0

    .line 415
    .local v2, "nanos":I
    iget-object v3, p0, Lj$/nio/file/attribute/FileTime;->instant:Lj$/time/Instant;

    if-nez v3, :cond_0

    iget-object v3, p0, Lj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/TimeUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 416
    iget-object v3, p0, Lj$/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lj$/nio/file/attribute/FileTime;->value:J

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    goto :goto_0

    .line 418
    :cond_0
    invoke-virtual {p0}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v0

    .line 419
    invoke-virtual {p0}, Lj$/nio/file/attribute/FileTime;->toInstant()Lj$/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Lj$/time/Instant;->getNano()I

    move-result v2

    .line 422
    :goto_0
    const/4 v3, 0x0

    .line 423
    .local v3, "year":I
    const-wide v4, -0xe79747c00L

    const/16 v6, 0x2710

    const-wide v7, 0xe79747c00L

    const-wide v9, 0x497968bd80L

    cmp-long v11, v0, v4

    if-ltz v11, :cond_1

    .line 425
    sub-long v4, v0, v9

    add-long/2addr v4, v7

    .line 426
    .local v4, "zeroSecs":J
    invoke-static {v4, v5, v9, v10}, Lj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v11

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    .line 427
    .local v11, "hi":J
    invoke-static {v4, v5, v9, v10}, Lj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v9

    .line 428
    .local v9, "lo":J
    sub-long v7, v9, v7

    sget-object v13, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-static {v7, v8, v2, v13}, Lj$/time/LocalDateTime;->ofEpochSecond(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object v7

    .line 429
    .local v7, "ldt":Lj$/time/LocalDateTime;
    invoke-virtual {v7}, Lj$/time/LocalDateTime;->getYear()I

    move-result v8

    long-to-int v13, v11

    mul-int/lit16 v13, v13, 0x2710

    add-int/2addr v8, v13

    .line 430
    .end local v3    # "year":I
    .end local v4    # "zeroSecs":J
    .end local v9    # "lo":J
    .end local v11    # "hi":J
    .local v8, "year":I
    goto :goto_1

    .line 432
    .end local v7    # "ldt":Lj$/time/LocalDateTime;
    .end local v8    # "year":I
    .restart local v3    # "year":I
    :cond_1
    add-long v4, v0, v7

    .line 433
    .restart local v4    # "zeroSecs":J
    div-long v11, v4, v9

    .line 434
    .restart local v11    # "hi":J
    rem-long v9, v4, v9

    .line 435
    .restart local v9    # "lo":J
    sub-long v7, v9, v7

    sget-object v13, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-static {v7, v8, v2, v13}, Lj$/time/LocalDateTime;->ofEpochSecond(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object v7

    .line 436
    .restart local v7    # "ldt":Lj$/time/LocalDateTime;
    invoke-virtual {v7}, Lj$/time/LocalDateTime;->getYear()I

    move-result v8

    long-to-int v13, v11

    mul-int/lit16 v13, v13, 0x2710

    add-int/2addr v8, v13

    .line 438
    .end local v3    # "year":I
    .end local v4    # "zeroSecs":J
    .end local v9    # "lo":J
    .end local v11    # "hi":J
    .restart local v8    # "year":I
    :goto_1
    if-gtz v8, :cond_2

    .line 439
    add-int/lit8 v8, v8, -0x1

    .line 441
    :cond_2
    invoke-virtual {v7}, Lj$/time/LocalDateTime;->getNano()I

    move-result v3

    .line 442
    .local v3, "fraction":I
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 443
    .local v4, "sb":Ljava/lang/StringBuilder;
    if-gez v8, :cond_3

    const-string v5, "-"

    goto :goto_2

    :cond_3
    const-string v5, ""

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 445
    .end local v8    # "year":I
    .local v5, "year":I
    if-ge v5, v6, :cond_4

    .line 446
    const/16 v6, 0x3e8

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-direct {p0, v4, v6, v8}, Lj$/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 448
    :cond_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :goto_3
    const/16 v6, 0x2d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v7}, Lj$/time/LocalDateTime;->getMonthValue()I

    move-result v8

    const/16 v9, 0xa

    invoke-direct {p0, v4, v9, v8}, Lj$/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v7}, Lj$/time/LocalDateTime;->getDayOfMonth()I

    move-result v6

    invoke-direct {p0, v4, v9, v6}, Lj$/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 454
    const/16 v6, 0x54

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v7}, Lj$/time/LocalDateTime;->getHour()I

    move-result v6

    invoke-direct {p0, v4, v9, v6}, Lj$/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 456
    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v7}, Lj$/time/LocalDateTime;->getMinute()I

    move-result v8

    invoke-direct {p0, v4, v9, v8}, Lj$/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v7}, Lj$/time/LocalDateTime;->getSecond()I

    move-result v6

    invoke-direct {p0, v4, v9, v6}, Lj$/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 460
    if-eqz v3, :cond_6

    .line 461
    const/16 v6, 0x2e

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 463
    const v6, 0x5f5e100

    .line 464
    .local v6, "w":I
    :goto_4
    rem-int/lit8 v8, v3, 0xa

    if-nez v8, :cond_5

    .line 465
    div-int/lit8 v3, v3, 0xa

    .line 466
    div-int/lit8 v6, v6, 0xa

    goto :goto_4

    .line 468
    :cond_5
    invoke-direct {p0, v4, v6, v3}, Lj$/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 470
    .end local v6    # "w":I
    :cond_6
    const/16 v6, 0x5a

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lj$/nio/file/attribute/FileTime;->valueAsString:Ljava/lang/String;

    .line 473
    .end local v0    # "secs":J
    .end local v2    # "nanos":I
    .end local v3    # "fraction":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "year":I
    .end local v7    # "ldt":Lj$/time/LocalDateTime;
    :cond_7
    iget-object v0, p0, Lj$/nio/file/attribute/FileTime;->valueAsString:Ljava/lang/String;

    return-object v0
.end method
