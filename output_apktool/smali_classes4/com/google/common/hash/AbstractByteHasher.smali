.class abstract Lcom/google/common/hash/AbstractByteHasher;
.super Lcom/google/common/hash/AbstractHasher;
.source "AbstractByteHasher.java"


# instance fields
.field private final scratch:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/google/common/hash/AbstractHasher;-><init>()V

    .line 35
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/AbstractByteHasher;->scratch:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private update(I)Lcom/google/common/hash/Hasher;
    .locals 2
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/google/common/hash/AbstractByteHasher;->scratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/common/hash/AbstractByteHasher;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object v0, p0, Lcom/google/common/hash/AbstractByteHasher;->scratch:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/common/hash/Java8Compatibility;->clear(Ljava/nio/Buffer;)V

    .line 71
    nop

    .line 72
    return-object p0

    .line 70
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/hash/AbstractByteHasher;->scratch:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/google/common/hash/Java8Compatibility;->clear(Ljava/nio/Buffer;)V

    .line 71
    throw v0
.end method


# virtual methods
.method public putByte(B)Lcom/google/common/hash/Hasher;
    .locals 0
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 78
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractByteHasher;->update(B)V

    .line 79
    return-object p0
.end method

.method public bridge synthetic putByte(B)Lcom/google/common/hash/PrimitiveSink;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "b"
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractByteHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;
    .locals 0
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 101
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractByteHasher;->update(Ljava/nio/ByteBuffer;)V

    .line 102
    return-object p0
.end method

.method public putBytes([B)Lcom/google/common/hash/Hasher;
    .locals 0
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 85
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractByteHasher;->update([B)V

    .line 87
    return-object p0
.end method

.method public putBytes([BII)Lcom/google/common/hash/Hasher;
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "off",
            "len"
        }
    .end annotation

    .line 93
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 94
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/AbstractByteHasher;->update([BII)V

    .line 95
    return-object p0
.end method

.method public bridge synthetic putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/PrimitiveSink;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractByteHasher;->putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putBytes([B)Lcom/google/common/hash/PrimitiveSink;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractByteHasher;->putBytes([B)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putBytes([BII)Lcom/google/common/hash/PrimitiveSink;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "bytes",
            "off",
            "len"
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/AbstractByteHasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putChar(C)Lcom/google/common/hash/Hasher;
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/google/common/hash/AbstractByteHasher;->scratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 130
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractByteHasher;->update(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putChar(C)Lcom/google/common/hash/PrimitiveSink;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "c"
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractByteHasher;->putChar(C)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putInt(I)Lcom/google/common/hash/Hasher;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/common/hash/AbstractByteHasher;->scratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 116
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractByteHasher;->update(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putInt(I)Lcom/google/common/hash/PrimitiveSink;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "i"
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractByteHasher;->putInt(I)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putLong(J)Lcom/google/common/hash/Hasher;
    .locals 1
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/google/common/hash/AbstractByteHasher;->scratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 123
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractByteHasher;->update(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putLong(J)Lcom/google/common/hash/PrimitiveSink;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "l"
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/AbstractByteHasher;->putLong(J)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putShort(S)Lcom/google/common/hash/Hasher;
    .locals 1
    .param p1, "s"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/google/common/hash/AbstractByteHasher;->scratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 109
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractByteHasher;->update(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putShort(S)Lcom/google/common/hash/PrimitiveSink;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "s"
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractByteHasher;->putShort(S)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method protected abstract update(B)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation
.end method

.method protected update(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/hash/AbstractByteHasher;->update([BII)V

    .line 56
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/hash/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    goto :goto_1

    .line 58
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .local v0, "remaining":I
    :goto_0
    if-lez v0, :cond_1

    .line 59
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/hash/AbstractByteHasher;->update(B)V

    .line 58
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 62
    .end local v0    # "remaining":I
    :cond_1
    :goto_1
    return-void
.end method

.method protected update([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/hash/AbstractByteHasher;->update([BII)V

    .line 43
    return-void
.end method

.method protected update([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "b",
            "off",
            "len"
        }
    .end annotation

    .line 47
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 48
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/common/hash/AbstractByteHasher;->update(B)V

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
