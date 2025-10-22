.class abstract Lj$/util/stream/AbstractSpinedBuffer;
.super Ljava/lang/Object;
.source "AbstractSpinedBuffer.java"


# static fields
.field public static final MAX_CHUNK_POWER:I = 0x1e

.field public static final MIN_CHUNK_POWER:I = 0x4

.field public static final MIN_CHUNK_SIZE:I = 0x10

.field public static final MIN_SPINE_SIZE:I = 0x8


# instance fields
.field protected elementIndex:I

.field protected final initialChunkPower:I

.field protected priorElementCount:[J

.field protected spineIndex:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x4

    iput v0, p0, Lj$/util/stream/AbstractSpinedBuffer;->initialChunkPower:I

    .line 82
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 3
    .param p1, "initialCapacity"    # I

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-ltz p1, :cond_0

    .line 93
    add-int/lit8 v0, p1, -0x1

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    .line 93
    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lj$/util/stream/AbstractSpinedBuffer;->initialChunkPower:I

    .line 95
    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected chunkSize(I)I
    .locals 3
    .param p1, "n"    # I

    .line 117
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget v1, p0, Lj$/util/stream/AbstractSpinedBuffer;->initialChunkPower:I

    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    .line 118
    :cond_1
    :goto_0
    iget v1, p0, Lj$/util/stream/AbstractSpinedBuffer;->initialChunkPower:I

    .line 119
    :goto_1
    nop

    .line 120
    .local v1, "power":I
    shl-int/2addr v0, v1

    return v0
.end method

.method public abstract clear()V
.end method

.method public count()J
    .locals 5

    .line 108
    iget v0, p0, Lj$/util/stream/AbstractSpinedBuffer;->spineIndex:I

    if-nez v0, :cond_0

    .line 109
    iget v0, p0, Lj$/util/stream/AbstractSpinedBuffer;->elementIndex:I

    int-to-long v0, v0

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lj$/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    iget v1, p0, Lj$/util/stream/AbstractSpinedBuffer;->spineIndex:I

    aget-wide v1, v0, v1

    iget v0, p0, Lj$/util/stream/AbstractSpinedBuffer;->elementIndex:I

    int-to-long v3, v0

    add-long/2addr v1, v3

    move-wide v0, v1

    .line 108
    :goto_0
    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 101
    iget v0, p0, Lj$/util/stream/AbstractSpinedBuffer;->spineIndex:I

    if-nez v0, :cond_0

    iget v0, p0, Lj$/util/stream/AbstractSpinedBuffer;->elementIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
