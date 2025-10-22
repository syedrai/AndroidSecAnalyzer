.class public Lj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;
.super Ljava/lang/Object;
.source "DesugarSeekableByteChannel.java"

# interfaces
.implements Ljava/nio/channels/SeekableByteChannel;


# instance fields
.field private final fileChannel:Ljava/nio/channels/FileChannel;

.field private final openOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lj$/nio/file/OpenOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/nio/channels/FileChannel;Ljava/util/Set;)V
    .locals 0
    .param p1, "fileChannel"    # Ljava/nio/channels/FileChannel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fileChannel",
            "openOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/FileChannel;",
            "Ljava/util/Set<",
            "+",
            "Lj$/nio/file/OpenOption;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p2, "openOptions":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 82
    iput-object p2, p0, Lj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->openOptions:Ljava/util/Set;

    .line 83
    return-void
.end method

.method public static create(Lj$/nio/file/Path;Ljava/util/Set;)Lj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;
    .locals 3
    .param p0, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "openOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Ljava/util/Set<",
            "+",
            "Lj$/nio/file/OpenOption;",
            ">;)",
            "Lj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    .local p1, "openOptions":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    sget-object v0, Lj$/nio/file/StandardOpenOption;->READ:Lj$/nio/file/StandardOpenOption;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lj$/nio/file/StandardOpenOption;->APPEND:Lj$/nio/file/StandardOpenOption;

    .line 46
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "READ + APPEND not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    :goto_0
    sget-object v0, Lj$/nio/file/StandardOpenOption;->APPEND:Lj$/nio/file/StandardOpenOption;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lj$/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Lj$/nio/file/StandardOpenOption;

    .line 50
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 51
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "APPEND + TRUNCATE_EXISTING not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_3
    :goto_1
    sget-object v0, Lj$/nio/file/StandardOpenOption;->APPEND:Lj$/nio/file/StandardOpenOption;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 54
    :cond_4
    new-instance v0, Ljava/nio/file/NoSuchFileException;

    invoke-interface {p0}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_5
    :goto_2
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 58
    invoke-interface {p0}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-static {p1}, Lj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->getFileAccessModeText(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    .local v0, "randomAccessFile":Ljava/io/RandomAccessFile;
    sget-object v1, Lj$/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Lj$/nio/file/StandardOpenOption;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 60
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 63
    :cond_6
    new-instance v1, Lj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;

    invoke-static {v0}, Lj$/desugar/sun/nio/fs/DesugarFileChannel$$ExternalSyntheticAPIConversion0;->m(Ljava/io/RandomAccessFile;)Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;-><init>(Ljava/nio/channels/FileChannel;Ljava/util/Set;)V

    return-object v1
.end method

.method private static getFileAccessModeText(Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lj$/nio/file/OpenOption;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 67
    .local p0, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    sget-object v0, Lj$/nio/file/StandardOpenOption;->WRITE:Lj$/nio/file/StandardOpenOption;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const-string v0, "r"

    return-object v0

    .line 70
    :cond_0
    sget-object v0, Lj$/nio/file/StandardOpenOption;->SYNC:Lj$/nio/file/StandardOpenOption;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const-string v0, "rws"

    return-object v0

    .line 73
    :cond_1
    sget-object v0, Lj$/nio/file/StandardOpenOption;->DSYNC:Lj$/nio/file/StandardOpenOption;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    const-string v0, "rwd"

    return-object v0

    .line 76
    :cond_2
    const-string v0, "rw"

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 130
    return-void
.end method

.method public getFileChannel()Ljava/nio/channels/FileChannel;
    .locals 1

    .line 86
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->fileChannel:Ljava/nio/channels/FileChannel;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public position()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public position(J)Ljava/nio/channels/SeekableByteChannel;
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

    .line 109
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
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

    .line 91
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public truncate(J)Ljava/nio/channels/SeekableByteChannel;
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

    .line 119
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
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

    .line 96
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->openOptions:Ljava/util/Set;

    sget-object v1, Lj$/nio/file/StandardOpenOption;->APPEND:Lj$/nio/file/StandardOpenOption;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->size()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0

    .line 99
    :cond_0
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method
