.class public final Lokio/NioFileSystemFileHandle;
.super Lokio/FileHandle;
.source "NioFileSystemFileHandle.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0014J\u0008\u0010\u000c\u001a\u00020\u000bH\u0014J(\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u000eH\u0014J(\u0010\u0014\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u000eH\u0014J\u0008\u0010\u0015\u001a\u00020\tH\u0014J\u0008\u0010\u0016\u001a\u00020\tH\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lokio/NioFileSystemFileHandle;",
        "Lokio/FileHandle;",
        "readWrite",
        "",
        "fileChannel",
        "Ljava/nio/channels/FileChannel;",
        "<init>",
        "(ZLjava/nio/channels/FileChannel;)V",
        "protectedResize",
        "",
        "size",
        "",
        "protectedSize",
        "protectedRead",
        "",
        "fileOffset",
        "array",
        "",
        "arrayOffset",
        "byteCount",
        "protectedWrite",
        "protectedFlush",
        "protectedClose",
        "third_party.java_src.okio_okio-jvm"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final fileChannel:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>(ZLjava/nio/channels/FileChannel;)V
    .locals 1
    .param p1, "readWrite"    # Z
    .param p2, "fileChannel"    # Ljava/nio/channels/FileChannel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "readWrite",
            "fileChannel"
        }
    .end annotation

    const-string v0, "fileChannel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1}, Lokio/FileHandle;-><init>(Z)V

    .line 23
    iput-object p2, p0, Lokio/NioFileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 21
    return-void
.end method


# virtual methods
.method protected declared-synchronized protectedClose()V
    .locals 1

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lokio/NioFileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 81
    .end local p0    # "this":Lokio/NioFileSystemFileHandle;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected declared-synchronized protectedFlush()V
    .locals 2

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lokio/NioFileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 76
    .end local p0    # "this":Lokio/NioFileSystemFileHandle;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected declared-synchronized protectedRead(J[BII)I
    .locals 4
    .param p1, "fileOffset"    # J
    .param p3, "array"    # [B
    .param p4, "arrayOffset"    # I
    .param p5, "byteCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fileOffset",
            "array",
            "arrayOffset",
            "byteCount"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "array"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lokio/NioFileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 50
    invoke-static {p3, p4, p5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 51
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 52
    .local v1, "bytesRead":I
    :goto_0
    if-ge v1, p5, :cond_2

    .line 53
    iget-object v2, p0, Lokio/NioFileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .local v2, "readResult":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 55
    if-nez v1, :cond_0

    monitor-exit p0

    return v3

    .line 56
    :cond_0
    goto :goto_1

    .line 58
    :cond_1
    add-int/2addr v1, v2

    .end local v2    # "readResult":I
    goto :goto_0

    .line 60
    .end local p0    # "this":Lokio/NioFileSystemFileHandle;
    :cond_2
    :goto_1
    monitor-exit p0

    return v1

    .line 48
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "bytesRead":I
    .end local p1    # "fileOffset":J
    .end local p3    # "array":[B
    .end local p4    # "arrayOffset":I
    .end local p5    # "byteCount":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected declared-synchronized protectedResize(J)V
    .locals 8
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    monitor-enter p0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lokio/NioFileSystemFileHandle;->size()J

    move-result-wide v0

    move-wide v3, v0

    .line 29
    .local v3, "currentSize":J
    sub-long v0, p1, v3

    .line 30
    .local v0, "delta":J
    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-lez v2, :cond_0

    .line 31
    long-to-int v2, v0

    new-array v5, v2, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    long-to-int v7, v0

    move-object v2, p0

    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lokio/NioFileSystemFileHandle;->protectedWrite(J[BII)V

    goto :goto_0

    .line 33
    .end local p0    # "this":Lokio/NioFileSystemFileHandle;
    :cond_0
    move-object v2, p0

    iget-object v5, v2, Lokio/NioFileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v5, p1, p2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    :goto_0
    monitor-exit p0

    return-void

    .line 27
    .end local v0    # "delta":J
    .end local v3    # "currentSize":J
    .end local p1    # "size":J
    :catchall_0
    move-exception v0

    move-object v2, p0

    :goto_1
    move-object p1, v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method protected declared-synchronized protectedSize()J
    .locals 2

    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lokio/NioFileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 39
    .end local p0    # "this":Lokio/NioFileSystemFileHandle;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected declared-synchronized protectedWrite(J[BII)V
    .locals 2
    .param p1, "fileOffset"    # J
    .param p3, "array"    # [B
    .param p4, "arrayOffset"    # I
    .param p5, "byteCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fileOffset",
            "array",
            "arrayOffset",
            "byteCount"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "array"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lokio/NioFileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 71
    invoke-static {p3, p4, p5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 72
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lokio/NioFileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 69
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local p0    # "this":Lokio/NioFileSystemFileHandle;
    .end local p1    # "fileOffset":J
    .end local p3    # "array":[B
    .end local p4    # "arrayOffset":I
    .end local p5    # "byteCount":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
