.class public final Lcom/google/common/math/StatsAccumulator;
.super Ljava/lang/Object;
.source "StatsAccumulator.java"


# instance fields
.field private count:J

.field private max:D

.field private mean:D

.field private min:D

.field private sumOfSquaresOfDeltas:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 48
    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 49
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 50
    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    .line 42
    return-void
.end method

.method static calculateNewMeanNonFinite(DD)D
    .locals 2
    .param p0, "previousMean"    # D
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previousMean",
            "value"
        }
    .end annotation

    .line 422
    invoke-static {p0, p1}, Lcom/google/common/math/PairedStatsAccumulator$$ExternalSyntheticBackport0;->m(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    return-wide p2

    .line 425
    :cond_0
    invoke-static {p2, p3}, Lcom/google/common/math/PairedStatsAccumulator$$ExternalSyntheticBackport0;->m(D)Z

    move-result v0

    if-nez v0, :cond_2

    cmpl-double v0, p0, p2

    if-nez v0, :cond_1

    goto :goto_0

    .line 430
    :cond_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 427
    :cond_2
    :goto_0
    return-wide p0
.end method

.method private merge(JDDDD)V
    .locals 17
    .param p1, "otherCount"    # J
    .param p3, "otherMean"    # D
    .param p5, "otherSumOfSquaresOfDeltas"    # D
    .param p7, "otherMin"    # D
    .param p9, "otherMax"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "otherCount",
            "otherMean",
            "otherSumOfSquaresOfDeltas",
            "otherMin",
            "otherMax"
        }
    .end annotation

    .line 200
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    iget-wide v11, v0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-nez v15, :cond_0

    .line 201
    iput-wide v1, v0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 202
    iput-wide v3, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 203
    iput-wide v5, v0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 204
    iput-wide v7, v0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 205
    iput-wide v9, v0, Lcom/google/common/math/StatsAccumulator;->max:D

    goto :goto_1

    .line 207
    :cond_0
    iget-wide v11, v0, Lcom/google/common/math/StatsAccumulator;->count:J

    add-long/2addr v11, v1

    iput-wide v11, v0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 208
    iget-wide v11, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-static {v11, v12}, Lcom/google/common/math/PairedStatsAccumulator$$ExternalSyntheticBackport0;->m(D)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {v3, v4}, Lcom/google/common/math/PairedStatsAccumulator$$ExternalSyntheticBackport0;->m(D)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 210
    iget-wide v11, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    sub-double v11, v3, v11

    .line 211
    .local v11, "delta":D
    iget-wide v13, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    long-to-double v5, v1

    mul-double v5, v5, v11

    move-wide v15, v5

    iget-wide v5, v0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v5, v5

    div-double v5, v15, v5

    add-double/2addr v13, v5

    iput-wide v13, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 212
    iget-wide v5, v0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    iget-wide v13, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    sub-double v13, v3, v13

    mul-double v13, v13, v11

    move-wide v15, v5

    long-to-double v5, v1

    mul-double v13, v13, v5

    add-double v5, p5, v13

    add-double/2addr v5, v15

    iput-wide v5, v0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 213
    .end local v11    # "delta":D
    goto :goto_0

    .line 214
    :cond_1
    iget-wide v5, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-static {v5, v6, v3, v4}, Lcom/google/common/math/StatsAccumulator;->calculateNewMeanNonFinite(DD)D

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 215
    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    iput-wide v5, v0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 217
    :goto_0
    iget-wide v5, v0, Lcom/google/common/math/StatsAccumulator;->min:D

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 218
    iget-wide v5, v0, Lcom/google/common/math/StatsAccumulator;->max:D

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/common/math/StatsAccumulator;->max:D

    .line 220
    :goto_1
    return-void
.end method


# virtual methods
.method public add(D)V
    .locals 9
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 54
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    const-wide/16 v6, 0x1

    cmp-long v8, v0, v2

    if-nez v8, :cond_0

    .line 55
    iput-wide v6, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 56
    iput-wide p1, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 57
    iput-wide p1, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 58
    iput-wide p1, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    .line 59
    invoke-static {p1, p2}, Lcom/google/common/math/PairedStatsAccumulator$$ExternalSyntheticBackport0;->m(D)Z

    move-result v0

    if-nez v0, :cond_2

    .line 60
    iput-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    goto :goto_1

    .line 63
    :cond_0
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 64
    invoke-static {p1, p2}, Lcom/google/common/math/PairedStatsAccumulator$$ExternalSyntheticBackport0;->m(D)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-static {v0, v1}, Lcom/google/common/math/PairedStatsAccumulator$$ExternalSyntheticBackport0;->m(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    sub-double v0, p1, v0

    .line 67
    .local v0, "delta":D
    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    iget-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v4, v4

    div-double v4, v0, v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 68
    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    iget-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    sub-double v4, p1, v4

    mul-double v4, v4, v0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 69
    .end local v0    # "delta":D
    goto :goto_0

    .line 70
    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/math/StatsAccumulator;->calculateNewMeanNonFinite(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 71
    iput-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 73
    :goto_0
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 74
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    .line 76
    :cond_2
    :goto_1
    return-void
.end method

.method public addAll(Lcom/google/common/math/Stats;)V
    .locals 16
    .param p1, "values"    # Lcom/google/common/math/Stats;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 176
    return-void

    .line 178
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas()D

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/Stats;->min()D

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/Stats;->max()D

    move-result-wide v14

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v15}, Lcom/google/common/math/StatsAccumulator;->merge(JDDDD)V

    .line 179
    return-void
.end method

.method public addAll(Lcom/google/common/math/StatsAccumulator;)V
    .locals 16
    .param p1, "values"    # Lcom/google/common/math/StatsAccumulator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 188
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/StatsAccumulator;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 189
    return-void

    .line 191
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/StatsAccumulator;->count()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas()D

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/StatsAccumulator;->min()D

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/math/StatsAccumulator;->max()D

    move-result-wide v14

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v15}, Lcom/google/common/math/StatsAccumulator;->merge(JDDDD)V

    .line 192
    return-void
.end method

.method public addAll(Lj$/util/stream/DoubleStream;)V
    .locals 3
    .param p1, "values"    # Lj$/util/stream/DoubleStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/google/common/math/Stats$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/common/math/Stats$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lcom/google/common/math/Stats$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/google/common/math/Stats$$ExternalSyntheticLambda4;-><init>()V

    new-instance v2, Lcom/google/common/math/Stats$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/google/common/math/Stats$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Lj$/util/stream/DoubleStream;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {p0, v0}, Lcom/google/common/math/StatsAccumulator;->addAll(Lcom/google/common/math/StatsAccumulator;)V

    .line 145
    return-void
.end method

.method public addAll(Lj$/util/stream/IntStream;)V
    .locals 3
    .param p1, "values"    # Lj$/util/stream/IntStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 155
    new-instance v0, Lcom/google/common/math/Stats$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/common/math/Stats$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lcom/google/common/math/Stats$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/google/common/math/Stats$$ExternalSyntheticLambda3;-><init>()V

    new-instance v2, Lcom/google/common/math/Stats$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/google/common/math/Stats$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Lj$/util/stream/IntStream;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {p0, v0}, Lcom/google/common/math/StatsAccumulator;->addAll(Lcom/google/common/math/StatsAccumulator;)V

    .line 156
    return-void
.end method

.method public addAll(Lj$/util/stream/LongStream;)V
    .locals 3
    .param p1, "values"    # Lj$/util/stream/LongStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 167
    new-instance v0, Lcom/google/common/math/Stats$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/common/math/Stats$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lcom/google/common/math/Stats$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/common/math/Stats$$ExternalSyntheticLambda1;-><init>()V

    new-instance v2, Lcom/google/common/math/Stats$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/google/common/math/Stats$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Lj$/util/stream/LongStream;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {p0, v0}, Lcom/google/common/math/StatsAccumulator;->addAll(Lcom/google/common/math/StatsAccumulator;)V

    .line 168
    return-void
.end method

.method public addAll(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Number;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 86
    .local v1, "value":Ljava/lang/Number;
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 87
    .end local v1    # "value":Ljava/lang/Number;
    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method public addAll(Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p1, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Number;>;"
    nop

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method

.method public varargs addAll([D)V
    .locals 4
    .param p1, "values"    # [D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 108
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    .line 109
    .local v2, "value":D
    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 108
    .end local v2    # "value":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method

.method public varargs addAll([I)V
    .locals 5
    .param p1, "values"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 119
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 120
    .local v2, "value":I
    int-to-double v3, v2

    invoke-virtual {p0, v3, v4}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 119
    .end local v2    # "value":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method

.method public varargs addAll([J)V
    .locals 6
    .param p1, "values"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 131
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    .line 132
    .local v2, "value":J
    long-to-double v4, v2

    invoke-virtual {p0, v4, v5}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 131
    .end local v2    # "value":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method

.method public count()J
    .locals 2

    .line 229
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    return-wide v0
.end method

.method public max()D
    .locals 5

    .line 395
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 396
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    return-wide v0
.end method

.method public mean()D
    .locals 5

    .line 251
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 252
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    return-wide v0
.end method

.method public min()D
    .locals 5

    .line 377
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 378
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    return-wide v0
.end method

.method public final populationStandardDeviation()D
    .locals 2

    .line 314
    invoke-virtual {p0}, Lcom/google/common/math/StatsAccumulator;->populationVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final populationVariance()D
    .locals 5

    .line 287
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 288
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 291
    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 292
    const-wide/16 v0, 0x0

    return-wide v0

    .line 294
    :cond_2
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Lcom/google/common/math/DoubleUtils;->ensureNonNegative(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final sampleStandardDeviation()D
    .locals 2

    .line 360
    invoke-virtual {p0}, Lcom/google/common/math/StatsAccumulator;->sampleVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final sampleVariance()D
    .locals 6

    .line 334
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 335
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 338
    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Lcom/google/common/math/DoubleUtils;->ensureNonNegative(D)D

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    sub-long/2addr v4, v2

    long-to-double v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public snapshot()Lcom/google/common/math/Stats;
    .locals 11

    .line 224
    new-instance v0, Lcom/google/common/math/Stats;

    iget-wide v1, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    iget-wide v3, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    iget-wide v5, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    iget-wide v7, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    iget-wide v9, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    invoke-direct/range {v0 .. v10}, Lcom/google/common/math/Stats;-><init>(JDDDD)V

    return-object v0
.end method

.method public final sum()D
    .locals 4

    .line 268
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v2, v2

    mul-double v0, v0, v2

    return-wide v0
.end method

.method sumOfSquaresOfDeltas()D
    .locals 2

    .line 400
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    return-wide v0
.end method
