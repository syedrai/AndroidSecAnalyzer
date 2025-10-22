.class final Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;
.super Ljava/lang/Object;
.source "BloomFilterStrategies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/BloomFilterStrategies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LockFreeBitArray"
.end annotation


# static fields
.field private static final LONG_ADDRESSABLE_BITS:I = 0x6


# instance fields
.field private final bitCount:Lcom/google/common/hash/LongAddable;

.field final data:Ljava/util/concurrent/atomic/AtomicLongArray;


# direct methods
.method constructor <init>(J)V
    .locals 4
    .param p1, "bits"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bits"
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "data length is zero!"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 169
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 170
    const-wide/16 v2, 0x40

    invoke-static {p1, p2, v2, v3, v1}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 171
    invoke-static {}, Lcom/google/common/hash/LongAddables;->create()Lcom/google/common/hash/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->bitCount:Lcom/google/common/hash/LongAddable;

    .line 172
    return-void
.end method

.method constructor <init>([J)V
    .locals 8
    .param p1, "data"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "data length is zero!"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 177
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>([J)V

    iput-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 178
    invoke-static {}, Lcom/google/common/hash/LongAddables;->create()Lcom/google/common/hash/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->bitCount:Lcom/google/common/hash/LongAddable;

    .line 179
    const-wide/16 v2, 0x0

    .line 180
    .local v2, "bitCount":J
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_1

    aget-wide v4, p1, v1

    .line 181
    .local v4, "value":J
    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 180
    .end local v4    # "value":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->bitCount:Lcom/google/common/hash/LongAddable;

    invoke-interface {v0, v2, v3}, Lcom/google/common/hash/LongAddable;->add(J)V

    .line 184
    return-void
.end method

.method public static toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J
    .locals 4
    .param p0, "atomicLongArray"    # Ljava/util/concurrent/atomic/AtomicLongArray;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atomicLongArray"
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v0

    new-array v0, v0, [J

    .line 221
    .local v0, "array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 222
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method bitCount()J
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->bitCount:Lcom/google/common/hash/LongAddable;

    invoke-interface {v0}, Lcom/google/common/hash/LongAddable;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method bitSize()J
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x40

    mul-long v0, v0, v2

    return-wide v0
.end method

.method copy()Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;
    .locals 2

    .line 245
    new-instance v0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;

    iget-object v1, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v1}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;-><init>([J)V

    return-object v0
.end method

.method dataLength()I
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 298
    instance-of v0, p1, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;

    if-eqz v0, :cond_0

    .line 299
    move-object v0, p1

    check-cast v0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;

    .line 301
    .local v0, "lockFreeBitArray":Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;
    iget-object v1, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v1}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J

    move-result-object v1

    iget-object v2, v0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v2}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    return v1

    .line 303
    .end local v0    # "lockFreeBitArray":Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method get(J)Z
    .locals 5
    .param p1, "bitIndex"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitIndex"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    const/4 v1, 0x6

    ushr-long v1, p1, v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    long-to-int v4, p1

    shl-long/2addr v2, v4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v0}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    return v0
.end method

.method putAll(Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;)V
    .locals 4
    .param p1, "other"    # Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 259
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v0

    iget-object v1, p1, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 261
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v1

    iget-object v2, p1, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 262
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v2

    .line 258
    const-string v3, "BitArrays must be of equal length (%s != %s)"

    invoke-static {v0, v3, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 263
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 264
    iget-object v1, p1, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->putData(IJ)V

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method putData(IJ)V
    .locals 10
    .param p1, "i"    # I
    .param p2, "longValue"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "longValue"
        }
    .end annotation

    .line 275
    const/4 v0, 0x1

    .line 277
    .local v0, "changedAnyBits":Z
    :goto_0
    iget-object v1, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v4

    .line 278
    .local v4, "ourLongOld":J
    or-long v6, v4, p2

    .line 279
    .local v6, "ourLongNew":J
    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 280
    const/4 v0, 0x0

    .line 281
    move v3, p1

    goto :goto_1

    .line 283
    :cond_0
    iget-object v2, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    move v3, p1

    .end local p1    # "i":I
    .local v3, "i":I
    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 285
    :goto_1
    if-eqz v0, :cond_1

    .line 286
    invoke-static {v6, v7}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    sub-int/2addr p1, v1

    .line 287
    .local p1, "bitsAdded":I
    iget-object v1, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->bitCount:Lcom/google/common/hash/LongAddable;

    int-to-long v8, p1

    invoke-interface {v1, v8, v9}, Lcom/google/common/hash/LongAddable;->add(J)V

    .line 289
    .end local p1    # "bitsAdded":I
    :cond_1
    return-void

    .line 283
    :cond_2
    move p1, v3

    goto :goto_0
.end method

.method set(J)Z
    .locals 10
    .param p1, "bitIndex"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitIndex"
        }
    .end annotation

    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->get(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 189
    return v1

    .line 192
    :cond_0
    const/4 v0, 0x6

    ushr-long v2, p1, v0

    long-to-int v5, v2

    .line 193
    .local v5, "longIndex":I
    const-wide/16 v2, 0x1

    long-to-int v0, p1

    shl-long/2addr v2, v0

    .line 198
    .local v2, "mask":J
    :cond_1
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v6

    .line 199
    .local v6, "oldValue":J
    or-long v8, v6, v2

    .line 200
    .local v8, "newValue":J
    cmp-long v0, v6, v8

    if-nez v0, :cond_2

    .line 201
    return v1

    .line 203
    :cond_2
    iget-object v4, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual/range {v4 .. v9}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->bitCount:Lcom/google/common/hash/LongAddable;

    invoke-interface {v0}, Lcom/google/common/hash/LongAddable;->increment()V

    .line 207
    const/4 v0, 0x1

    return v0
.end method
