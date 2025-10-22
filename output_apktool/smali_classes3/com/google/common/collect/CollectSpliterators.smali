.class final Lcom/google/common/collect/CollectSpliterators;
.super Ljava/lang/Object;
.source "CollectSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject;,
        Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfInt;,
        Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfLong;,
        Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble;,
        Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;,
        Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static filter(Lj$/util/Spliterator;Ljava/util/function/Predicate;)Lj$/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromSpliterator",
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/Spliterator<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 156
    .local p0, "fromSpliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v0, Lcom/google/common/collect/CollectSpliterators$1Splitr;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/CollectSpliterators$1Splitr;-><init>(Lj$/util/Spliterator;Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method static flatMap(Lj$/util/Spliterator;Ljava/util/function/Function;IJ)Lj$/util/Spliterator;
    .locals 9
    .param p2, "topCharacteristics"    # I
    .param p3, "topSize"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fromSpliterator",
            "function",
            "topCharacteristics",
            "topSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InElementT:",
            "Ljava/lang/Object;",
            "OutElementT:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/Spliterator<",
            "TInElementT;>;",
            "Ljava/util/function/Function<",
            "-TInElementT;",
            "Lj$/util/Spliterator<",
            "TOutElementT;>;>;IJ)",
            "Lj$/util/Spliterator<",
            "TOutElementT;>;"
        }
    .end annotation

    .line 222
    .local p0, "fromSpliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    .local p1, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TInElementT;Ljava/util/Spliterator<TOutElementT;>;>;"
    and-int/lit16 v0, p2, 0x4000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "flatMap does not support SUBSIZED characteristic"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 225
    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v0, "flatMap does not support SORTED characteristic"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 228
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v2, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject;

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    .end local p0    # "fromSpliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    .end local p1    # "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TInElementT;Ljava/util/Spliterator<TOutElementT;>;>;"
    .end local p2    # "topCharacteristics":I
    .end local p3    # "topSize":J
    .local v4, "fromSpliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    .local v5, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TInElementT;Ljava/util/Spliterator<TOutElementT;>;>;"
    .local v6, "topCharacteristics":I
    .local v7, "topSize":J
    invoke-direct/range {v2 .. v8}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject;-><init>(Lj$/util/Spliterator;Lj$/util/Spliterator;Ljava/util/function/Function;IJ)V

    return-object v2
.end method

.method static flatMapToDouble(Lj$/util/Spliterator;Ljava/util/function/Function;IJ)Lj$/util/Spliterator$OfDouble;
    .locals 9
    .param p2, "topCharacteristics"    # I
    .param p3, "topSize"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fromSpliterator",
            "function",
            "topCharacteristics",
            "topSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InElementT:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/Spliterator<",
            "TInElementT;>;",
            "Ljava/util/function/Function<",
            "-TInElementT;",
            "Lj$/util/Spliterator$OfDouble;",
            ">;IJ)",
            "Lj$/util/Spliterator$OfDouble;"
        }
    .end annotation

    .line 288
    .local p0, "fromSpliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    .local p1, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TInElementT;Ljava/util/Spliterator$OfDouble;>;"
    and-int/lit16 v0, p2, 0x4000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "flatMap does not support SUBSIZED characteristic"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 291
    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v0, "flatMap does not support SORTED characteristic"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 294
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    new-instance v2, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble;

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    .end local p0    # "fromSpliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    .end local p1    # "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TInElementT;Ljava/util/Spliterator$OfDouble;>;"
    .end local p2    # "topCharacteristics":I
    .end local p3    # "topSize":J
    .local v4, "fromSpliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    .local v5, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TInElementT;Ljava/util/Spliterator$OfDouble;>;"
    .local v6, "topCharacteristics":I
    .local v7, "topSize":J
    invoke-direct/range {v2 .. v8}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble;-><init>(Lj$/util/Spliterator$OfDouble;Lj$/util/Spliterator;Ljava/util/function/Function;IJ)V

    return-object v2
.end method

.method static flatMapToInt(Lj$/util/Spliterator;Ljava/util/function/Function;IJ)Lj$/util/Spliterator$OfInt;
    .locals 9
    .param p2, "topCharacteristics"    # I
    .param p3, "topSize"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fromSpliterator",
            "function",
            "topCharacteristics",
            "topSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InElementT:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/Spliterator<",
            "TInElementT;>;",
            "Ljava/util/function/Function<",
            "-TInElementT;",
            "Lj$/util/Spliterator$OfInt;",
            ">;IJ)",
            "Lj$/util/Spliterator$OfInt;"
        }
    .end annotation

    .line 244
    .local p0, "fromSpliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    .local p1, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TInElementT;Ljava/util/Spliterator$OfInt;>;"
    and-int/lit16 v0, p2, 0x4000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "flatMap does not support SUBSIZED characteristic"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 247
    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v0, "flatMap does not support SORTED characteristic"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 250
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v2, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfInt;

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    .end local p0    # "fromSpliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    .end local p1    # "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TInElementT;Ljava/util/Spliterator$OfInt;>;"
    .end local p2    # "topCharacteristics":I
    .end local p3    # "topSize":J
    .local v4, "fromSpliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    .local v5, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TInElementT;Ljava/util/Spliterator$OfInt;>;"
    .local v6, "topCharacteristics":I
    .local v7, "topSize":J
    invoke-direct/range {v2 .. v8}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfInt;-><init>(Lj$/util/Spliterator$OfInt;Lj$/util/Spliterator;Ljava/util/function/Function;IJ)V

    return-object v2
.end method

.method static flatMapToLong(Lj$/util/Spliterator;Ljava/util/function/Function;IJ)Lj$/util/Spliterator$OfLong;
    .locals 9
    .param p2, "topCharacteristics"    # I
    .param p3, "topSize"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fromSpliterator",
            "function",
            "topCharacteristics",
            "topSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InElementT:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/Spliterator<",
            "TInElementT;>;",
            "Ljava/util/function/Function<",
            "-TInElementT;",
            "Lj$/util/Spliterator$OfLong;",
            ">;IJ)",
            "Lj$/util/Spliterator$OfLong;"
        }
    .end annotation

    .line 266
    .local p0, "fromSpliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    .local p1, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TInElementT;Ljava/util/Spliterator$OfLong;>;"
    and-int/lit16 v0, p2, 0x4000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "flatMap does not support SUBSIZED characteristic"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 269
    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v0, "flatMap does not support SORTED characteristic"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 272
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    new-instance v2, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfLong;

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    .end local p0    # "fromSpliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    .end local p1    # "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TInElementT;Ljava/util/Spliterator$OfLong;>;"
    .end local p2    # "topCharacteristics":I
    .end local p3    # "topSize":J
    .local v4, "fromSpliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    .local v5, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TInElementT;Ljava/util/Spliterator$OfLong;>;"
    .local v6, "topCharacteristics":I
    .local v7, "topSize":J
    invoke-direct/range {v2 .. v8}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfLong;-><init>(Lj$/util/Spliterator$OfLong;Lj$/util/Spliterator;Ljava/util/function/Function;IJ)V

    return-object v2
.end method

.method static indexed(IILjava/util/function/IntFunction;)Lj$/util/Spliterator;
    .locals 1
    .param p0, "size"    # I
    .param p1, "extraCharacteristics"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "size",
            "extraCharacteristics",
            "function"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/function/IntFunction<",
            "TT;>;)",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 46
    .local p2, "function":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/common/collect/CollectSpliterators;->indexed(IILjava/util/function/IntFunction;Ljava/util/Comparator;)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method static indexed(IILjava/util/function/IntFunction;Ljava/util/Comparator;)Lj$/util/Spliterator;
    .locals 2
    .param p0, "size"    # I
    .param p1, "extraCharacteristics"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "size",
            "extraCharacteristics",
            "function",
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/function/IntFunction<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 54
    .local p2, "function":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<TT;>;"
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 55
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 108
    :cond_1
    new-instance v1, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;

    invoke-static {v0, p0}, Lj$/util/stream/IntStream$-CC;->range(II)Lj$/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/IntStream;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    invoke-direct {v1, v0, p2, p1, p3}, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;-><init>(Lj$/util/Spliterator$OfInt;Ljava/util/function/IntFunction;ILjava/util/Comparator;)V

    return-object v1
.end method

.method static map(Lj$/util/Spliterator;Ljava/util/function/Function;)Lj$/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromSpliterator",
            "function"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InElementT:",
            "Ljava/lang/Object;",
            "OutElementT:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/Spliterator<",
            "TInElementT;>;",
            "Ljava/util/function/Function<",
            "-TInElementT;+TOutElementT;>;)",
            "Lj$/util/Spliterator<",
            "TOutElementT;>;"
        }
    .end annotation

    .line 119
    .local p0, "fromSpliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    .local p1, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TInElementT;+TOutElementT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Lcom/google/common/collect/CollectSpliterators$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/CollectSpliterators$1;-><init>(Lj$/util/Spliterator;Ljava/util/function/Function;)V

    return-object v0
.end method
