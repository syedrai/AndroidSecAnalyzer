.class public final synthetic Lj$/util/stream/Collector$-CC;
.super Ljava/lang/Object;
.source "Collector.java"


# direct methods
.method public static varargs of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;
    .locals 7
    .param p4, "characteristics"    # [Lj$/util/stream/Collector$Characteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TA;>;",
            "Ljava/util/function/BiConsumer<",
            "TA;TT;>;",
            "Ljava/util/function/BinaryOperator<",
            "TA;>;",
            "Ljava/util/function/Function<",
            "TA;TR;>;[",
            "Lj$/util/stream/Collector$Characteristics;",
            ")",
            "Lj$/util/stream/Collector<",
            "TT;TA;TR;>;"
        }
    .end annotation

    .line 296
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    .local p1, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;TT;>;"
    .local p2, "combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TA;>;"
    .local p3, "finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TA;TR;>;"
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-static {p4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    .line 302
    .local v0, "cs":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    array-length v1, p4

    if-lez v1, :cond_0

    .line 303
    const-class v1, Lj$/util/stream/Collector$Characteristics;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 304
    invoke-static {v0, p4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 305
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 302
    :cond_0
    move-object v6, v0

    .line 307
    .end local v0    # "cs":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    .local v6, "cs":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    :goto_0
    new-instance v1, Lj$/util/stream/Collectors$CollectorImpl;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p0    # "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    .end local p1    # "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;TT;>;"
    .end local p2    # "combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TA;>;"
    .end local p3    # "finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TA;TR;>;"
    .local v2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    .local v3, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;TT;>;"
    .local v4, "combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TA;>;"
    .local v5, "finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TA;TR;>;"
    invoke-direct/range {v1 .. v6}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v1
.end method

.method public static varargs of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;
    .locals 2
    .param p3, "characteristics"    # [Lj$/util/stream/Collector$Characteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;TT;>;",
            "Ljava/util/function/BinaryOperator<",
            "TR;>;[",
            "Lj$/util/stream/Collector$Characteristics;",
            ")",
            "Lj$/util/stream/Collector<",
            "TT;TR;TR;>;"
        }
    .end annotation

    .line 264
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TR;>;"
    .local p1, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;TT;>;"
    .local p2, "combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TR;>;"
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    array-length v0, p3

    if-nez v0, :cond_0

    .line 269
    sget-object v0, Lj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    goto :goto_0

    .line 270
    :cond_0
    sget-object v0, Lj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Lj$/util/stream/Collector$Characteristics;

    invoke-static {v0, p3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    nop

    .line 272
    .local v0, "cs":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    new-instance v1, Lj$/util/stream/Collectors$CollectorImpl;

    invoke-direct {v1, p0, p1, p2, v0}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v1
.end method
