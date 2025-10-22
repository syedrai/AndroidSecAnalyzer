.class Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;
.super Ljava/nio/channels/FileChannel;
.source "DesugarFileChannel.java"

# interfaces
.implements Ljava/nio/channels/SeekableByteChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/desugar/sun/nio/fs/DesugarFileChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WrappedFileChannel"
.end annotation


# instance fields
.field final appendMode:Z

.field final delegate:Ljava/nio/channels/FileChannel;

.field final deleteOnClose:Z

.field final path:Lj$/nio/file/Path;


# direct methods
.method private constructor <init>(Ljava/nio/channels/FileChannel;ZZLj$/nio/file/Path;)V
    .locals 1
    .param p1, "delegate"    # Ljava/nio/channels/FileChannel;
    .param p2, "deleteOnClose"    # Z
    .param p3, "appendMode"    # Z
    .param p4, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "delegate",
            "deleteOnClose",
            "appendMode",
            "path"
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Ljava/nio/channels/FileChannel;-><init>()V

    .line 156
    iput-object p1, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    .line 157
    iput-boolean p2, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->deleteOnClose:Z

    .line 158
    iput-boolean p3, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->appendMode:Z

    .line 159
    if-eqz p2, :cond_0

    move-object v0, p4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->path:Lj$/nio/file/Path;

    .line 160
    return-void
.end method

.method public static withExtraOptions(Ljava/nio/channels/FileChannel;Ljava/util/Set;Lj$/nio/file/Path;)Ljava/nio/channels/FileChannel;
    .locals 4
    .param p0, "channel"    # Ljava/nio/channels/FileChannel;
    .param p2, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "channel",
            "options",
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/FileChannel;",
            "Ljava/util/Set<",
            "+",
            "Lj$/nio/file/OpenOption;",
            ">;",
            "Lj$/nio/file/Path;",
            ")",
            "Ljava/nio/channels/FileChannel;"
        }
    .end annotation

    .line 146
    .local p1, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    instance-of v0, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;

    iget-object v0, v0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 147
    .local v0, "raw":Ljava/nio/channels/FileChannel;
    :goto_0
    new-instance v1, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;

    sget-object v2, Lj$/nio/file/StandardOpenOption;->DELETE_ON_CLOSE:Lj$/nio/file/StandardOpenOption;

    .line 149
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Lj$/nio/file/StandardOpenOption;->APPEND:Lj$/nio/file/StandardOpenOption;

    .line 150
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {v1, v0, v2, v3, p2}, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;-><init>(Ljava/nio/channels/FileChannel;ZZLj$/nio/file/Path;)V

    .line 147
    return-object v1
.end method

.method public static wrap(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;
    .locals 3
    .param p0, "channel"    # Ljava/nio/channels/FileChannel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel"
        }
    .end annotation

    .line 137
    instance-of v0, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;

    if-eqz v0, :cond_0

    .line 138
    return-object p0

    .line 140
    :cond_0
    new-instance v0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v2, v1}, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;-><init>(Ljava/nio/channels/FileChannel;ZZLj$/nio/file/Path;)V

    return-object v0
.end method

.method private wrapLock(Ljava/nio/channels/FileLock;)Ljava/nio/channels/FileLock;
    .locals 1
    .param p1, "lock"    # Ljava/nio/channels/FileLock;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lock"
        }
    .end annotation

    .line 248
    if-nez p1, :cond_0

    .line 249
    const/4 v0, 0x0

    return-object v0

    .line 251
    :cond_0
    new-instance v0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannelFileLock;

    invoke-direct {v0, p1, p0}, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannelFileLock;-><init>(Ljava/nio/channels/FileLock;Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;)V

    return-object v0
.end method


# virtual methods
.method public force(Z)V
    .locals 1
    .param p1, "metaData"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metaData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 208
    return-void
.end method

.method public implCloseChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 258
    iget-boolean v0, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->deleteOnClose:Z

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->path:Lj$/nio/file/Path;

    invoke-interface {v0}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 261
    :cond_0
    return-void
.end method

.method public lock(JJZ)Ljava/nio/channels/FileLock;
    .locals 6
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "size",
            "shared"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    .end local p1    # "position":J
    .end local p3    # "size":J
    .end local p5    # "shared":Z
    .local v1, "position":J
    .local v3, "size":J
    .local v5, "shared":Z
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->wrapLock(Ljava/nio/channels/FileLock;)Ljava/nio/channels/FileLock;

    move-result-object p1

    return-object p1
.end method

.method public map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .locals 6
    .param p1, "mode"    # Ljava/nio/channels/FileChannel$MapMode;
    .param p2, "position"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mode",
            "position",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .end local p1    # "mode":Ljava/nio/channels/FileChannel$MapMode;
    .end local p2    # "position":J
    .end local p4    # "size":J
    .local v1, "mode":Ljava/nio/channels/FileChannel$MapMode;
    .local v2, "position":J
    .local v4, "size":J
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public position()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .locals 1
    .param p1, "newPosition"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {v0}, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->wrap(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "newPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p1, p2}, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dst"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;J)I
    .locals 1
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dst",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 2
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dsts",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->read([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .locals 6
    .param p1, "src"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "position"    # J
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "position",
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .end local p1    # "src":Ljava/nio/channels/ReadableByteChannel;
    .end local p2    # "position":J
    .end local p4    # "count":J
    .local v1, "src":Ljava/nio/channels/ReadableByteChannel;
    .local v2, "position":J
    .local v4, "count":J
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .locals 6
    .param p1, "position"    # J
    .param p3, "count"    # J
    .param p5, "target"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "count",
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .end local p1    # "position":J
    .end local p3    # "count":J
    .end local p5    # "target":Ljava/nio/channels/WritableByteChannel;
    .local v1, "position":J
    .local v3, "count":J
    .local v5, "target":Ljava/nio/channels/WritableByteChannel;
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide p1

    return-wide p1
.end method

.method public truncate(J)Ljava/nio/channels/FileChannel;
    .locals 1
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {v0}, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->wrap(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p1, p2}, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 6
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "size",
            "shared"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    .end local p1    # "position":J
    .end local p3    # "size":J
    .end local p5    # "shared":Z
    .local v1, "position":J
    .local v3, "size":J
    .local v5, "shared":Z
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->wrapLock(Ljava/nio/channels/FileLock;)Ljava/nio/channels/FileLock;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-boolean v0, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->appendMode:Z

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->size()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0

    .line 177
    :cond_0
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public write(Ljava/nio/ByteBuffer;J)I
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 2
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcs",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->write([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method
