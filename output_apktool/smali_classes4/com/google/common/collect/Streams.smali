.class public final Lcom/google/common/collect/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Streams$FunctionWithIndex;,
        Lcom/google/common/collect/Streams$IntFunctionWithIndex;,
        Lcom/google/common/collect/Streams$LongFunctionWithIndex;,
        Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;,
        Lcom/google/common/collect/Streams$TemporaryPair;,
        Lcom/google/common/collect/Streams$MapWithIndexSpliterator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeAll([Lj$/util/stream/BaseStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toClose"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lj$/util/stream/BaseStream<",
            "**>;)V"
        }
    .end annotation

    .line 171
    .local p0, "toClose":[Lj$/util/stream/BaseStream;, "[Ljava/util/stream/BaseStream<**>;"
    const/4 v0, 0x0

    .line 172
    .local v0, "exception":Ljava/lang/Exception;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 174
    .local v3, "stream":Lj$/util/stream/BaseStream;, "Ljava/util/stream/BaseStream<**>;"
    :try_start_0
    invoke-interface {v3}, Lj$/util/stream/BaseStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_1

    .line 175
    :catch_0
    move-exception v4

    .line 176
    .local v4, "e":Ljava/lang/Exception;
    if-nez v0, :cond_0

    .line 177
    move-object v0, v4

    goto :goto_1

    .line 179
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 172
    .end local v3    # "stream":Lj$/util/stream/BaseStream;, "Ljava/util/stream/BaseStream<**>;"
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    :cond_1
    if-eqz v0, :cond_2

    .line 186
    invoke-static {v0}, Lcom/google/common/collect/SneakyThrows;->sneakyThrow(Ljava/lang/Throwable;)Ljava/lang/Error;

    .line 188
    :cond_2
    return-void
.end method

.method public static varargs concat([Lj$/util/stream/DoubleStream;)Lj$/util/stream/DoubleStream;
    .locals 11
    .param p0, "streams"    # [Lj$/util/stream/DoubleStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streams"
        }
    .end annotation

    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "isParallel":Z
    const/16 v1, 0x150

    .line 301
    .local v1, "characteristics":I
    const-wide/16 v2, 0x0

    .line 302
    .local v2, "estimatedSize":J
    new-instance v4, Lcom/google/common/collect/ImmutableList$Builder;

    array-length v5, p0

    invoke-direct {v4, v5}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 304
    .local v4, "splitrsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/util/Spliterator$OfDouble;>;"
    array-length v5, p0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, p0, v6

    .line 305
    .local v7, "stream":Lj$/util/stream/DoubleStream;
    invoke-interface {v7}, Lj$/util/stream/DoubleStream;->isParallel()Z

    move-result v8

    or-int/2addr v0, v8

    .line 306
    invoke-interface {v7}, Lj$/util/stream/DoubleStream;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v8

    .line 307
    .local v8, "splitr":Lj$/util/Spliterator$OfDouble;
    invoke-virtual {v4, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 308
    invoke-interface {v8}, Lj$/util/Spliterator$OfDouble;->characteristics()I

    move-result v9

    and-int/2addr v1, v9

    .line 309
    invoke-interface {v8}, Lj$/util/Spliterator$OfDouble;->estimateSize()J

    move-result-wide v9

    invoke-static {v2, v3, v9, v10}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v2

    .line 304
    .end local v7    # "stream":Lj$/util/stream/DoubleStream;
    .end local v8    # "splitr":Lj$/util/Spliterator$OfDouble;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 311
    :cond_0
    nop

    .line 313
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->spliterator()Lj$/util/Spliterator;

    move-result-object v5

    new-instance v6, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda9;

    invoke-direct {v6}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda9;-><init>()V

    .line 312
    invoke-static {v5, v6, v1, v2, v3}, Lcom/google/common/collect/CollectSpliterators;->flatMapToDouble(Lj$/util/Spliterator;Ljava/util/function/Function;IJ)Lj$/util/Spliterator$OfDouble;

    move-result-object v5

    .line 311
    invoke-static {v5, v0}, Lj$/util/stream/StreamSupport;->doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;

    move-result-object v5

    new-instance v6, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda10;

    invoke-direct {v6, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda10;-><init>([Lj$/util/stream/DoubleStream;)V

    .line 318
    invoke-interface {v5, v6}, Lj$/util/stream/DoubleStream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v5

    check-cast v5, Lj$/util/stream/DoubleStream;

    .line 311
    return-object v5
.end method

.method public static varargs concat([Lj$/util/stream/IntStream;)Lj$/util/stream/IntStream;
    .locals 11
    .param p0, "streams"    # [Lj$/util/stream/IntStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streams"
        }
    .end annotation

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "isParallel":Z
    const/16 v1, 0x150

    .line 237
    .local v1, "characteristics":I
    const-wide/16 v2, 0x0

    .line 238
    .local v2, "estimatedSize":J
    new-instance v4, Lcom/google/common/collect/ImmutableList$Builder;

    array-length v5, p0

    invoke-direct {v4, v5}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 240
    .local v4, "splitrsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/util/Spliterator$OfInt;>;"
    array-length v5, p0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, p0, v6

    .line 241
    .local v7, "stream":Lj$/util/stream/IntStream;
    invoke-interface {v7}, Lj$/util/stream/IntStream;->isParallel()Z

    move-result v8

    or-int/2addr v0, v8

    .line 242
    invoke-interface {v7}, Lj$/util/stream/IntStream;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v8

    .line 243
    .local v8, "splitr":Lj$/util/Spliterator$OfInt;
    invoke-virtual {v4, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 244
    invoke-interface {v8}, Lj$/util/Spliterator$OfInt;->characteristics()I

    move-result v9

    and-int/2addr v1, v9

    .line 245
    invoke-interface {v8}, Lj$/util/Spliterator$OfInt;->estimateSize()J

    move-result-wide v9

    invoke-static {v2, v3, v9, v10}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v2

    .line 240
    .end local v7    # "stream":Lj$/util/stream/IntStream;
    .end local v8    # "splitr":Lj$/util/Spliterator$OfInt;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 247
    :cond_0
    nop

    .line 249
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->spliterator()Lj$/util/Spliterator;

    move-result-object v5

    new-instance v6, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda17;

    invoke-direct {v6}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda17;-><init>()V

    .line 248
    invoke-static {v5, v6, v1, v2, v3}, Lcom/google/common/collect/CollectSpliterators;->flatMapToInt(Lj$/util/Spliterator;Ljava/util/function/Function;IJ)Lj$/util/Spliterator$OfInt;

    move-result-object v5

    .line 247
    invoke-static {v5, v0}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v5

    new-instance v6, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda1;-><init>([Lj$/util/stream/IntStream;)V

    .line 254
    invoke-interface {v5, v6}, Lj$/util/stream/IntStream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v5

    check-cast v5, Lj$/util/stream/IntStream;

    .line 247
    return-object v5
.end method

.method public static varargs concat([Lj$/util/stream/LongStream;)Lj$/util/stream/LongStream;
    .locals 11
    .param p0, "streams"    # [Lj$/util/stream/LongStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streams"
        }
    .end annotation

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "isParallel":Z
    const/16 v1, 0x150

    .line 269
    .local v1, "characteristics":I
    const-wide/16 v2, 0x0

    .line 270
    .local v2, "estimatedSize":J
    new-instance v4, Lcom/google/common/collect/ImmutableList$Builder;

    array-length v5, p0

    invoke-direct {v4, v5}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 272
    .local v4, "splitrsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/util/Spliterator$OfLong;>;"
    array-length v5, p0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, p0, v6

    .line 273
    .local v7, "stream":Lj$/util/stream/LongStream;
    invoke-interface {v7}, Lj$/util/stream/LongStream;->isParallel()Z

    move-result v8

    or-int/2addr v0, v8

    .line 274
    invoke-interface {v7}, Lj$/util/stream/LongStream;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v8

    .line 275
    .local v8, "splitr":Lj$/util/Spliterator$OfLong;
    invoke-virtual {v4, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 276
    invoke-interface {v8}, Lj$/util/Spliterator$OfLong;->characteristics()I

    move-result v9

    and-int/2addr v1, v9

    .line 277
    invoke-interface {v8}, Lj$/util/Spliterator$OfLong;->estimateSize()J

    move-result-wide v9

    invoke-static {v2, v3, v9, v10}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v2

    .line 272
    .end local v7    # "stream":Lj$/util/stream/LongStream;
    .end local v8    # "splitr":Lj$/util/Spliterator$OfLong;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 279
    :cond_0
    nop

    .line 281
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->spliterator()Lj$/util/Spliterator;

    move-result-object v5

    new-instance v6, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda11;

    invoke-direct {v6}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda11;-><init>()V

    .line 280
    invoke-static {v5, v6, v1, v2, v3}, Lcom/google/common/collect/CollectSpliterators;->flatMapToLong(Lj$/util/Spliterator;Ljava/util/function/Function;IJ)Lj$/util/Spliterator$OfLong;

    move-result-object v5

    .line 279
    invoke-static {v5, v0}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v5

    new-instance v6, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda12;

    invoke-direct {v6, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda12;-><init>([Lj$/util/stream/LongStream;)V

    .line 286
    invoke-interface {v5, v6}, Lj$/util/stream/LongStream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v5

    check-cast v5, Lj$/util/stream/LongStream;

    .line 279
    return-object v5
.end method

.method public static varargs concat([Lj$/util/stream/Stream;)Lj$/util/stream/Stream;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lj$/util/stream/Stream<",
            "+TT;>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 203
    .local p0, "streams":[Lj$/util/stream/Stream;, "[Ljava/util/stream/Stream<+TT;>;"
    const/4 v0, 0x0

    .line 204
    .local v0, "isParallel":Z
    const/16 v1, 0x150

    .line 205
    .local v1, "characteristics":I
    const-wide/16 v2, 0x0

    .line 206
    .local v2, "estimatedSize":J
    new-instance v4, Lcom/google/common/collect/ImmutableList$Builder;

    array-length v5, p0

    invoke-direct {v4, v5}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 208
    .local v4, "splitrsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/util/Spliterator<+TT;>;>;"
    array-length v5, p0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, p0, v6

    .line 209
    .local v7, "stream":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<+TT;>;"
    invoke-interface {v7}, Lj$/util/stream/Stream;->isParallel()Z

    move-result v8

    or-int/2addr v0, v8

    .line 210
    invoke-interface {v7}, Lj$/util/stream/Stream;->spliterator()Lj$/util/Spliterator;

    move-result-object v8

    .line 211
    .local v8, "splitr":Lj$/util/Spliterator;, "Ljava/util/Spliterator<+TT;>;"
    invoke-virtual {v4, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 212
    invoke-interface {v8}, Lj$/util/Spliterator;->characteristics()I

    move-result v9

    and-int/2addr v1, v9

    .line 213
    invoke-interface {v8}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v9

    invoke-static {v2, v3, v9, v10}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v2

    .line 208
    .end local v7    # "stream":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<+TT;>;"
    .end local v8    # "splitr":Lj$/util/Spliterator;, "Ljava/util/Spliterator<+TT;>;"
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 215
    :cond_0
    nop

    .line 217
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->spliterator()Lj$/util/Spliterator;

    move-result-object v5

    new-instance v6, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda14;

    invoke-direct {v6}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda14;-><init>()V

    .line 216
    invoke-static {v5, v6, v1, v2, v3}, Lcom/google/common/collect/CollectSpliterators;->flatMap(Lj$/util/Spliterator;Ljava/util/function/Function;IJ)Lj$/util/Spliterator;

    move-result-object v5

    .line 215
    invoke-static {v5, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda15;

    invoke-direct {v6, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda15;-><init>([Lj$/util/stream/Stream;)V

    .line 222
    invoke-interface {v5, v6}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v5

    check-cast v5, Lj$/util/stream/Stream;

    .line 215
    return-object v5
.end method

.method public static findLast(Lj$/util/stream/Stream;)Lj$/util/Optional;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/Stream<",
            "TT;>;)",
            "Lj$/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 905
    .local p0, "stream":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<TT;>;"
    new-instance v0, Lcom/google/common/collect/Streams$1OptionalState;

    invoke-direct {v0}, Lcom/google/common/collect/Streams$1OptionalState;-><init>()V

    .line 907
    .local v0, "state":Lcom/google/common/collect/Streams$1OptionalState;
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 908
    .local v1, "splits":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/util/Spliterator<TT;>;>;"
    invoke-interface {p0}, Lj$/util/stream/Stream;->spliterator()Lj$/util/Spliterator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 910
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 911
    invoke-interface {v1}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/util/Spliterator;

    .line 913
    .local v2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-interface {v2}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    .line 914
    goto :goto_0

    .line 919
    :cond_1
    const/16 v3, 0x4000

    invoke-interface {v2, v3}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 922
    :goto_1
    invoke-interface {v2}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v3

    .line 923
    .local v3, "prefix":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-nez v4, :cond_2

    .line 924
    goto :goto_2

    .line 925
    :cond_2
    invoke-interface {v2}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-nez v4, :cond_3

    .line 926
    move-object v2, v3

    .line 927
    goto :goto_2

    .line 929
    .end local v3    # "prefix":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    :cond_3
    goto :goto_1

    .line 932
    :cond_4
    :goto_2
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda4;-><init>(Lcom/google/common/collect/Streams$1OptionalState;)V

    invoke-interface {v2, v3}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 933
    invoke-virtual {v0}, Lcom/google/common/collect/Streams$1OptionalState;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v3

    return-object v3

    .line 936
    :cond_5
    invoke-interface {v2}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v3

    .line 937
    .restart local v3    # "prefix":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    if-eqz v3, :cond_7

    invoke-interface {v3}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-nez v4, :cond_6

    goto :goto_3

    .line 946
    :cond_6
    invoke-interface {v1, v3}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 947
    invoke-interface {v1, v2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 948
    .end local v2    # "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .end local v3    # "prefix":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    goto :goto_0

    .line 939
    .restart local v2    # "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .restart local v3    # "prefix":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    :cond_7
    :goto_3
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda4;-><init>(Lcom/google/common/collect/Streams$1OptionalState;)V

    invoke-interface {v2, v4}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 940
    iget-boolean v4, v0, Lcom/google/common/collect/Streams$1OptionalState;->set:Z

    if-eqz v4, :cond_0

    .line 941
    invoke-virtual {v0}, Lcom/google/common/collect/Streams$1OptionalState;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v4

    return-object v4

    .line 949
    .end local v2    # "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .end local v3    # "prefix":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    :cond_8
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v2

    return-object v2
.end method

.method public static findLast(Lj$/util/stream/DoubleStream;)Lj$/util/OptionalDouble;
    .locals 3
    .param p0, "stream"    # Lj$/util/stream/DoubleStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .line 1002
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->boxed()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Streams;->findLast(Lj$/util/stream/Stream;)Lj$/util/Optional;

    move-result-object v0

    .line 1003
    .local v0, "boxedLast":Lj$/util/Optional;, "Ljava/util/Optional<Ljava/lang/Double;>;"
    new-instance v1, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    invoke-static {}, Lj$/util/OptionalDouble;->empty()Lj$/util/OptionalDouble;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/OptionalDouble;

    return-object v1
.end method

.method public static findLast(Lj$/util/stream/IntStream;)Lj$/util/OptionalInt;
    .locals 3
    .param p0, "stream"    # Lj$/util/stream/IntStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .line 966
    invoke-interface {p0}, Lj$/util/stream/IntStream;->boxed()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Streams;->findLast(Lj$/util/stream/Stream;)Lj$/util/Optional;

    move-result-object v0

    .line 967
    .local v0, "boxedLast":Lj$/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    invoke-static {}, Lj$/util/OptionalInt;->empty()Lj$/util/OptionalInt;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/OptionalInt;

    return-object v1
.end method

.method public static findLast(Lj$/util/stream/LongStream;)Lj$/util/OptionalLong;
    .locals 3
    .param p0, "stream"    # Lj$/util/stream/LongStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .line 984
    invoke-interface {p0}, Lj$/util/stream/LongStream;->boxed()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Streams;->findLast(Lj$/util/stream/Stream;)Lj$/util/Optional;

    move-result-object v0

    .line 985
    .local v0, "boxedLast":Lj$/util/Optional;, "Ljava/util/Optional<Ljava/lang/Long;>;"
    new-instance v1, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda16;-><init>()V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    invoke-static {}, Lj$/util/OptionalLong;->empty()Lj$/util/OptionalLong;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/OptionalLong;

    return-object v1
.end method

.method public static forEachPair(Lj$/util/stream/Stream;Lj$/util/stream/Stream;Ljava/util/function/BiConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "streamA",
            "streamB",
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/Stream<",
            "TA;>;",
            "Lj$/util/stream/Stream<",
            "TB;>;",
            "Ljava/util/function/BiConsumer<",
            "-TA;-TB;>;)V"
        }
    .end annotation

    .line 412
    .local p0, "streamA":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<TA;>;"
    .local p1, "streamB":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<TB;>;"
    .local p2, "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TA;-TB;>;"
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    invoke-interface {p0}, Lj$/util/stream/Stream;->isParallel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lj$/util/stream/Stream;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 417
    :cond_0
    invoke-interface {p0}, Lj$/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 418
    .local v0, "iterA":Ljava/util/Iterator;, "Ljava/util/Iterator<TA;>;"
    invoke-interface {p1}, Lj$/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 419
    .local v1, "iterB":Ljava/util/Iterator;, "Ljava/util/Iterator<TB;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 420
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 415
    .end local v0    # "iterA":Ljava/util/Iterator;, "Ljava/util/Iterator<TA;>;"
    .end local v1    # "iterB":Ljava/util/Iterator;, "Ljava/util/Iterator<TB;>;"
    :cond_1
    :goto_1
    new-instance v0, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Streams;->zip(Lj$/util/stream/Stream;Lj$/util/stream/Stream;Ljava/util/function/BiFunction;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 423
    :cond_2
    return-void
.end method

.method static synthetic lambda$concat$0(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 0
    .param p0, "splitr"    # Lj$/util/Spliterator;

    .line 218
    return-object p0
.end method

.method static synthetic lambda$concat$1([Lj$/util/stream/Stream;)V
    .locals 0
    .param p0, "streams"    # [Lj$/util/stream/Stream;

    .line 222
    invoke-static {p0}, Lcom/google/common/collect/Streams;->closeAll([Lj$/util/stream/BaseStream;)V

    return-void
.end method

.method static synthetic lambda$concat$2(Lj$/util/Spliterator$OfInt;)Lj$/util/Spliterator$OfInt;
    .locals 0
    .param p0, "splitr"    # Lj$/util/Spliterator$OfInt;

    .line 250
    return-object p0
.end method

.method static synthetic lambda$concat$3([Lj$/util/stream/IntStream;)V
    .locals 0
    .param p0, "streams"    # [Lj$/util/stream/IntStream;

    .line 254
    invoke-static {p0}, Lcom/google/common/collect/Streams;->closeAll([Lj$/util/stream/BaseStream;)V

    return-void
.end method

.method static synthetic lambda$concat$4(Lj$/util/Spliterator$OfLong;)Lj$/util/Spliterator$OfLong;
    .locals 0
    .param p0, "splitr"    # Lj$/util/Spliterator$OfLong;

    .line 282
    return-object p0
.end method

.method static synthetic lambda$concat$5([Lj$/util/stream/LongStream;)V
    .locals 0
    .param p0, "streams"    # [Lj$/util/stream/LongStream;

    .line 286
    invoke-static {p0}, Lcom/google/common/collect/Streams;->closeAll([Lj$/util/stream/BaseStream;)V

    return-void
.end method

.method static synthetic lambda$concat$6(Lj$/util/Spliterator$OfDouble;)Lj$/util/Spliterator$OfDouble;
    .locals 0
    .param p0, "splitr"    # Lj$/util/Spliterator$OfDouble;

    .line 314
    return-object p0
.end method

.method static synthetic lambda$concat$7([Lj$/util/stream/DoubleStream;)V
    .locals 0
    .param p0, "streams"    # [Lj$/util/stream/DoubleStream;

    .line 318
    invoke-static {p0}, Lcom/google/common/collect/Streams;->closeAll([Lj$/util/stream/BaseStream;)V

    return-void
.end method

.method static synthetic lambda$forEachPair$0(Ljava/util/function/BiConsumer;Lcom/google/common/collect/Streams$TemporaryPair;)V
    .locals 2
    .param p0, "consumer"    # Ljava/util/function/BiConsumer;
    .param p1, "pair"    # Lcom/google/common/collect/Streams$TemporaryPair;

    .line 415
    iget-object v0, p1, Lcom/google/common/collect/Streams$TemporaryPair;->a:Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/common/collect/Streams$TemporaryPair;->b:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static mapWithIndex(Lj$/util/stream/DoubleStream;Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;)Lj$/util/stream/Stream;
    .locals 9
    .param p0, "stream"    # Lj$/util/stream/DoubleStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "function"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/DoubleStream;",
            "Lcom/google/common/collect/Streams$DoubleFunctionWithIndex<",
            "TR;>;)",
            "Lj$/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 704
    .local p1, "function":Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;, "Lcom/google/common/collect/Streams$DoubleFunctionWithIndex<TR;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->isParallel()Z

    move-result v0

    .line 707
    .local v0, "isParallel":Z
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v1

    .line 709
    .local v1, "fromSpliterator":Lj$/util/Spliterator$OfDouble;
    const/16 v2, 0x4000

    invoke-interface {v1, v2}, Lj$/util/Spliterator$OfDouble;->hasCharacteristics(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 710
    invoke-static {v1}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator$OfDouble;)Lj$/util/PrimitiveIterator$OfDouble;

    move-result-object v7

    .line 711
    .local v7, "fromIterator":Lj$/util/PrimitiveIterator$OfDouble;
    new-instance v3, Lcom/google/common/collect/Streams$5;

    .line 713
    invoke-interface {v1}, Lj$/util/Spliterator$OfDouble;->estimateSize()J

    move-result-wide v4

    .line 714
    invoke-interface {v1}, Lj$/util/Spliterator$OfDouble;->characteristics()I

    move-result v2

    and-int/lit8 v6, v2, 0x50

    move-object v8, p1

    .end local p1    # "function":Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;, "Lcom/google/common/collect/Streams$DoubleFunctionWithIndex<TR;>;"
    .local v8, "function":Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;, "Lcom/google/common/collect/Streams$DoubleFunctionWithIndex<TR;>;"
    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/Streams$5;-><init>(JILj$/util/PrimitiveIterator$OfDouble;Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;)V

    .line 711
    invoke-static {v3, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object p1

    .line 727
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda7;-><init>(Lj$/util/stream/DoubleStream;)V

    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object p1

    check-cast p1, Lj$/util/stream/Stream;

    .line 711
    return-object p1

    .line 756
    .end local v7    # "fromIterator":Lj$/util/PrimitiveIterator$OfDouble;
    .end local v8    # "function":Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;, "Lcom/google/common/collect/Streams$DoubleFunctionWithIndex<TR;>;"
    .restart local p1    # "function":Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;, "Lcom/google/common/collect/Streams$DoubleFunctionWithIndex<TR;>;"
    :cond_0
    move-object v8, p1

    .end local p1    # "function":Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;, "Lcom/google/common/collect/Streams$DoubleFunctionWithIndex<TR;>;"
    .restart local v8    # "function":Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;, "Lcom/google/common/collect/Streams$DoubleFunctionWithIndex<TR;>;"
    new-instance p1, Lcom/google/common/collect/Streams$4Splitr;

    const-wide/16 v2, 0x0

    invoke-direct {p1, v1, v2, v3, v8}, Lcom/google/common/collect/Streams$4Splitr;-><init>(Lj$/util/Spliterator$OfDouble;JLcom/google/common/collect/Streams$DoubleFunctionWithIndex;)V

    invoke-static {p1, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda7;-><init>(Lj$/util/stream/DoubleStream;)V

    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object p1

    check-cast p1, Lj$/util/stream/Stream;

    return-object p1
.end method

.method public static mapWithIndex(Lj$/util/stream/IntStream;Lcom/google/common/collect/Streams$IntFunctionWithIndex;)Lj$/util/stream/Stream;
    .locals 9
    .param p0, "stream"    # Lj$/util/stream/IntStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "function"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/IntStream;",
            "Lcom/google/common/collect/Streams$IntFunctionWithIndex<",
            "TR;>;)",
            "Lj$/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 544
    .local p1, "function":Lcom/google/common/collect/Streams$IntFunctionWithIndex;, "Lcom/google/common/collect/Streams$IntFunctionWithIndex<TR;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    invoke-interface {p0}, Lj$/util/stream/IntStream;->isParallel()Z

    move-result v0

    .line 547
    .local v0, "isParallel":Z
    invoke-interface {p0}, Lj$/util/stream/IntStream;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v1

    .line 549
    .local v1, "fromSpliterator":Lj$/util/Spliterator$OfInt;
    const/16 v2, 0x4000

    invoke-interface {v1, v2}, Lj$/util/Spliterator$OfInt;->hasCharacteristics(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 550
    invoke-static {v1}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator$OfInt;)Lj$/util/PrimitiveIterator$OfInt;

    move-result-object v7

    .line 551
    .local v7, "fromIterator":Lj$/util/PrimitiveIterator$OfInt;
    new-instance v3, Lcom/google/common/collect/Streams$3;

    .line 553
    invoke-interface {v1}, Lj$/util/Spliterator$OfInt;->estimateSize()J

    move-result-wide v4

    .line 554
    invoke-interface {v1}, Lj$/util/Spliterator$OfInt;->characteristics()I

    move-result v2

    and-int/lit8 v6, v2, 0x50

    move-object v8, p1

    .end local p1    # "function":Lcom/google/common/collect/Streams$IntFunctionWithIndex;, "Lcom/google/common/collect/Streams$IntFunctionWithIndex<TR;>;"
    .local v8, "function":Lcom/google/common/collect/Streams$IntFunctionWithIndex;, "Lcom/google/common/collect/Streams$IntFunctionWithIndex<TR;>;"
    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/Streams$3;-><init>(JILj$/util/PrimitiveIterator$OfInt;Lcom/google/common/collect/Streams$IntFunctionWithIndex;)V

    .line 551
    invoke-static {v3, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object p1

    .line 567
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda5;-><init>(Lj$/util/stream/IntStream;)V

    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object p1

    check-cast p1, Lj$/util/stream/Stream;

    .line 551
    return-object p1

    .line 596
    .end local v7    # "fromIterator":Lj$/util/PrimitiveIterator$OfInt;
    .end local v8    # "function":Lcom/google/common/collect/Streams$IntFunctionWithIndex;, "Lcom/google/common/collect/Streams$IntFunctionWithIndex<TR;>;"
    .restart local p1    # "function":Lcom/google/common/collect/Streams$IntFunctionWithIndex;, "Lcom/google/common/collect/Streams$IntFunctionWithIndex<TR;>;"
    :cond_0
    move-object v8, p1

    .end local p1    # "function":Lcom/google/common/collect/Streams$IntFunctionWithIndex;, "Lcom/google/common/collect/Streams$IntFunctionWithIndex<TR;>;"
    .restart local v8    # "function":Lcom/google/common/collect/Streams$IntFunctionWithIndex;, "Lcom/google/common/collect/Streams$IntFunctionWithIndex<TR;>;"
    new-instance p1, Lcom/google/common/collect/Streams$2Splitr;

    const-wide/16 v2, 0x0

    invoke-direct {p1, v1, v2, v3, v8}, Lcom/google/common/collect/Streams$2Splitr;-><init>(Lj$/util/Spliterator$OfInt;JLcom/google/common/collect/Streams$IntFunctionWithIndex;)V

    invoke-static {p1, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda5;-><init>(Lj$/util/stream/IntStream;)V

    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object p1

    check-cast p1, Lj$/util/stream/Stream;

    return-object p1
.end method

.method public static mapWithIndex(Lj$/util/stream/LongStream;Lcom/google/common/collect/Streams$LongFunctionWithIndex;)Lj$/util/stream/Stream;
    .locals 9
    .param p0, "stream"    # Lj$/util/stream/LongStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "function"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/LongStream;",
            "Lcom/google/common/collect/Streams$LongFunctionWithIndex<",
            "TR;>;)",
            "Lj$/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 624
    .local p1, "function":Lcom/google/common/collect/Streams$LongFunctionWithIndex;, "Lcom/google/common/collect/Streams$LongFunctionWithIndex<TR;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    invoke-interface {p0}, Lj$/util/stream/LongStream;->isParallel()Z

    move-result v0

    .line 627
    .local v0, "isParallel":Z
    invoke-interface {p0}, Lj$/util/stream/LongStream;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v1

    .line 629
    .local v1, "fromSpliterator":Lj$/util/Spliterator$OfLong;
    const/16 v2, 0x4000

    invoke-interface {v1, v2}, Lj$/util/Spliterator$OfLong;->hasCharacteristics(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 630
    invoke-static {v1}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator$OfLong;)Lj$/util/PrimitiveIterator$OfLong;

    move-result-object v7

    .line 631
    .local v7, "fromIterator":Lj$/util/PrimitiveIterator$OfLong;
    new-instance v3, Lcom/google/common/collect/Streams$4;

    .line 633
    invoke-interface {v1}, Lj$/util/Spliterator$OfLong;->estimateSize()J

    move-result-wide v4

    .line 634
    invoke-interface {v1}, Lj$/util/Spliterator$OfLong;->characteristics()I

    move-result v2

    and-int/lit8 v6, v2, 0x50

    move-object v8, p1

    .end local p1    # "function":Lcom/google/common/collect/Streams$LongFunctionWithIndex;, "Lcom/google/common/collect/Streams$LongFunctionWithIndex<TR;>;"
    .local v8, "function":Lcom/google/common/collect/Streams$LongFunctionWithIndex;, "Lcom/google/common/collect/Streams$LongFunctionWithIndex<TR;>;"
    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/Streams$4;-><init>(JILj$/util/PrimitiveIterator$OfLong;Lcom/google/common/collect/Streams$LongFunctionWithIndex;)V

    .line 631
    invoke-static {v3, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object p1

    .line 647
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda8;-><init>(Lj$/util/stream/LongStream;)V

    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object p1

    check-cast p1, Lj$/util/stream/Stream;

    .line 631
    return-object p1

    .line 676
    .end local v7    # "fromIterator":Lj$/util/PrimitiveIterator$OfLong;
    .end local v8    # "function":Lcom/google/common/collect/Streams$LongFunctionWithIndex;, "Lcom/google/common/collect/Streams$LongFunctionWithIndex<TR;>;"
    .restart local p1    # "function":Lcom/google/common/collect/Streams$LongFunctionWithIndex;, "Lcom/google/common/collect/Streams$LongFunctionWithIndex<TR;>;"
    :cond_0
    move-object v8, p1

    .end local p1    # "function":Lcom/google/common/collect/Streams$LongFunctionWithIndex;, "Lcom/google/common/collect/Streams$LongFunctionWithIndex<TR;>;"
    .restart local v8    # "function":Lcom/google/common/collect/Streams$LongFunctionWithIndex;, "Lcom/google/common/collect/Streams$LongFunctionWithIndex<TR;>;"
    new-instance p1, Lcom/google/common/collect/Streams$3Splitr;

    const-wide/16 v2, 0x0

    invoke-direct {p1, v1, v2, v3, v8}, Lcom/google/common/collect/Streams$3Splitr;-><init>(Lj$/util/Spliterator$OfLong;JLcom/google/common/collect/Streams$LongFunctionWithIndex;)V

    invoke-static {p1, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda8;-><init>(Lj$/util/stream/LongStream;)V

    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object p1

    check-cast p1, Lj$/util/stream/Stream;

    return-object p1
.end method

.method public static mapWithIndex(Lj$/util/stream/Stream;Lcom/google/common/collect/Streams$FunctionWithIndex;)Lj$/util/stream/Stream;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "function"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/Stream<",
            "TT;>;",
            "Lcom/google/common/collect/Streams$FunctionWithIndex<",
            "-TT;+TR;>;)",
            "Lj$/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 460
    .local p0, "stream":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<TT;>;"
    .local p1, "function":Lcom/google/common/collect/Streams$FunctionWithIndex;, "Lcom/google/common/collect/Streams$FunctionWithIndex<-TT;+TR;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    invoke-interface {p0}, Lj$/util/stream/Stream;->isParallel()Z

    move-result v0

    .line 463
    .local v0, "isParallel":Z
    invoke-interface {p0}, Lj$/util/stream/Stream;->spliterator()Lj$/util/Spliterator;

    move-result-object v1

    .line 465
    .local v1, "fromSpliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    const/16 v2, 0x4000

    invoke-interface {v1, v2}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 466
    invoke-static {v1}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v7

    .line 467
    .local v7, "fromIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    new-instance v3, Lcom/google/common/collect/Streams$2;

    .line 469
    invoke-interface {v1}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v4

    .line 470
    invoke-interface {v1}, Lj$/util/Spliterator;->characteristics()I

    move-result v2

    and-int/lit8 v6, v2, 0x50

    move-object v8, p1

    .end local p1    # "function":Lcom/google/common/collect/Streams$FunctionWithIndex;, "Lcom/google/common/collect/Streams$FunctionWithIndex<-TT;+TR;>;"
    .local v8, "function":Lcom/google/common/collect/Streams$FunctionWithIndex;, "Lcom/google/common/collect/Streams$FunctionWithIndex<-TT;+TR;>;"
    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/Streams$2;-><init>(JILjava/util/Iterator;Lcom/google/common/collect/Streams$FunctionWithIndex;)V

    .line 467
    invoke-static {v3, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object p1

    .line 483
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda13;-><init>(Lj$/util/stream/Stream;)V

    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object p1

    check-cast p1, Lj$/util/stream/Stream;

    .line 467
    return-object p1

    .line 516
    .end local v7    # "fromIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .end local v8    # "function":Lcom/google/common/collect/Streams$FunctionWithIndex;, "Lcom/google/common/collect/Streams$FunctionWithIndex<-TT;+TR;>;"
    .restart local p1    # "function":Lcom/google/common/collect/Streams$FunctionWithIndex;, "Lcom/google/common/collect/Streams$FunctionWithIndex<-TT;+TR;>;"
    :cond_0
    move-object v8, p1

    .end local p1    # "function":Lcom/google/common/collect/Streams$FunctionWithIndex;, "Lcom/google/common/collect/Streams$FunctionWithIndex<-TT;+TR;>;"
    .restart local v8    # "function":Lcom/google/common/collect/Streams$FunctionWithIndex;, "Lcom/google/common/collect/Streams$FunctionWithIndex<-TT;+TR;>;"
    new-instance p1, Lcom/google/common/collect/Streams$1Splitr;

    const-wide/16 v2, 0x0

    invoke-direct {p1, v1, v2, v3, v8}, Lcom/google/common/collect/Streams$1Splitr;-><init>(Lj$/util/Spliterator;JLcom/google/common/collect/Streams$FunctionWithIndex;)V

    invoke-static {p1, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda13;-><init>(Lj$/util/stream/Stream;)V

    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object p1

    check-cast p1, Lj$/util/stream/Stream;

    return-object p1
.end method

.method public static stream(Lj$/util/OptionalDouble;)Lj$/util/stream/DoubleStream;
    .locals 2
    .param p0, "optional"    # Lj$/util/OptionalDouble;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "optional"
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lj$/util/OptionalDouble;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj$/util/OptionalDouble;->getAsDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/stream/DoubleStream$-CC;->of(D)Lj$/util/stream/DoubleStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lj$/util/stream/DoubleStream$-CC;->empty()Lj$/util/stream/DoubleStream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static stream(Lj$/util/OptionalInt;)Lj$/util/stream/IntStream;
    .locals 1
    .param p0, "optional"    # Lj$/util/OptionalInt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "optional"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lj$/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj$/util/OptionalInt;->getAsInt()I

    move-result v0

    invoke-static {v0}, Lj$/util/stream/IntStream$-CC;->of(I)Lj$/util/stream/IntStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lj$/util/stream/IntStream$-CC;->empty()Lj$/util/stream/IntStream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static stream(Lj$/util/OptionalLong;)Lj$/util/stream/LongStream;
    .locals 2
    .param p0, "optional"    # Lj$/util/OptionalLong;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "optional"
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lj$/util/OptionalLong;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj$/util/OptionalLong;->getAsLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/stream/LongStream$-CC;->of(J)Lj$/util/stream/LongStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lj$/util/stream/LongStream$-CC;->empty()Lj$/util/stream/LongStream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static stream(Lcom/google/common/base/Optional;)Lj$/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "optional"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Optional<",
            "TT;>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 106
    .local p0, "optional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Stream$-CC;->of(Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lj$/util/stream/Stream$-CC;->empty()Lj$/util/stream/Stream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static stream(Lj$/util/Optional;)Lj$/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "optional"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/Optional<",
            "TT;>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 120
    .local p0, "optional":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    invoke-virtual {p0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Stream$-CC;->of(Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lj$/util/stream/Stream$-CC;->empty()Lj$/util/stream/Stream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static stream(Ljava/lang/Iterable;)Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iterable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 75
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 76
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {p0}, Lj$/lang/Iterable$-EL;->spliterator(Ljava/lang/Iterable;)Lj$/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0
.end method

.method public static stream(Ljava/util/Collection;)Lj$/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static stream(Ljava/util/Iterator;)Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iterator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 97
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lj$/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Lj$/util/Spliterator;

    move-result-object v1

    invoke-static {v1, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lj$/util/stream/Stream;Lj$/util/stream/Stream;Ljava/util/function/BiFunction;)Lj$/util/stream/Stream;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "streamA",
            "streamB",
            "function"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/Stream<",
            "TA;>;",
            "Lj$/util/stream/Stream<",
            "TB;>;",
            "Ljava/util/function/BiFunction<",
            "-TA;-TB;TR;>;)",
            "Lj$/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 350
    .local p0, "streamA":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<TA;>;"
    .local p1, "streamB":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<TB;>;"
    .local p2, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TA;-TB;TR;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-interface {p0}, Lj$/util/stream/Stream;->isParallel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lj$/util/stream/Stream;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 354
    .local v0, "isParallel":Z
    :goto_1
    invoke-interface {p0}, Lj$/util/stream/Stream;->spliterator()Lj$/util/Spliterator;

    move-result-object v1

    .line 355
    .local v1, "splitrA":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TA;>;"
    invoke-interface {p1}, Lj$/util/stream/Stream;->spliterator()Lj$/util/Spliterator;

    move-result-object v2

    .line 356
    .local v2, "splitrB":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TB;>;"
    nop

    .line 357
    invoke-interface {v1}, Lj$/util/Spliterator;->characteristics()I

    move-result v3

    .line 358
    invoke-interface {v2}, Lj$/util/Spliterator;->characteristics()I

    move-result v4

    and-int/2addr v3, v4

    and-int/lit8 v7, v3, 0x50

    .line 360
    .local v7, "characteristics":I
    invoke-static {v1}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v8

    .line 361
    .local v8, "itrA":Ljava/util/Iterator;, "Ljava/util/Iterator<TA;>;"
    invoke-static {v2}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v9

    .line 362
    .local v9, "itrB":Ljava/util/Iterator;, "Ljava/util/Iterator<TB;>;"
    new-instance v4, Lcom/google/common/collect/Streams$1;

    .line 364
    invoke-interface {v1}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v5

    invoke-interface {v2}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v10

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    move-object v10, p2

    .end local p2    # "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TA;-TB;TR;>;"
    .local v10, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TA;-TB;TR;>;"
    invoke-direct/range {v4 .. v10}, Lcom/google/common/collect/Streams$1;-><init>(JILjava/util/Iterator;Ljava/util/Iterator;Ljava/util/function/BiFunction;)V

    .line 362
    invoke-static {v4, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object p2

    .line 375
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda13;-><init>(Lj$/util/stream/Stream;)V

    invoke-interface {p2, v3}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object p2

    check-cast p2, Lj$/util/stream/Stream;

    .line 376
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda13;

    invoke-direct {v3, p1}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda13;-><init>(Lj$/util/stream/Stream;)V

    invoke-interface {p2, v3}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object p2

    check-cast p2, Lj$/util/stream/Stream;

    .line 362
    return-object p2
.end method
