.class public final Lcom/google/common/primitives/ImmutableDoubleArray;
.super Ljava/lang/Object;
.source "ImmutableDoubleArray.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/ImmutableDoubleArray$Builder;,
        Lcom/google/common/primitives/ImmutableDoubleArray$AsList;
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;


# instance fields
.field private final array:[D

.field private final end:I

.field private final transient start:I


# direct methods
.method static bridge synthetic -$$Nest$fgetarray(Lcom/google/common/primitives/ImmutableDoubleArray;)[D
    .locals 0

    iget-object p0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstart(Lcom/google/common/primitives/ImmutableDoubleArray;)I
    .locals 0

    iget p0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetEMPTY()Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 1

    sget-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smareEqual(DD)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/ImmutableDoubleArray;->areEqual(DD)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 90
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x0

    new-array v1, v1, [D

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    sput-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    return-void
.end method

.method private constructor <init>([D)V
    .locals 2
    .param p1, "array"    # [D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 368
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    .line 369
    return-void
.end method

.method private constructor <init>([DII)V
    .locals 0
    .param p1, "array"    # [D
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "array",
            "start",
            "end"
        }
    .end annotation

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    .line 373
    iput p2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    .line 374
    iput p3, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    .line 375
    return-void
.end method

.method synthetic constructor <init>([DIILcom/google/common/primitives/ImmutableDoubleArray-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    return-void
.end method

.method private static areEqual(DD)Z
    .locals 5
    .param p0, "a"    # D
    .param p2, "b"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 614
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static builder()Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 2

    .line 218
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;-><init>(I)V

    return-object v0
.end method

.method public static builder(I)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 2
    .param p0, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialCapacity"
        }
    .end annotation

    .line 205
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid initialCapacity: %s"

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 206
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;-><init>(I)V

    return-object v0
.end method

.method public static copyOf(Lj$/util/stream/DoubleStream;)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 2
    .param p0, "stream"    # Lj$/util/stream/DoubleStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .line 190
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->toArray()[D

    move-result-object v0

    .line 191
    .local v0, "array":[D
    array-length v1, v0

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-direct {v1, v0}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    :goto_0
    return-object v1
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 1
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
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableDoubleArray;"
        }
    .end annotation

    .line 176
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Double;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 177
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/google/common/primitives/ImmutableDoubleArray;->copyOf(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableDoubleArray;

    move-result-object v0

    return-object v0

    .line 179
    :cond_0
    invoke-static {}, Lcom/google/common/primitives/ImmutableDoubleArray;->builder()Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->build()Lcom/google/common/primitives/ImmutableDoubleArray;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableDoubleArray;
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
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableDoubleArray;"
        }
    .end annotation

    .line 160
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Double;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-static {p0}, Lcom/google/common/primitives/Doubles;->toArray(Ljava/util/Collection;)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    :goto_0
    return-object v0
.end method

.method public static copyOf([D)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 2
    .param p0, "values"    # [D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 153
    array-length v0, p0

    if-nez v0, :cond_0

    .line 154
    sget-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    goto :goto_0

    .line 155
    :cond_0
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    .line 153
    :goto_0
    return-object v0
.end method

.method private isPartialView()Z
    .locals 2

    .line 658
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

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

.method public static of()Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 1

    .line 94
    sget-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    return-object v0
.end method

.method public static of(D)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 3
    .param p0, "e0"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e0"
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x1

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static of(DD)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 3
    .param p0, "e0"    # D
    .param p2, "e1"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "e0",
            "e1"
        }
    .end annotation

    .line 104
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x2

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static of(DDD)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 3
    .param p0, "e0"    # D
    .param p2, "e1"    # D
    .param p4, "e2"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "e0",
            "e1",
            "e2"
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x3

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    const/4 v2, 0x2

    aput-wide p4, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static of(DDDD)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 3
    .param p0, "e0"    # D
    .param p2, "e1"    # D
    .param p4, "e2"    # D
    .param p6, "e3"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e0",
            "e1",
            "e2",
            "e3"
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x4

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    const/4 v2, 0x2

    aput-wide p4, v1, v2

    const/4 v2, 0x3

    aput-wide p6, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static of(DDDDD)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 3
    .param p0, "e0"    # D
    .param p2, "e1"    # D
    .param p4, "e2"    # D
    .param p6, "e3"    # D
    .param p8, "e4"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e0",
            "e1",
            "e2",
            "e3",
            "e4"
        }
    .end annotation

    .line 119
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x5

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    const/4 v2, 0x2

    aput-wide p4, v1, v2

    const/4 v2, 0x3

    aput-wide p6, v1, v2

    const/4 v2, 0x4

    aput-wide p8, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static of(DDDDDD)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 3
    .param p0, "e0"    # D
    .param p2, "e1"    # D
    .param p4, "e2"    # D
    .param p6, "e3"    # D
    .param p8, "e4"    # D
    .param p10, "e5"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e0",
            "e1",
            "e2",
            "e3",
            "e4",
            "e5"
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x6

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    const/4 v2, 0x2

    aput-wide p4, v1, v2

    const/4 v2, 0x3

    aput-wide p6, v1, v2

    const/4 v2, 0x4

    aput-wide p8, v1, v2

    const/4 v2, 0x5

    aput-wide p10, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static varargs of(D[D)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 4
    .param p0, "first"    # D
    .param p2, "rest"    # [D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "first",
            "rest"
        }
    .end annotation

    .line 138
    array-length v0, p2

    const v1, 0x7ffffffe

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "the total number of elements must fit in an int"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 140
    array-length v0, p2

    add-int/2addr v0, v2

    new-array v0, v0, [D

    .line 141
    .local v0, "array":[D
    aput-wide p0, v0, v3

    .line 142
    array-length v1, p2

    invoke-static {p2, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    new-instance v1, Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-direct {v1, v0}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v1
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 499
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;-><init>(Lcom/google/common/primitives/ImmutableDoubleArray;Lcom/google/common/primitives/ImmutableDoubleArray-IA;)V

    return-object v0
.end method

.method public contains(D)Z
    .locals 1
    .param p1, "target"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 431
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/ImmutableDoubleArray;->indexOf(D)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 594
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 595
    return v0

    .line 597
    :cond_0
    instance-of v1, p1, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 598
    return v2

    .line 600
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/common/primitives/ImmutableDoubleArray;

    .line 601
    .local v1, "that":Lcom/google/common/primitives/ImmutableDoubleArray;
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 602
    return v2

    .line 604
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 605
    invoke-virtual {p0, v3}, Lcom/google/common/primitives/ImmutableDoubleArray;->get(I)D

    move-result-wide v4

    invoke-virtual {v1, v3}, Lcom/google/common/primitives/ImmutableDoubleArray;->get(I)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/google/common/primitives/ImmutableDoubleArray;->areEqual(DD)Z

    move-result v4

    if-nez v4, :cond_3

    .line 606
    return v2

    .line 604
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 609
    .end local v3    # "i":I
    :cond_4
    return v0
.end method

.method public forEach(Ljava/util/function/DoubleConsumer;)V
    .locals 4
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumer"
        }
    .end annotation

    .line 441
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    if-ge v0, v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    aget-wide v2, v1, v0

    invoke-interface {p1, v2, v3}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public get(I)D
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 394
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 395
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    add-int/2addr v1, p1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public hashCode()I
    .locals 5

    .line 620
    const/4 v0, 0x1

    .line 621
    .local v0, "hash":I
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    if-ge v1, v2, :cond_0

    .line 622
    mul-int/lit8 v0, v0, 0x1f

    .line 623
    iget-object v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Lcom/google/common/primitives/Doubles$$ExternalSyntheticBackport0;->m(D)I

    move-result v2

    add-int/2addr v0, v2

    .line 621
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 625
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public indexOf(D)I
    .locals 4
    .param p1, "target"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 404
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    if-ge v0, v1, :cond_1

    .line 405
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    aget-wide v2, v1, v0

    invoke-static {v2, v3, p1, p2}, Lcom/google/common/primitives/ImmutableDoubleArray;->areEqual(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    sub-int v1, v0, v1

    return v1

    .line 404
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 384
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastIndexOf(D)I
    .locals 4
    .param p1, "target"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 418
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    if-lt v0, v1, :cond_1

    .line 419
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    aget-wide v2, v1, v0

    invoke-static {v2, v3, p1, p2}, Lcom/google/common/primitives/ImmutableDoubleArray;->areEqual(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    sub-int v1, v0, v1

    return v1

    .line 418
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 423
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public length()I
    .locals 2

    .line 379
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    .line 666
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method spliterator()Lj$/util/Spliterator$OfDouble;
    .locals 4

    .line 483
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    const/16 v3, 0x410

    invoke-static {v0, v1, v2, v3}, Lj$/util/Spliterators;->spliterator([DIII)Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public stream()Lj$/util/stream/DoubleStream;
    .locals 3

    .line 455
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    invoke-static {v0, v1, v2}, Lj$/util/DesugarArrays;->stream([DII)Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public subArray(II)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startIndex",
            "endIndex"
        }
    .end annotation

    .line 471
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 472
    if-ne p1, p2, :cond_0

    .line 473
    sget-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    goto :goto_0

    .line 474
    :cond_0
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    add-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    .line 472
    :goto_0
    return-object v0
.end method

.method public toArray()[D
    .locals 3

    .line 460
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([DII)[D

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 634
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    const-string v0, "[]"

    return-object v0

    .line 637
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 638
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    iget v3, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    aget-wide v3, v2, v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 640
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    add-int/lit8 v1, v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    if-ge v1, v2, :cond_1

    .line 641
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    aget-wide v4, v3, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 640
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 643
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public trimmed()Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 2

    .line 654
    invoke-direct {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->isPartialView()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->toArray()[D

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 662
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->trimmed()Lcom/google/common/primitives/ImmutableDoubleArray;

    move-result-object v0

    return-object v0
.end method
