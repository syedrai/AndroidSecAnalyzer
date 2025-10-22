.class public final Lj$/time/DesugarLocalDate;
.super Ljava/lang/Object;
.source "DesugarLocalDate.java"


# static fields
.field public static final EPOCH:Lj$/time/LocalDate;

.field private static final SECONDS_PER_DAY:I = 0x15180


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 107
    const/16 v0, 0x7b2

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    sput-object v0, Lj$/time/DesugarLocalDate;->EPOCH:Lj$/time/LocalDate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static datesUntil(Lj$/time/LocalDate;Lj$/time/LocalDate;)Lj$/util/stream/Stream;
    .locals 8
    .param p0, "receiver"    # Lj$/time/LocalDate;
    .param p1, "endExclusive"    # Lj$/time/LocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/LocalDate;",
            "Lj$/time/LocalDate;",
            ")",
            "Lj$/util/stream/Stream<",
            "Lj$/time/LocalDate;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-virtual {p1}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    .line 126
    .local v0, "end":J
    invoke-virtual {p0}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v2

    .line 127
    .local v2, "start":J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 130
    invoke-static {v2, v3, v0, v1}, Lj$/util/stream/LongStream$-CC;->range(JJ)Lj$/util/stream/LongStream;

    move-result-object v4

    new-instance v5, Lj$/time/DesugarLocalDate$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lj$/time/DesugarLocalDate$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v4, v5}, Lj$/util/stream/LongStream;->mapToObj(Ljava/util/function/LongFunction;)Lj$/util/stream/Stream;

    move-result-object v4

    return-object v4

    .line 128
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " < "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static datesUntil(Lj$/time/LocalDate;Lj$/time/LocalDate;Lj$/time/Period;)Lj$/util/stream/Stream;
    .locals 30
    .param p0, "receiver"    # Lj$/time/LocalDate;
    .param p1, "endExclusive"    # Lj$/time/LocalDate;
    .param p2, "step"    # Lj$/time/Period;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/LocalDate;",
            "Lj$/time/LocalDate;",
            "Lj$/time/Period;",
            ")",
            "Lj$/util/stream/Stream<",
            "Lj$/time/LocalDate;",
            ">;"
        }
    .end annotation

    .line 152
    move-object/from16 v1, p0

    invoke-virtual/range {p2 .. p2}, Lj$/time/Period;->isZero()Z

    move-result v0

    if-nez v0, :cond_10

    .line 155
    invoke-virtual/range {p1 .. p1}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v6

    .line 156
    .local v6, "end":J
    invoke-virtual {v1}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v8

    .line 157
    .local v8, "start":J
    sub-long v10, v6, v8

    .line 158
    .local v10, "until":J
    invoke-virtual/range {p2 .. p2}, Lj$/time/Period;->toTotalMonths()J

    move-result-wide v2

    .line 159
    .local v2, "months":J
    invoke-virtual/range {p2 .. p2}, Lj$/time/Period;->getDays()I

    move-result v0

    int-to-long v4, v0

    .line 160
    .local v4, "days":J
    const-wide/16 v12, 0x0

    cmp-long v0, v2, v12

    if-gez v0, :cond_0

    cmp-long v0, v4, v12

    if-gtz v0, :cond_1

    :cond_0
    cmp-long v0, v2, v12

    if-lez v0, :cond_2

    cmp-long v0, v4, v12

    if-ltz v0, :cond_1

    goto :goto_0

    .line 161
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v12, "period months and days are of opposite sign"

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_2
    :goto_0
    cmp-long v0, v10, v12

    if-nez v0, :cond_3

    .line 164
    invoke-static {}, Lj$/util/stream/Stream$-CC;->empty()Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 166
    :cond_3
    const/4 v0, 0x1

    cmp-long v14, v2, v12

    if-gtz v14, :cond_5

    cmp-long v14, v4, v12

    if-lez v14, :cond_4

    goto :goto_1

    :cond_4
    const/4 v14, -0x1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v14, 0x1

    .line 167
    .local v14, "sign":I
    :goto_2
    const/4 v15, 0x0

    if-gez v14, :cond_6

    const/16 v16, 0x1

    goto :goto_3

    :cond_6
    const/16 v16, 0x0

    :goto_3
    cmp-long v17, v10, v12

    if-gez v17, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    xor-int v0, v16, v0

    if-eqz v0, :cond_9

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    if-gez v14, :cond_8

    const-string v13, " > "

    goto :goto_5

    :cond_8
    const-string v13, " < "

    :goto_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v16, v2

    .end local v2    # "months":J
    .local v16, "months":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    .end local v16    # "months":J
    .restart local v2    # "months":J
    :cond_9
    move-wide/from16 v16, v2

    .end local v2    # "months":J
    .restart local v16    # "months":J
    cmp-long v0, v16, v12

    if-nez v0, :cond_a

    .line 171
    int-to-long v2, v14

    sub-long v2, v10, v2

    div-long/2addr v2, v4

    .line 172
    .local v2, "steps":J
    invoke-static {v12, v13, v2, v3}, Lj$/util/stream/LongStream$-CC;->rangeClosed(JJ)Lj$/util/stream/LongStream;

    move-result-object v0

    new-instance v12, Lj$/time/DesugarLocalDate$$ExternalSyntheticLambda2;

    invoke-direct {v12, v8, v9, v4, v5}, Lj$/time/DesugarLocalDate$$ExternalSyntheticLambda2;-><init>(JJ)V

    invoke-interface {v0, v12}, Lj$/util/stream/LongStream;->mapToObj(Ljava/util/function/LongFunction;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 176
    .end local v2    # "steps":J
    :cond_a
    const-wide/16 v2, 0x640

    mul-long v18, v10, v2

    const-wide/32 v20, 0xbe3b

    mul-long v20, v20, v16

    mul-long v2, v2, v4

    add-long v20, v20, v2

    div-long v18, v18, v20

    const-wide/16 v2, 0x1

    add-long v18, v18, v2

    .line 177
    .local v18, "steps":J
    move-wide/from16 v20, v2

    mul-long v2, v16, v18

    .line 178
    .local v2, "addMonths":J
    mul-long v22, v4, v18

    .line 179
    .local v22, "addDays":J
    cmp-long v0, v16, v12

    if-lez v0, :cond_b

    sget-object v0, Lj$/time/LocalDate;->MAX:Lj$/time/LocalDate;

    invoke-static {v0}, Lj$/time/DesugarLocalDate;->getProlepticMonth(Lj$/time/LocalDate;)J

    move-result-wide v24

    invoke-static {v1}, Lj$/time/DesugarLocalDate;->getProlepticMonth(Lj$/time/LocalDate;)J

    move-result-wide v26

    sub-long v24, v24, v26

    goto :goto_6

    .line 180
    :cond_b
    invoke-static {v1}, Lj$/time/DesugarLocalDate;->getProlepticMonth(Lj$/time/LocalDate;)J

    move-result-wide v24

    sget-object v0, Lj$/time/LocalDate;->MIN:Lj$/time/LocalDate;

    invoke-static {v0}, Lj$/time/DesugarLocalDate;->getProlepticMonth(Lj$/time/LocalDate;)J

    move-result-wide v26

    sub-long v24, v24, v26

    :goto_6
    nop

    .line 182
    .local v24, "maxAddMonths":J
    int-to-long v12, v14

    mul-long v12, v12, v2

    cmp-long v0, v12, v24

    if-gtz v0, :cond_d

    .line 183
    invoke-virtual {v1, v2, v3}, Lj$/time/LocalDate;->plusMonths(J)Lj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v12

    add-long v12, v12, v22

    move-wide/from16 v28, v2

    .end local v2    # "addMonths":J
    .local v28, "addMonths":J
    int-to-long v2, v14

    mul-long v12, v12, v2

    int-to-long v2, v14

    mul-long v2, v2, v6

    cmp-long v0, v12, v2

    if-ltz v0, :cond_c

    goto :goto_7

    :cond_c
    move-wide/from16 v12, v18

    goto :goto_9

    .line 182
    .end local v28    # "addMonths":J
    .restart local v2    # "addMonths":J
    :cond_d
    move-wide/from16 v28, v2

    .line 184
    .end local v2    # "addMonths":J
    .restart local v28    # "addMonths":J
    :goto_7
    sub-long v18, v18, v20

    .line 185
    sub-long v2, v28, v16

    .line 186
    .end local v28    # "addMonths":J
    .restart local v2    # "addMonths":J
    sub-long v22, v22, v4

    .line 187
    int-to-long v12, v14

    mul-long v12, v12, v2

    cmp-long v0, v12, v24

    if-gtz v0, :cond_f

    .line 188
    invoke-virtual {v1, v2, v3}, Lj$/time/LocalDate;->plusMonths(J)Lj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v12

    add-long v12, v12, v22

    int-to-long v0, v14

    mul-long v12, v12, v0

    int-to-long v0, v14

    mul-long v0, v0, v6

    cmp-long v15, v12, v0

    if-ltz v15, :cond_e

    goto :goto_8

    :cond_e
    move-wide/from16 v28, v2

    move-wide/from16 v12, v18

    goto :goto_9

    .line 189
    :cond_f
    :goto_8
    sub-long v18, v18, v20

    move-wide/from16 v28, v2

    move-wide/from16 v12, v18

    .line 192
    .end local v2    # "addMonths":J
    .end local v18    # "steps":J
    .local v12, "steps":J
    .restart local v28    # "addMonths":J
    :goto_9
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v12, v13}, Lj$/util/stream/LongStream$-CC;->rangeClosed(JJ)Lj$/util/stream/LongStream;

    move-result-object v15

    new-instance v0, Lj$/time/DesugarLocalDate$$ExternalSyntheticLambda3;

    move-object/from16 v1, p0

    move-wide/from16 v2, v16

    .end local v16    # "months":J
    .local v2, "months":J
    invoke-direct/range {v0 .. v5}, Lj$/time/DesugarLocalDate$$ExternalSyntheticLambda3;-><init>(Lj$/time/LocalDate;JJ)V

    .end local v2    # "months":J
    .restart local v16    # "months":J
    invoke-interface {v15, v0}, Lj$/util/stream/LongStream;->mapToObj(Ljava/util/function/LongFunction;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 153
    .end local v4    # "days":J
    .end local v6    # "end":J
    .end local v8    # "start":J
    .end local v10    # "until":J
    .end local v12    # "steps":J
    .end local v14    # "sign":I
    .end local v16    # "months":J
    .end local v22    # "addDays":J
    .end local v24    # "maxAddMonths":J
    .end local v28    # "addMonths":J
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "step is zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getProlepticMonth(Lj$/time/LocalDate;)J
    .locals 6
    .param p0, "receiver"    # Lj$/time/LocalDate;

    .line 244
    invoke-virtual {p0}, Lj$/time/LocalDate;->getYear()I

    move-result v0

    .line 245
    .local v0, "year":I
    invoke-virtual {p0}, Lj$/time/LocalDate;->getMonthValue()I

    move-result v1

    .line 246
    .local v1, "month":I
    int-to-long v2, v0

    const-wide/16 v4, 0xc

    mul-long v2, v2, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method static synthetic lambda$datesUntil$0(JJJ)Lj$/time/LocalDate;
    .locals 2
    .param p0, "start"    # J
    .param p2, "days"    # J
    .param p4, "n"    # J

    .line 173
    mul-long v0, p4, p2

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Lj$/time/LocalDate;->ofEpochDay(J)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$datesUntil$1(Lj$/time/LocalDate;JJJ)Lj$/time/LocalDate;
    .locals 3
    .param p0, "receiver"    # Lj$/time/LocalDate;
    .param p1, "months"    # J
    .param p3, "days"    # J
    .param p5, "n"    # J

    .line 193
    mul-long v0, p1, p5

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalDate;->plusMonths(J)Lj$/time/LocalDate;

    move-result-object v0

    mul-long v1, p3, p5

    invoke-virtual {v0, v1, v2}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/LocalDate;
    .locals 7
    .param p0, "instant"    # Lj$/time/Instant;
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 234
    const-string v0, "instant"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 235
    const-string v0, "zone"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    invoke-virtual {p1}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v0

    .line 237
    .local v0, "rules":Lj$/time/zone/ZoneRules;
    invoke-virtual {v0, p0}, Lj$/time/zone/ZoneRules;->getOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v1

    .line 238
    .local v1, "offset":Lj$/time/ZoneOffset;
    invoke-virtual {p0}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 239
    .local v2, "localSecond":J
    const v4, 0x15180

    invoke-static {v2, v3, v4}, Lj$/time/DesugarLocalDate$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v4

    .line 240
    .local v4, "localEpochDay":J
    invoke-static {v4, v5}, Lj$/time/LocalDate;->ofEpochDay(J)Lj$/time/LocalDate;

    move-result-object v6

    return-object v6
.end method

.method public static toEpochSecond(Lj$/time/LocalDate;Lj$/time/LocalTime;Lj$/time/ZoneOffset;)J
    .locals 4
    .param p0, "receiver"    # Lj$/time/LocalDate;
    .param p1, "time"    # Lj$/time/LocalTime;
    .param p2, "offset"    # Lj$/time/ZoneOffset;

    .line 212
    const-string v0, "time"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 213
    const-string v0, "offset"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    invoke-virtual {p0}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    mul-long v0, v0, v2

    invoke-virtual {p1}, Lj$/time/LocalTime;->toSecondOfDay()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 215
    .local v0, "secs":J
    invoke-virtual {p2}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 216
    return-wide v0
.end method
