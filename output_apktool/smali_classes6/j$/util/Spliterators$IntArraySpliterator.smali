.class final Lj$/util/Spliterators$IntArraySpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Lj$/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntArraySpliterator"
.end annotation


# instance fields
.field private final array:[I

.field private final characteristics:I

.field private final fence:I

.field private index:I


# direct methods
.method public constructor <init>([II)V
    .locals 2
    .param p1, "array"    # [I
    .param p2, "additionalCharacteristics"    # I

    .line 998
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1, p2}, Lj$/util/Spliterators$IntArraySpliterator;-><init>([IIII)V

    .line 999
    return-void
.end method

.method public constructor <init>([IIII)V
    .locals 1
    .param p1, "array"    # [I
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "additionalCharacteristics"    # I

    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1011
    iput-object p1, p0, Lj$/util/Spliterators$IntArraySpliterator;->array:[I

    .line 1012
    iput p2, p0, Lj$/util/Spliterators$IntArraySpliterator;->index:I

    .line 1013
    iput p3, p0, Lj$/util/Spliterators$IntArraySpliterator;->fence:I

    .line 1014
    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lj$/util/Spliterators$IntArraySpliterator;->characteristics:I

    .line 1015
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 1052
    iget v0, p0, Lj$/util/Spliterators$IntArraySpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 1048
    iget v0, p0, Lj$/util/Spliterators$IntArraySpliterator;->fence:I

    iget v1, p0, Lj$/util/Spliterators$IntArraySpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 984
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/Spliterators$IntArraySpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfInt$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 4
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 1028
    if-eqz p1, :cond_2

    .line 1030
    iget-object v0, p0, Lj$/util/Spliterators$IntArraySpliterator;->array:[I

    move-object v1, v0

    .local v1, "a":[I
    array-length v0, v0

    iget v2, p0, Lj$/util/Spliterators$IntArraySpliterator;->fence:I

    move v3, v2

    .local v3, "hi":I
    if-lt v0, v2, :cond_1

    iget v0, p0, Lj$/util/Spliterators$IntArraySpliterator;->index:I

    move v2, v0

    .local v2, "i":I
    if-ltz v0, :cond_1

    iput v3, p0, Lj$/util/Spliterators$IntArraySpliterator;->index:I

    if-ge v2, v3, :cond_1

    .line 1032
    :cond_0
    aget v0, v1, v2

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v3, :cond_0

    .line 1034
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 1029
    .end local v1    # "a":[I
    .end local v3    # "hi":I
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1057
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lj$/util/Spliterators$IntArraySpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    const/4 v0, 0x0

    return-object v0

    .line 1059
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public synthetic getExactSizeIfKnown()J
    .locals 2

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getExactSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$hasCharacteristics(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 984
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/Spliterators$IntArraySpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$OfInt$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 3
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 1038
    if-eqz p1, :cond_1

    .line 1040
    iget v0, p0, Lj$/util/Spliterators$IntArraySpliterator;->index:I

    if-ltz v0, :cond_0

    iget v0, p0, Lj$/util/Spliterators$IntArraySpliterator;->index:I

    iget v1, p0, Lj$/util/Spliterators$IntArraySpliterator;->fence:I

    if-ge v0, v1, :cond_0

    .line 1041
    iget-object v0, p0, Lj$/util/Spliterators$IntArraySpliterator;->array:[I

    iget v1, p0, Lj$/util/Spliterators$IntArraySpliterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/util/Spliterators$IntArraySpliterator;->index:I

    aget v0, v0, v1

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1042
    const/4 v0, 0x1

    return v0

    .line 1044
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1039
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public trySplit()Lj$/util/Spliterator$OfInt;
    .locals 5

    .line 1019
    iget v0, p0, Lj$/util/Spliterators$IntArraySpliterator;->index:I

    .local v0, "lo":I
    iget v1, p0, Lj$/util/Spliterators$IntArraySpliterator;->fence:I

    add-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x1

    .line 1020
    .local v1, "mid":I
    if-lt v0, v1, :cond_0

    .line 1021
    const/4 v2, 0x0

    goto :goto_0

    .line 1022
    :cond_0
    new-instance v2, Lj$/util/Spliterators$IntArraySpliterator;

    iget-object v3, p0, Lj$/util/Spliterators$IntArraySpliterator;->array:[I

    iput v1, p0, Lj$/util/Spliterators$IntArraySpliterator;->index:I

    iget v4, p0, Lj$/util/Spliterators$IntArraySpliterator;->characteristics:I

    invoke-direct {v2, v3, v0, v1, v4}, Lj$/util/Spliterators$IntArraySpliterator;-><init>([IIII)V

    .line 1020
    :goto_0
    return-object v2
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 984
    invoke-virtual {p0}, Lj$/util/Spliterators$IntArraySpliterator;->trySplit()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 984
    invoke-virtual {p0}, Lj$/util/Spliterators$IntArraySpliterator;->trySplit()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
