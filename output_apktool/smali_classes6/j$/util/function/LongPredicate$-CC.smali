.class public final synthetic Lj$/util/function/LongPredicate$-CC;
.super Ljava/lang/Object;
.source "LongPredicate.java"


# direct methods
.method public static $default$and(Ljava/util/function/LongPredicate;Ljava/util/function/LongPredicate;)Ljava/util/function/LongPredicate;
    .locals 1
    .param p0, "_this"    # Ljava/util/function/LongPredicate;
    .param p1, "other"    # Ljava/util/function/LongPredicate;

    .line 69
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Lj$/util/function/LongPredicate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lj$/util/function/LongPredicate$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/LongPredicate;Ljava/util/function/LongPredicate;)V

    return-object v0
.end method

.method public static $default$negate(Ljava/util/function/LongPredicate;)Ljava/util/function/LongPredicate;
    .locals 1
    .param p0, "_this"    # Ljava/util/function/LongPredicate;

    .line 81
    new-instance v0, Lj$/util/function/LongPredicate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lj$/util/function/LongPredicate$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/LongPredicate;)V

    return-object v0
.end method

.method public static $default$or(Ljava/util/function/LongPredicate;Ljava/util/function/LongPredicate;)Ljava/util/function/LongPredicate;
    .locals 1
    .param p0, "_this"    # Ljava/util/function/LongPredicate;
    .param p1, "other"    # Ljava/util/function/LongPredicate;

    .line 101
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v0, Lj$/util/function/LongPredicate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lj$/util/function/LongPredicate$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/LongPredicate;Ljava/util/function/LongPredicate;)V

    return-object v0
.end method

.method public static synthetic $private$lambda$and$0(Ljava/util/function/LongPredicate;Ljava/util/function/LongPredicate;J)Z
    .locals 1
    .param p0, "_this"    # Ljava/util/function/LongPredicate;
    .param p1, "other"    # Ljava/util/function/LongPredicate;
    .param p2, "value"    # J

    .line 70
    invoke-interface {p0, p2, p3}, Ljava/util/function/LongPredicate;->test(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2, p3}, Ljava/util/function/LongPredicate;->test(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic $private$lambda$negate$0(Ljava/util/function/LongPredicate;J)Z
    .locals 1
    .param p0, "_this"    # Ljava/util/function/LongPredicate;
    .param p1, "value"    # J

    .line 81
    invoke-interface {p0, p1, p2}, Ljava/util/function/LongPredicate;->test(J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic $private$lambda$or$0(Ljava/util/function/LongPredicate;Ljava/util/function/LongPredicate;J)Z
    .locals 1
    .param p0, "_this"    # Ljava/util/function/LongPredicate;
    .param p1, "other"    # Ljava/util/function/LongPredicate;
    .param p2, "value"    # J

    .line 102
    invoke-interface {p0, p2, p3}, Ljava/util/function/LongPredicate;->test(J)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2, p3}, Ljava/util/function/LongPredicate;->test(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
