.class public final Lcom/google/common/primitives/ImmutableLongArray$Builder;
.super Ljava/lang/Object;
.source "ImmutableLongArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/ImmutableLongArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private array:[J

.field private count:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialCapacity"
        }
    .end annotation

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    .line 229
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    .line 230
    return-void
.end method

.method private ensureRoomFor(I)V
    .locals 3
    .param p1, "numberToAdd"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numberToAdd"
        }
    .end annotation

    .line 315
    iget v0, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    add-int/2addr v0, p1

    .line 316
    .local v0, "newCount":I
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    iget-object v2, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    array-length v2, v2

    invoke-static {v2, v0}, Lcom/google/common/primitives/ImmutableLongArray$Builder;->expandedCapacity(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    .line 319
    :cond_0
    return-void
.end method

.method private static expandedCapacity(II)I
    .locals 2
    .param p0, "oldCapacity"    # I
    .param p1, "minCapacity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldCapacity",
            "minCapacity"
        }
    .end annotation

    .line 323
    if-ltz p1, :cond_2

    .line 327
    shr-int/lit8 v0, p0, 0x1

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    .line 328
    .local v0, "newCapacity":I
    if-ge v0, p1, :cond_0

    .line 329
    add-int/lit8 v1, p1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    .line 331
    :cond_0
    if-gez v0, :cond_1

    .line 332
    const v0, 0x7fffffff

    .line 334
    :cond_1
    return v0

    .line 324
    .end local v0    # "newCapacity":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "cannot store more than MAX_VALUE elements"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public add(J)Lcom/google/common/primitives/ImmutableLongArray$Builder;
    .locals 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 238
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableLongArray$Builder;->ensureRoomFor(I)V

    .line 239
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    iget v2, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    aput-wide p1, v1, v2

    .line 240
    iget v1, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    .line 241
    return-object p0
.end method

.method public addAll(Lcom/google/common/primitives/ImmutableLongArray;)Lcom/google/common/primitives/ImmutableLongArray$Builder;
    .locals 5
    .param p1, "values"    # Lcom/google/common/primitives/ImmutableLongArray;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 308
    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableLongArray;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableLongArray$Builder;->ensureRoomFor(I)V

    .line 309
    invoke-static {p1}, Lcom/google/common/primitives/ImmutableLongArray;->-$$Nest$fgetarray(Lcom/google/common/primitives/ImmutableLongArray;)[J

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/primitives/ImmutableLongArray;->-$$Nest$fgetstart(Lcom/google/common/primitives/ImmutableLongArray;)I

    move-result v1

    iget-object v2, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    iget v3, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableLongArray;->length()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    iget v0, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableLongArray;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    .line 311
    return-object p0
.end method

.method public addAll(Lj$/util/stream/LongStream;)Lcom/google/common/primitives/ImmutableLongArray$Builder;
    .locals 6
    .param p1, "stream"    # Lj$/util/stream/LongStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .line 293
    invoke-interface {p1}, Lj$/util/stream/LongStream;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    .line 294
    .local v0, "spliterator":Lj$/util/Spliterator$OfLong;
    invoke-interface {v0}, Lj$/util/Spliterator$OfLong;->getExactSizeIfKnown()J

    move-result-wide v1

    .line 295
    .local v1, "size":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 296
    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/common/primitives/ImmutableLongArray$Builder;->ensureRoomFor(I)V

    .line 298
    :cond_0
    new-instance v3, Lcom/google/common/primitives/ImmutableLongArray$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/google/common/primitives/ImmutableLongArray$Builder$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/primitives/ImmutableLongArray$Builder;)V

    invoke-interface {v0, v3}, Lj$/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    .line 299
    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/primitives/ImmutableLongArray$Builder;
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
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableLongArray$Builder;"
        }
    .end annotation

    .line 262
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Long;>;"
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 263
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lcom/google/common/primitives/ImmutableLongArray$Builder;->addAll(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableLongArray$Builder;

    move-result-object v0

    return-object v0

    .line 265
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 266
    .local v1, "value":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/common/primitives/ImmutableLongArray$Builder;->add(J)Lcom/google/common/primitives/ImmutableLongArray$Builder;

    .line 267
    .end local v1    # "value":Ljava/lang/Long;
    goto :goto_0

    .line 268
    :cond_1
    return-object p0
.end method

.method public addAll(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableLongArray$Builder;
    .locals 6
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
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableLongArray$Builder;"
        }
    .end annotation

    .line 277
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableLongArray$Builder;->ensureRoomFor(I)V

    .line 278
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 279
    .local v1, "value":Ljava/lang/Long;
    iget-object v2, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    iget v3, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 280
    .end local v1    # "value":Ljava/lang/Long;
    goto :goto_0

    .line 281
    :cond_0
    return-object p0
.end method

.method public addAll([J)Lcom/google/common/primitives/ImmutableLongArray$Builder;
    .locals 4
    .param p1, "values"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 250
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableLongArray$Builder;->ensureRoomFor(I)V

    .line 251
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    iget v1, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    iget v0, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    .line 253
    return-object p0
.end method

.method public build()Lcom/google/common/primitives/ImmutableLongArray;
    .locals 5

    .line 346
    iget v0, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/primitives/ImmutableLongArray;->-$$Nest$sfgetEMPTY()Lcom/google/common/primitives/ImmutableLongArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/ImmutableLongArray;

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    iget v2, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->count:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/common/primitives/ImmutableLongArray;-><init>([JIILcom/google/common/primitives/ImmutableLongArray-IA;)V

    :goto_0
    return-object v0
.end method
