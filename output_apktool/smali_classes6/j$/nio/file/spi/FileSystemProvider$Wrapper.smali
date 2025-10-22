.class public final synthetic Lj$/nio/file/spi/FileSystemProvider$Wrapper;
.super Ljava/nio/file/spi/FileSystemProvider;
.source "D8$$SyntheticClass"


# instance fields
.field public final synthetic wrappedValue:Lj$/nio/file/spi/FileSystemProvider;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/spi/FileSystemProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/nio/file/spi/FileSystemProvider;-><init>()V

    iput-object p1, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    return-void
.end method

.method public static synthetic convert(Lj$/nio/file/spi/FileSystemProvider;)Ljava/nio/file/spi/FileSystemProvider;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;

    iget-object p0, p0, Lj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;

    invoke-direct {v0, p0}, Lj$/nio/file/spi/FileSystemProvider$Wrapper;-><init>(Lj$/nio/file/spi/FileSystemProvider;)V

    return-object v0
.end method


# virtual methods
.method public synthetic checkAccess(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/spi/FileSystemProvider$$ExternalSynthetic$CollectionConversion0;->m([Ljava/nio/file/AccessMode;)[Lj$/nio/file/AccessMode;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lj$/nio/file/spi/FileSystemProvider;->checkAccess(Lj$/nio/file/Path;[Lj$/nio/file/AccessMode;)V

    return-void
.end method

.method public synthetic copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p2

    invoke-static {p3}, Lj$/nio/file/spi/FileSystemProvider$$ExternalSynthetic$CollectionConversion1;->m([Ljava/nio/file/CopyOption;)[Lj$/nio/file/CopyOption;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lj$/nio/file/spi/FileSystemProvider;->copy(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)V

    return-void
.end method

.method public synthetic createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/spi/FileSystemProvider$$ExternalSynthetic$CollectionConversion2;->m([Ljava/nio/file/attribute/FileAttribute;)[Lj$/nio/file/attribute/FileAttribute;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lj$/nio/file/spi/FileSystemProvider;->createDirectory(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)V

    return-void
.end method

.method public synthetic createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lj$/nio/file/spi/FileSystemProvider;->createLink(Lj$/nio/file/Path;Lj$/nio/file/Path;)V

    return-void
.end method

.method public synthetic createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p2

    invoke-static {p3}, Lj$/nio/file/spi/FileSystemProvider$$ExternalSynthetic$CollectionConversion2;->m([Ljava/nio/file/attribute/FileAttribute;)[Lj$/nio/file/attribute/FileAttribute;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lj$/nio/file/spi/FileSystemProvider;->createSymbolicLink(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)V

    return-void
.end method

.method public synthetic delete(Ljava/nio/file/Path;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/nio/file/spi/FileSystemProvider;->delete(Lj$/nio/file/Path;)V

    return-void
.end method

.method public synthetic deleteIfExists(Ljava/nio/file/Path;)Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/nio/file/spi/FileSystemProvider;->deleteIfExists(Lj$/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    instance-of v1, p1, Lj$/nio/file/spi/FileSystemProvider$Wrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/spi/FileSystemProvider$Wrapper;

    iget-object p1, p1, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/FileApiFlips;->flipFileAttributeView(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-static {p3}, Lj$/nio/file/Path$$ExternalSynthetic$CollectionConversion2;->m([Ljava/nio/file/LinkOption;)[Lj$/nio/file/LinkOption;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lj$/nio/file/spi/FileSystemProvider;->getFileAttributeView(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/FileAttributeView;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/attribute/FileAttributeView$Wrapper;->convert(Lj$/nio/file/attribute/FileAttributeView;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getFileStore(Ljava/nio/file/Path;)Ljava/nio/file/FileStore;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/nio/file/spi/FileSystemProvider;->getFileStore(Lj$/nio/file/Path;)Lj$/nio/file/FileStore;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/FileStore$Wrapper;->convert(Lj$/nio/file/FileStore;)Ljava/nio/file/FileStore;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getFileSystem(Ljava/net/URI;)Ljava/nio/file/FileSystem;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-virtual {v0, p1}, Lj$/nio/file/spi/FileSystemProvider;->getFileSystem(Ljava/net/URI;)Lj$/nio/file/FileSystem;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/FileSystem$Wrapper;->convert(Lj$/nio/file/FileSystem;)Ljava/nio/file/FileSystem;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getPath(Ljava/net/URI;)Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-virtual {v0, p1}, Lj$/nio/file/spi/FileSystemProvider;->getPath(Ljava/net/URI;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/Path$Wrapper;->convert(Lj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-virtual {v0}, Lj$/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic isHidden(Ljava/nio/file/Path;)Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/nio/file/spi/FileSystemProvider;->isHidden(Lj$/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public synthetic isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lj$/nio/file/spi/FileSystemProvider;->isSameFile(Lj$/nio/file/Path;Lj$/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public synthetic move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p2

    invoke-static {p3}, Lj$/nio/file/spi/FileSystemProvider$$ExternalSynthetic$CollectionConversion1;->m([Ljava/nio/file/CopyOption;)[Lj$/nio/file/CopyOption;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lj$/nio/file/spi/FileSystemProvider;->move(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)V

    return-void
.end method

.method public synthetic newAsynchronousFileChannel(Ljava/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/AsynchronousFileChannel;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/FileApiFlips;->flipOpenOptionSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-static {p4}, Lj$/nio/file/spi/FileSystemProvider$$ExternalSynthetic$CollectionConversion2;->m([Ljava/nio/file/attribute/FileAttribute;)[Lj$/nio/file/attribute/FileAttribute;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Lj$/nio/file/spi/FileSystemProvider;->newAsynchronousFileChannel(Lj$/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/channels/AsynchronousFileChannel;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/channels/AsynchronousFileChannel$Wrapper;->convert(Lj$/nio/channels/AsynchronousFileChannel;)Ljava/nio/channels/AsynchronousFileChannel;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/FileApiFlips;->flipOpenOptionSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-static {p3}, Lj$/nio/file/spi/FileSystemProvider$$ExternalSynthetic$CollectionConversion2;->m([Ljava/nio/file/attribute/FileAttribute;)[Lj$/nio/file/attribute/FileAttribute;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lj$/nio/file/spi/FileSystemProvider;->newByteChannel(Lj$/nio/file/Path;Ljava/util/Set;[Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/PathApiFlips;->flipDirectoryStreamFilterPath(Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream$Filter;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lj$/nio/file/spi/FileSystemProvider;->newDirectoryStream(Lj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/PathApiFlips;->flipDirectoryStreamPath(Ljava/nio/file/DirectoryStream;)Ljava/nio/file/DirectoryStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newFileChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/FileApiFlips;->flipOpenOptionSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-static {p3}, Lj$/nio/file/spi/FileSystemProvider$$ExternalSynthetic$CollectionConversion2;->m([Ljava/nio/file/attribute/FileAttribute;)[Lj$/nio/file/attribute/FileAttribute;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lj$/nio/file/spi/FileSystemProvider;->newFileChannel(Lj$/nio/file/Path;Ljava/util/Set;[Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljava/nio/file/FileSystem;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-virtual {v0, p1, p2}, Lj$/nio/file/spi/FileSystemProvider;->newFileSystem(Ljava/net/URI;Ljava/util/Map;)Lj$/nio/file/FileSystem;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/FileSystem$Wrapper;->convert(Lj$/nio/file/FileSystem;)Ljava/nio/file/FileSystem;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newFileSystem(Ljava/nio/file/Path;Ljava/util/Map;)Ljava/nio/file/FileSystem;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lj$/nio/file/spi/FileSystemProvider;->newFileSystem(Lj$/nio/file/Path;Ljava/util/Map;)Lj$/nio/file/FileSystem;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/FileSystem$Wrapper;->convert(Lj$/nio/file/FileSystem;)Ljava/nio/file/FileSystem;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/spi/FileSystemProvider$$ExternalSynthetic$CollectionConversion3;->m([Ljava/nio/file/OpenOption;)[Lj$/nio/file/OpenOption;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lj$/nio/file/spi/FileSystemProvider;->newInputStream(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/spi/FileSystemProvider$$ExternalSynthetic$CollectionConversion3;->m([Ljava/nio/file/OpenOption;)[Lj$/nio/file/OpenOption;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lj$/nio/file/spi/FileSystemProvider;->newOutputStream(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/FileApiFlips;->flipFileAttributes(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-static {p3}, Lj$/nio/file/Path$$ExternalSynthetic$CollectionConversion2;->m([Ljava/nio/file/LinkOption;)[Lj$/nio/file/LinkOption;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lj$/nio/file/spi/FileSystemProvider;->readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/attribute/BasicFileAttributes$Wrapper;->convert(Lj$/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readAttributes(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p3}, Lj$/nio/file/Path$$ExternalSynthetic$CollectionConversion2;->m([Ljava/nio/file/LinkOption;)[Lj$/nio/file/LinkOption;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lj$/nio/file/spi/FileSystemProvider;->readAttributes(Lj$/nio/file/Path;Ljava/lang/String;[Lj$/nio/file/LinkOption;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/FileApiFlips;->flipMapWithMaybeFileTimeValues(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/nio/file/spi/FileSystemProvider;->readSymbolicLink(Lj$/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/Path$Wrapper;->convert(Lj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setAttribute(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljava/nio/file/LinkOption;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Lj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p3}, Lj$/nio/file/FileApiFlips;->flipMaybeFileTime(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p4}, Lj$/nio/file/Path$$ExternalSynthetic$CollectionConversion2;->m([Ljava/nio/file/LinkOption;)[Lj$/nio/file/LinkOption;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Lj$/nio/file/spi/FileSystemProvider;->setAttribute(Lj$/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Lj$/nio/file/LinkOption;)V

    return-void
.end method
