.class public final synthetic Lj$/util/PrimitiveIterator$OfDouble$-CC;
.super Ljava/lang/Object;
.source "PrimitiveIterator.java"


# direct methods
.method public static bridge synthetic $default$forEachRemaining(Lj$/util/PrimitiveIterator$OfDouble;Ljava/lang/Object;)V
    .locals 0
    .param p0, "_this"    # Lj$/util/PrimitiveIterator$OfDouble;

    .line 233
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Lj$/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public static $default$forEachRemaining(Lj$/util/PrimitiveIterator$OfDouble;Ljava/util/function/Consumer;)V
    .locals 2
    .param p0, "_this"    # Lj$/util/PrimitiveIterator$OfDouble;

    .line 290
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    instance-of v0, p1, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    .line 291
    move-object v0, p1

    check-cast v0, Ljava/util/function/DoubleConsumer;

    invoke-interface {p0, v0}, Lj$/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    goto :goto_0

    .line 295
    :cond_0
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-boolean v0, Lj$/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)"

    invoke-static {v0, v1}, Lj$/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 298
    :cond_1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/PrimitiveIterator$OfDouble$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lj$/util/PrimitiveIterator$OfDouble$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Lj$/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    .line 300
    :goto_0
    return-void
.end method

.method public static $default$forEachRemaining(Lj$/util/PrimitiveIterator$OfDouble;Ljava/util/function/DoubleConsumer;)V
    .locals 2
    .param p0, "_this"    # Lj$/util/PrimitiveIterator$OfDouble;
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 260
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :goto_0
    invoke-interface {p0}, Lj$/util/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-interface {p0}, Lj$/util/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    goto :goto_0

    .line 263
    :cond_0
    return-void
.end method

.method public static $default$next(Lj$/util/PrimitiveIterator$OfDouble;)Ljava/lang/Double;
    .locals 2
    .param p0, "_this"    # Lj$/util/PrimitiveIterator$OfDouble;

    .line 273
    sget-boolean v0, Lj$/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling PrimitiveIterator.OfDouble.nextLong()"

    invoke-static {v0, v1}, Lj$/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 275
    :cond_0
    invoke-interface {p0}, Lj$/util/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$next(Lj$/util/PrimitiveIterator$OfDouble;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lj$/util/PrimitiveIterator$OfDouble;

    .line 233
    invoke-interface {p0}, Lj$/util/PrimitiveIterator$OfDouble;->next()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
