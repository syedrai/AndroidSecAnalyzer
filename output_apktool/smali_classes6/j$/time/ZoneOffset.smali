.class public final Lj$/time/ZoneOffset;
.super Lj$/time/ZoneId;
.source "ZoneOffset.java"

# interfaces
.implements Lj$/time/temporal/TemporalAccessor;
.implements Lj$/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/time/ZoneId;",
        "Lj$/time/temporal/TemporalAccessor;",
        "Lj$/time/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable<",
        "Lj$/time/ZoneOffset;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ID_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lj$/time/ZoneOffset;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Lj$/time/ZoneOffset;

.field private static final MAX_SECONDS:I = 0xfd20

.field public static final MIN:Lj$/time/ZoneOffset;

.field private static final SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Lj$/time/ZoneOffset;",
            ">;"
        }
    .end annotation
.end field

.field public static final UTC:Lj$/time/ZoneOffset;

.field private static final serialVersionUID:J = 0x20b8141d7a029c21L


# instance fields
.field private final transient id:Ljava/lang/String;

.field private final totalSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 135
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lj$/time/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 137
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1, v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lj$/time/ZoneOffset;->ID_CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 151
    const/4 v0, 0x0

    invoke-static {v0}, Lj$/time/ZoneOffset;->ofTotalSeconds(I)Lj$/time/ZoneOffset;

    move-result-object v0

    sput-object v0, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    .line 155
    const v0, -0xfd20

    invoke-static {v0}, Lj$/time/ZoneOffset;->ofTotalSeconds(I)Lj$/time/ZoneOffset;

    move-result-object v0

    sput-object v0, Lj$/time/ZoneOffset;->MIN:Lj$/time/ZoneOffset;

    .line 159
    const v0, 0xfd20

    invoke-static {v0}, Lj$/time/ZoneOffset;->ofTotalSeconds(I)Lj$/time/ZoneOffset;

    move-result-object v0

    sput-object v0, Lj$/time/ZoneOffset;->MAX:Lj$/time/ZoneOffset;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "totalSeconds"    # I

    .line 439
    invoke-direct {p0}, Lj$/time/ZoneId;-><init>()V

    .line 440
    iput p1, p0, Lj$/time/ZoneOffset;->totalSeconds:I

    .line 441
    invoke-static {p1}, Lj$/time/ZoneOffset;->buildId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj$/time/ZoneOffset;->id:Ljava/lang/String;

    .line 442
    return-void
.end method

.method private static buildId(I)Ljava/lang/String;
    .locals 9
    .param p0, "totalSeconds"    # I

    .line 445
    if-nez p0, :cond_0

    .line 446
    const-string v0, "Z"

    return-object v0

    .line 448
    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 449
    .local v0, "absTotalSeconds":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    .local v1, "buf":Ljava/lang/StringBuilder;
    div-int/lit16 v2, v0, 0xe10

    .line 451
    .local v2, "absHours":I
    div-int/lit8 v3, v0, 0x3c

    rem-int/lit8 v3, v3, 0x3c

    .line 452
    .local v3, "absMinutes":I
    if-gez p0, :cond_1

    const-string v4, "-"

    goto :goto_0

    :cond_1
    const-string v4, "+"

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 453
    const/16 v5, 0xa

    if-ge v2, v5, :cond_2

    const-string v6, "0"

    goto :goto_1

    :cond_2
    const-string v6, ""

    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 454
    const-string v6, ":0"

    const-string v7, ":"

    if-ge v3, v5, :cond_3

    move-object v8, v6

    goto :goto_2

    :cond_3
    move-object v8, v7

    :goto_2
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 455
    rem-int/lit8 v4, v0, 0x3c

    .line 456
    .local v4, "absSeconds":I
    if-eqz v4, :cond_5

    .line 457
    if-ge v4, v5, :cond_4

    goto :goto_3

    :cond_4
    move-object v6, v7

    :goto_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 459
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/ZoneOffset;
    .locals 6
    .param p0, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 344
    const-string v0, "temporal"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 345
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->offset()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/ZoneOffset;

    .line 346
    .local v0, "offset":Lj$/time/ZoneOffset;
    if-eqz v0, :cond_0

    .line 350
    return-object v0

    .line 347
    :cond_0
    new-instance v1, Lj$/time/DateTimeException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 348
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to obtain ZoneOffset from TemporalAccessor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " of type "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static of(Ljava/lang/String;)Lj$/time/ZoneOffset;
    .locals 8
    .param p0, "offsetId"    # Ljava/lang/String;

    .line 203
    const-string v0, "offsetId"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lj$/time/ZoneOffset;->ID_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/ZoneOffset;

    .line 206
    .local v0, "offset":Lj$/time/ZoneOffset;
    if-eqz v0, :cond_0

    .line 207
    return-object v0

    .line 212
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    .line 241
    :pswitch_0
    new-instance v1, Lj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ID for ZoneOffset, invalid format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :pswitch_1
    invoke-static {p0, v4, v5}, Lj$/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    .line 237
    .local v1, "hours":I
    invoke-static {p0, v2, v4}, Lj$/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v2

    .line 238
    .local v2, "minutes":I
    const/4 v3, 0x7

    invoke-static {p0, v3, v4}, Lj$/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v3

    .line 239
    .local v3, "seconds":I
    goto :goto_0

    .line 231
    .end local v1    # "hours":I
    .end local v2    # "minutes":I
    .end local v3    # "seconds":I
    :pswitch_2
    invoke-static {p0, v4, v5}, Lj$/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    .line 232
    .restart local v1    # "hours":I
    invoke-static {p0, v3, v5}, Lj$/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v2

    .line 233
    .restart local v2    # "minutes":I
    const/4 v3, 0x5

    invoke-static {p0, v3, v5}, Lj$/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v3

    .line 234
    .restart local v3    # "seconds":I
    goto :goto_0

    .line 226
    .end local v1    # "hours":I
    .end local v2    # "minutes":I
    .end local v3    # "seconds":I
    :pswitch_3
    invoke-static {p0, v4, v5}, Lj$/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    .line 227
    .restart local v1    # "hours":I
    invoke-static {p0, v2, v4}, Lj$/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v2

    .line 228
    .restart local v2    # "minutes":I
    const/4 v3, 0x0

    .line 229
    .restart local v3    # "seconds":I
    goto :goto_0

    .line 221
    .end local v1    # "hours":I
    .end local v2    # "minutes":I
    .end local v3    # "seconds":I
    :pswitch_4
    invoke-static {p0, v4, v5}, Lj$/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    .line 222
    .restart local v1    # "hours":I
    invoke-static {p0, v3, v5}, Lj$/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v2

    .line 223
    .restart local v2    # "minutes":I
    const/4 v3, 0x0

    .line 224
    .restart local v3    # "seconds":I
    goto :goto_0

    .line 214
    .end local v1    # "hours":I
    .end local v2    # "minutes":I
    .end local v3    # "seconds":I
    :pswitch_5
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 216
    :pswitch_6
    invoke-static {p0, v4, v5}, Lj$/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    .line 217
    .restart local v1    # "hours":I
    const/4 v2, 0x0

    .line 218
    .restart local v2    # "minutes":I
    const/4 v3, 0x0

    .line 219
    .restart local v3    # "seconds":I
    nop

    .line 243
    :goto_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 244
    .local v4, "first":C
    const/16 v5, 0x2b

    const/16 v6, 0x2d

    if-eq v4, v5, :cond_2

    if-ne v4, v6, :cond_1

    goto :goto_1

    .line 245
    :cond_1
    new-instance v5, Lj$/time/DateTimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid ID for ZoneOffset, plus/minus not found when expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 247
    :cond_2
    :goto_1
    if-ne v4, v6, :cond_3

    .line 248
    neg-int v5, v1

    neg-int v6, v2

    neg-int v7, v3

    invoke-static {v5, v6, v7}, Lj$/time/ZoneOffset;->ofHoursMinutesSeconds(III)Lj$/time/ZoneOffset;

    move-result-object v5

    return-object v5

    .line 250
    :cond_3
    invoke-static {v1, v2, v3}, Lj$/time/ZoneOffset;->ofHoursMinutesSeconds(III)Lj$/time/ZoneOffset;

    move-result-object v5

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static ofHours(I)Lj$/time/ZoneOffset;
    .locals 1
    .param p0, "hours"    # I

    .line 283
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lj$/time/ZoneOffset;->ofHoursMinutesSeconds(III)Lj$/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method public static ofHoursMinutes(II)Lj$/time/ZoneOffset;
    .locals 1
    .param p0, "hours"    # I
    .param p1, "minutes"    # I

    .line 300
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lj$/time/ZoneOffset;->ofHoursMinutesSeconds(III)Lj$/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method public static ofHoursMinutesSeconds(III)Lj$/time/ZoneOffset;
    .locals 2
    .param p0, "hours"    # I
    .param p1, "minutes"    # I
    .param p2, "seconds"    # I

    .line 317
    invoke-static {p0, p1, p2}, Lj$/time/ZoneOffset;->validate(III)V

    .line 318
    invoke-static {p0, p1, p2}, Lj$/time/ZoneOffset;->totalSeconds(III)I

    move-result v0

    .line 319
    .local v0, "totalSeconds":I
    invoke-static {v0}, Lj$/time/ZoneOffset;->ofTotalSeconds(I)Lj$/time/ZoneOffset;

    move-result-object v1

    return-object v1
.end method

.method public static ofTotalSeconds(I)Lj$/time/ZoneOffset;
    .locals 4
    .param p0, "totalSeconds"    # I

    .line 414
    const v0, -0xfd20

    if-lt p0, v0, :cond_2

    const v0, 0xfd20

    if-gt p0, v0, :cond_2

    .line 417
    rem-int/lit16 v0, p0, 0x384

    if-nez v0, :cond_1

    .line 418
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 419
    .local v0, "totalSecs":Ljava/lang/Integer;
    sget-object v1, Lj$/time/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/ZoneOffset;

    .line 420
    .local v1, "result":Lj$/time/ZoneOffset;
    if-nez v1, :cond_0

    .line 421
    new-instance v2, Lj$/time/ZoneOffset;

    invoke-direct {v2, p0}, Lj$/time/ZoneOffset;-><init>(I)V

    .line 422
    .end local v1    # "result":Lj$/time/ZoneOffset;
    .local v2, "result":Lj$/time/ZoneOffset;
    sget-object v1, Lj$/time/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v1, Lj$/time/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/ZoneOffset;

    .line 424
    .end local v2    # "result":Lj$/time/ZoneOffset;
    .restart local v1    # "result":Lj$/time/ZoneOffset;
    sget-object v2, Lj$/time/ZoneOffset;->ID_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_0
    return-object v1

    .line 428
    .end local v0    # "totalSecs":Ljava/lang/Integer;
    .end local v1    # "result":Lj$/time/ZoneOffset;
    :cond_1
    new-instance v0, Lj$/time/ZoneOffset;

    invoke-direct {v0, p0}, Lj$/time/ZoneOffset;-><init>(I)V

    return-object v0

    .line 415
    :cond_2
    new-instance v0, Lj$/time/DateTimeException;

    const-string v1, "Zone offset not in valid range: -18:00 to +18:00"

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseNumber(Ljava/lang/CharSequence;IZ)I
    .locals 6
    .param p0, "offsetId"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I
    .param p2, "precededByColon"    # Z

    .line 263
    if-eqz p2, :cond_1

    add-int/lit8 v0, p1, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    new-instance v0, Lj$/time/DateTimeException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ID for ZoneOffset, colon not found when expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_1
    :goto_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 267
    .local v0, "ch1":C
    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 268
    .local v1, "ch2":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_2

    const/16 v3, 0x39

    if-gt v0, v3, :cond_2

    if-lt v1, v2, :cond_2

    if-gt v1, v3, :cond_2

    .line 271
    add-int/lit8 v2, v0, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v1, -0x30

    add-int/2addr v2, v3

    return v2

    .line 269
    :cond_2
    new-instance v2, Lj$/time/DateTimeException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid ID for ZoneOffset, non numeric characters found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static readExternal(Ljava/io/DataInput;)Lj$/time/ZoneOffset;
    .locals 2
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 796
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 797
    .local v0, "offsetByte":I
    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    goto :goto_0

    :cond_0
    mul-int/lit16 v1, v0, 0x384

    :goto_0
    invoke-static {v1}, Lj$/time/ZoneOffset;->ofTotalSeconds(I)Lj$/time/ZoneOffset;

    move-result-object v1

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 777
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static totalSeconds(III)I
    .locals 2
    .param p0, "hours"    # I
    .param p1, "minutes"    # I
    .param p2, "seconds"    # I

    .line 400
    mul-int/lit16 v0, p0, 0xe10

    mul-int/lit8 v1, p1, 0x3c

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    return v0
.end method

.method private static validate(III)V
    .locals 4
    .param p0, "hours"    # I
    .param p1, "minutes"    # I
    .param p2, "seconds"    # I

    .line 363
    const/16 v0, -0x12

    if-lt p0, v0, :cond_b

    const/16 v0, 0x12

    if-gt p0, v0, :cond_b

    .line 367
    if-lez p0, :cond_1

    .line 368
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    new-instance v0, Lj$/time/DateTimeException;

    const-string v1, "Zone offset minutes and seconds must be positive because hours is positive"

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_1
    if-gez p0, :cond_3

    .line 372
    if-gtz p1, :cond_2

    if-gtz p2, :cond_2

    goto :goto_0

    .line 373
    :cond_2
    new-instance v0, Lj$/time/DateTimeException;

    const-string v1, "Zone offset minutes and seconds must be negative because hours is negative"

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_3
    if-lez p1, :cond_4

    if-ltz p2, :cond_5

    :cond_4
    if-gez p1, :cond_6

    if-gtz p2, :cond_5

    goto :goto_0

    .line 376
    :cond_5
    new-instance v0, Lj$/time/DateTimeException;

    const-string v1, "Zone offset minutes and seconds must have the same sign"

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_6
    :goto_0
    const-string v1, " is not in the range -59 to 59"

    const/16 v2, -0x3b

    if-lt p1, v2, :cond_a

    const/16 v3, 0x3b

    if-gt p1, v3, :cond_a

    .line 382
    if-lt p2, v2, :cond_9

    if-gt p2, v3, :cond_9

    .line 386
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ne v1, v0, :cond_8

    or-int v0, p1, p2

    if-nez v0, :cond_7

    goto :goto_1

    .line 387
    :cond_7
    new-instance v0, Lj$/time/DateTimeException;

    const-string v1, "Zone offset not in valid range: -18:00 to +18:00"

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_8
    :goto_1
    return-void

    .line 383
    :cond_9
    new-instance v0, Lj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Zone offset seconds not in valid range: value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_a
    new-instance v0, Lj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Zone offset minutes not in valid range: value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_b
    new-instance v0, Lj$/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zone offset hours not in valid range: value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in the range -18 to 18"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 767
    new-instance v0, Lj$/time/Ser;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 3
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 685
    sget-object v0, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    iget v1, p0, Lj$/time/ZoneOffset;->totalSeconds:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lj$/time/ZoneOffset;)I
    .locals 2
    .param p1, "other"    # Lj$/time/ZoneOffset;

    .line 705
    iget v0, p1, Lj$/time/ZoneOffset;->totalSeconds:I

    iget v1, p0, Lj$/time/ZoneOffset;->totalSeconds:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 130
    check-cast p1, Lj$/time/ZoneOffset;

    invoke-virtual {p0, p1}, Lj$/time/ZoneOffset;->compareTo(Lj$/time/ZoneOffset;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 720
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 721
    return v0

    .line 723
    :cond_0
    instance-of v1, p1, Lj$/time/ZoneOffset;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 724
    iget v1, p0, Lj$/time/ZoneOffset;->totalSeconds:I

    move-object v3, p1

    check-cast v3, Lj$/time/ZoneOffset;

    iget v3, v3, Lj$/time/ZoneOffset;->totalSeconds:I

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 726
    :cond_2
    return v2
.end method

.method public get(Lj$/time/temporal/TemporalField;)I
    .locals 4
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 591
    sget-object v0, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 592
    iget v0, p0, Lj$/time/ZoneOffset;->totalSeconds:I

    return v0

    .line 593
    :cond_0
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-nez v0, :cond_1

    .line 596
    invoke-virtual {p0, p1}, Lj$/time/ZoneOffset;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Lj$/time/ZoneOffset;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v0

    return v0

    .line 594
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
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 492
    iget-object v0, p0, Lj$/time/ZoneOffset;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLong(Lj$/time/temporal/TemporalField;)J
    .locals 4
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 623
    sget-object v0, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 624
    iget v0, p0, Lj$/time/ZoneOffset;->totalSeconds:I

    int-to-long v0, v0

    return-wide v0

    .line 625
    :cond_0
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-nez v0, :cond_1

    .line 628
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->getFrom(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    .line 626
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
.end method

.method public getRules()Lj$/time/zone/ZoneRules;
    .locals 1

    .line 505
    invoke-static {p0}, Lj$/time/zone/ZoneRules;->of(Lj$/time/ZoneOffset;)Lj$/time/zone/ZoneRules;

    move-result-object v0

    return-object v0
.end method

.method public getTotalSeconds()I
    .locals 1

    .line 474
    iget v0, p0, Lj$/time/ZoneOffset;->totalSeconds:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 736
    iget v0, p0, Lj$/time/ZoneOffset;->totalSeconds:I

    return v0
.end method

.method public isSupported(Lj$/time/temporal/TemporalField;)Z
    .locals 3
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 530
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 531
    sget-object v0, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 533
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
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

    .line 653
    .local p1, "query":Lj$/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->offset()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zone()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 656
    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/TemporalAccessor$-CC;->$default$query(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 654
    :cond_1
    :goto_0
    return-object p0
.end method

.method public range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .locals 1
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 561
    invoke-static {p0, p1}, Lj$/time/temporal/TemporalAccessor$-CC;->$default$range(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 747
    iget-object v0, p0, Lj$/time/ZoneOffset;->id:Ljava/lang/String;

    return-object v0
.end method

.method write(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 782
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 783
    invoke-virtual {p0, p1}, Lj$/time/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    .line 784
    return-void
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 3
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 787
    iget v0, p0, Lj$/time/ZoneOffset;->totalSeconds:I

    .line 788
    .local v0, "offsetSecs":I
    rem-int/lit16 v1, v0, 0x384

    const/16 v2, 0x7f

    if-nez v1, :cond_0

    div-int/lit16 v1, v0, 0x384

    goto :goto_0

    :cond_0
    const/16 v1, 0x7f

    .line 789
    .local v1, "offsetByte":I
    :goto_0
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 790
    if-ne v1, v2, :cond_1

    .line 791
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 793
    :cond_1
    return-void
.end method
