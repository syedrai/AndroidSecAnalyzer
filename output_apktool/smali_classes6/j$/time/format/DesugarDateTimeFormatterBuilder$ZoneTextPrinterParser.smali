.class final Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;
.super Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
.source "DesugarDateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/format/DesugarDateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ZoneTextPrinterParser"
.end annotation


# static fields
.field private static final DST:I = 0x1

.field private static final FULL_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

.field private static final GENERIC:I = 0x2

.field private static final SHORT_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

.field private static final STD:I

.field private static final TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

.field private static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final cachedTree:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference<",
            "Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final cachedTreeCI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference<",
            "Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private preferredZones:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final textStyle:Lj$/time/format/TextStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 239
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/4 v1, 0x4

    sget-object v6, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v6, v0, v1

    const/4 v1, 0x5

    sget-object v6, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v6, v0, v1

    sput-object v0, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;->TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    .line 248
    new-array v0, v5, [Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v4

    sput-object v0, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;->FULL_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    .line 254
    new-array v0, v5, [Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v4

    sput-object v0, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;->SHORT_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    .line 261
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;->cache:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lj$/time/format/TextStyle;Ljava/util/Set;)V
    .locals 4
    .param p1, "textStyle"    # Lj$/time/format/TextStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/format/TextStyle;",
            "Ljava/util/Set<",
            "Lj$/time/ZoneId;",
            ">;)V"
        }
    .end annotation

    .line 224
    .local p2, "preferredZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/ZoneId;>;"
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zone()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZoneText("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Lj$/time/temporal/TemporalQuery;Ljava/lang/String;)V

    .line 357
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTree:Ljava/util/Map;

    .line 359
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTreeCI:Ljava/util/Map;

    .line 225
    const-string v0, "textStyle"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/format/TextStyle;

    iput-object v0, p0, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    .line 226
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    .line 228
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/ZoneId;

    .line 229
    .local v1, "id":Lj$/time/ZoneId;
    iget-object v2, p0, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    invoke-virtual {v1}, Lj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 230
    .end local v1    # "id":Lj$/time/ZoneId;
    goto :goto_0

    .line 232
    :cond_0
    return-void
.end method

.method private getDisplayName(Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;
    .locals 19
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .line 265
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v3, v0, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    sget-object v4, Lj$/time/format/TextStyle;->NARROW:Lj$/time/format/TextStyle;

    if-ne v3, v4, :cond_0

    .line 266
    const/4 v3, 0x0

    return-object v3

    .line 269
    :cond_0
    sget-object v3, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;->cache:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 270
    .local v3, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/util/Map<Ljava/util/Locale;[Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    .line 271
    .local v4, "perLocale":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;[Ljava/lang/String;>;"
    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    move-object v4, v8

    if-eqz v8, :cond_2

    .line 272
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    move-object v9, v8

    .local v9, "names":[Ljava/lang/String;
    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    const/16 v18, 0x5

    goto/16 :goto_7

    .line 288
    .end local v9    # "names":[Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-static {v2}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v8

    .line 289
    .local v8, "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    sget-object v9, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;->TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    array-length v9, v9

    add-int/2addr v9, v7

    new-array v13, v9, [Ljava/lang/String;

    .line 291
    .local v13, "names":[Ljava/lang/String;
    const/4 v15, 0x0

    aput-object v1, v13, v15

    .line 292
    invoke-static {v1}, Lj$/time/format/ZoneName;->getSystemCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 293
    .local v9, "canonicalId":Ljava/lang/String;
    sget-object v10, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;->TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 293
    const/4 v14, 0x1

    invoke-static/range {v8 .. v14}, Llibcore/icu/TimeZoneNames;->getDisplayNames(Landroid/icu/text/TimeZoneNames;Ljava/lang/String;[Landroid/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V

    .line 295
    nop

    .line 298
    aget-object v10, v13, v7

    const/4 v11, 0x4

    const/4 v12, 0x2

    if-eqz v10, :cond_4

    aget-object v10, v13, v12

    if-eqz v10, :cond_4

    aget-object v10, v13, v6

    if-eqz v10, :cond_4

    aget-object v10, v13, v11

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    const/16 v18, 0x5

    goto :goto_6

    .line 300
    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    .line 301
    .local v10, "tz":Ljava/util/TimeZone;
    nop

    .line 303
    invoke-virtual {v10}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v14

    .line 301
    invoke-static {v7, v7, v14}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v14

    .line 304
    .local v14, "stdString":Ljava/lang/String;
    nop

    .line 306
    invoke-virtual {v10}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v16

    invoke-virtual {v10}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v17

    const/16 v18, 0x5

    add-int v5, v16, v17

    .line 304
    invoke-static {v7, v7, v5}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, "dstString":Ljava/lang/String;
    aget-object v16, v13, v7

    if-eqz v16, :cond_5

    aget-object v16, v13, v7

    goto :goto_2

    :cond_5
    move-object/from16 v16, v14

    :goto_2
    aput-object v16, v13, v7

    .line 308
    aget-object v16, v13, v12

    if-eqz v16, :cond_6

    aget-object v16, v13, v12

    goto :goto_3

    :cond_6
    move-object/from16 v16, v14

    :goto_3
    aput-object v16, v13, v12

    .line 309
    aget-object v12, v13, v6

    if-eqz v12, :cond_7

    aget-object v12, v13, v6

    goto :goto_4

    :cond_7
    move-object v12, v5

    :goto_4
    aput-object v12, v13, v6

    .line 310
    aget-object v12, v13, v11

    if-eqz v12, :cond_8

    aget-object v12, v13, v11

    goto :goto_5

    :cond_8
    move-object v12, v5

    :goto_5
    aput-object v12, v13, v11

    .line 312
    .end local v5    # "dstString":Ljava/lang/String;
    .end local v10    # "tz":Ljava/util/TimeZone;
    .end local v14    # "stdString":Ljava/lang/String;
    :goto_6
    aget-object v5, v13, v18

    if-nez v5, :cond_9

    .line 313
    aget-object v5, v13, v15

    aput-object v5, v13, v18

    .line 316
    :cond_9
    const/4 v5, 0x6

    aget-object v10, v13, v5

    if-nez v10, :cond_a

    .line 317
    aget-object v10, v13, v15

    aput-object v10, v13, v5

    .line 319
    :cond_a
    if-nez v4, :cond_b

    .line 320
    new-instance v5, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v4, v5

    .line 322
    :cond_b
    invoke-interface {v4, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v5, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;->cache:Ljava/util/Map;

    new-instance v10, Ljava/lang/ref/SoftReference;

    invoke-direct {v10, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v13

    .line 325
    .end local v8    # "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    .end local v13    # "names":[Ljava/lang/String;
    .local v9, "names":[Ljava/lang/String;
    :goto_7
    packed-switch p2, :pswitch_data_0

    .line 331
    iget-object v5, v0, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    invoke-virtual {v5}, Lj$/time/format/TextStyle;->zoneNameStyleIndex()I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    aget-object v5, v9, v5

    return-object v5

    .line 329
    :pswitch_0
    iget-object v5, v0, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    invoke-virtual {v5}, Lj$/time/format/TextStyle;->zoneNameStyleIndex()I

    move-result v5

    add-int/2addr v5, v6

    aget-object v5, v9, v5

    return-object v5

    .line 327
    :pswitch_1
    iget-object v5, v0, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    invoke-virtual {v5}, Lj$/time/format/TextStyle;->zoneNameStyleIndex()I

    move-result v5

    add-int/2addr v5, v7

    aget-object v5, v9, v5

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 7
    .param p1, "context"    # Lj$/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 336
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zoneId()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj$/time/format/DateTimePrintContext;->getValue(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/ZoneId;

    .line 337
    .local v0, "zone":Lj$/time/ZoneId;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 338
    return v1

    .line 340
    :cond_0
    invoke-virtual {v0}, Lj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "zname":Ljava/lang/String;
    instance-of v3, v0, Lj$/time/ZoneOffset;

    const/4 v4, 0x1

    if-nez v3, :cond_3

    .line 342
    invoke-virtual {p1}, Lj$/time/format/DateTimePrintContext;->getTemporal()Lj$/time/temporal/TemporalAccessor;

    move-result-object v3

    .line 343
    .local v3, "dt":Lj$/time/temporal/TemporalAccessor;
    nop

    .line 344
    sget-object v5, Lj$/time/temporal/ChronoField;->INSTANT_SECONDS:Lj$/time/temporal/ChronoField;

    invoke-interface {v3, v5}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 345
    invoke-virtual {v0}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v5

    invoke-static {v3}, Lj$/time/Instant;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/Instant;

    move-result-object v6

    invoke-virtual {v5, v6}, Lj$/time/zone/ZoneRules;->isDaylightSavings(Lj$/time/Instant;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 346
    :cond_1
    const/4 v1, 0x2

    .line 347
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lj$/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v5

    .line 343
    invoke-direct {p0, v2, v1, v5}, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;->getDisplayName(Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 349
    move-object v2, v1

    .line 352
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "dt":Lj$/time/temporal/TemporalAccessor;
    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    return v4
.end method

.method protected getTree(Lj$/time/format/DateTimeParseContext;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    .locals 18
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;

    .line 364
    move-object/from16 v0, p0

    iget-object v1, v0, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    sget-object v2, Lj$/time/format/TextStyle;->NARROW:Lj$/time/format/TextStyle;

    if-ne v1, v2, :cond_0

    .line 365
    invoke-super/range {p0 .. p1}, Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->getTree(Lj$/time/format/DateTimeParseContext;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v1

    return-object v1

    .line 367
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 368
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v2

    .line 369
    .local v2, "isCaseSensitive":Z
    invoke-static {}, Lj$/time/zone/ZoneRulesProvider;->getAvailableZoneIds()Ljava/util/Set;

    move-result-object v3

    .line 370
    .local v3, "regionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    .line 373
    .local v4, "regionIdsSize":I
    if-eqz v2, :cond_1

    iget-object v5, v0, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTree:Ljava/util/Map;

    goto :goto_0

    :cond_1
    iget-object v5, v0, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTreeCI:Ljava/util/Map;

    .line 375
    .local v5, "cached":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/SoftReference<Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;>;>;"
    :goto_0
    const/4 v6, 0x0

    .line 376
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/SoftReference<Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;>;"
    const/4 v7, 0x0

    .line 377
    .local v7, "tree":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    const/4 v8, 0x0

    .line 378
    .local v8, "zoneStrings":[[Ljava/lang/String;
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    move-object v6, v9

    if-eqz v9, :cond_3

    .line 379
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v4, :cond_3

    .line 380
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/SoftReference;

    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-object v7, v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v17, v2

    goto/16 :goto_7

    .line 381
    :cond_3
    :goto_1
    invoke-static/range {p1 .. p1}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->newTree(Lj$/time/format/DateTimeParseContext;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v7

    .line 412
    invoke-static {v1}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v9

    .line 413
    .local v9, "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 415
    .local v12, "now":J
    iget-object v10, v0, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    sget-object v11, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    if-ne v10, v11, :cond_4

    sget-object v10, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;->FULL_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_2

    :cond_4
    sget-object v10, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;->SHORT_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    :goto_2
    move-object v11, v10

    .line 416
    .local v11, "types":[Landroid/icu/text/TimeZoneNames$NameType;
    array-length v10, v11

    new-array v14, v10, [Ljava/lang/String;

    .line 417
    .local v14, "names":[Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 418
    .local v10, "zid":Ljava/lang/String;
    invoke-virtual {v7, v10, v10}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 419
    invoke-static {v10, v1}, Lj$/time/format/ZoneName;->toZid(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 420
    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Llibcore/icu/TimeZoneNames;->getDisplayNames(Landroid/icu/text/TimeZoneNames;Ljava/lang/String;[Landroid/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V

    .line 422
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_4
    move/from16 v17, v2

    .end local v2    # "isCaseSensitive":Z
    .local v17, "isCaseSensitive":Z
    array-length v2, v14

    if-ge v15, v2, :cond_6

    .line 423
    aget-object v2, v14, v15

    if-eqz v2, :cond_5

    .line 424
    aget-object v2, v14, v15

    invoke-virtual {v7, v2, v10}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 422
    :cond_5
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v17

    goto :goto_4

    .line 427
    .end local v10    # "zid":Ljava/lang/String;
    .end local v15    # "i":I
    :cond_6
    move/from16 v2, v17

    goto :goto_3

    .line 430
    .end local v17    # "isCaseSensitive":Z
    .restart local v2    # "isCaseSensitive":Z
    :cond_7
    move/from16 v17, v2

    .end local v2    # "isCaseSensitive":Z
    .restart local v17    # "isCaseSensitive":Z
    iget-object v2, v0, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    if-eqz v2, :cond_b

    .line 431
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 432
    .restart local v10    # "zid":Ljava/lang/String;
    iget-object v15, v0, Lj$/time/format/DesugarDateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    invoke-interface {v15, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 433
    goto :goto_5

    .line 435
    :cond_8
    move-object v15, v10

    .end local v10    # "zid":Ljava/lang/String;
    .local v15, "zid":Ljava/lang/String;
    invoke-static {v15, v1}, Lj$/time/format/ZoneName;->toZid(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 436
    .local v10, "canonicalId":Ljava/lang/String;
    move-object/from16 v16, v15

    .end local v15    # "zid":Ljava/lang/String;
    .local v16, "zid":Ljava/lang/String;
    const/4 v15, 0x0

    move-object/from16 v0, v16

    .end local v16    # "zid":Ljava/lang/String;
    .local v0, "zid":Ljava/lang/String;
    invoke-static/range {v9 .. v15}, Llibcore/icu/TimeZoneNames;->getDisplayNames(Landroid/icu/text/TimeZoneNames;Ljava/lang/String;[Landroid/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V

    .line 438
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_6
    move-object/from16 v16, v2

    array-length v2, v14

    if-ge v15, v2, :cond_a

    .line 439
    aget-object v2, v14, v15

    if-eqz v2, :cond_9

    .line 440
    aget-object v2, v14, v15

    invoke-virtual {v7, v2, v0}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 438
    :cond_9
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v16

    goto :goto_6

    .line 443
    .end local v0    # "zid":Ljava/lang/String;
    .end local v10    # "canonicalId":Ljava/lang/String;
    .end local v15    # "i":I
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v2, v16

    goto :goto_5

    .line 446
    :cond_b
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v10, Ljava/lang/ref/SoftReference;

    invoke-direct {v10, v7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v2, v10}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    .end local v9    # "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    .end local v11    # "types":[Landroid/icu/text/TimeZoneNames$NameType;
    .end local v12    # "now":J
    .end local v14    # "names":[Ljava/lang/String;
    :goto_7
    return-object v7
.end method
