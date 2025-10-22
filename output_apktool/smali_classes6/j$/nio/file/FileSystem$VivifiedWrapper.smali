.class public final synthetic Lj$/nio/file/FileSystem$VivifiedWrapper;
.super Lj$/nio/file/FileSystem;
.source "D8$$SyntheticClass"


# instance fields
.field public final synthetic wrappedValue:Ljava/nio/file/FileSystem;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/FileSystem;)V
    .locals 0

    invoke-direct {p0}, Lj$/nio/file/FileSystem;-><init>()V

    iput-object p1, p0, Lj$/nio/file/FileSystem$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileSystem;

    return-void
.end method

.method public static synthetic convert(Ljava/nio/file/FileSystem;)Lj$/nio/file/FileSystem;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/FileSystem$Wrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/FileSystem$Wrapper;

    iget-object p0, p0, Lj$/nio/file/FileSystem$Wrapper;->wrappedValue:Lj$/nio/file/FileSystem;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/FileSystem$VivifiedWrapper;

    invoke-direct {v0, p0}, Lj$/nio/file/FileSystem$VivifiedWrapper;-><init>(Ljava/nio/file/FileSystem;)V

    return-object v0
.end method


# virtual methods
.method public synthetic close()V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/FileSystem$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileSystem;

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->close()V

    return-void
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/FileSystem$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileSystem;

    instance-of v1, p1, Lj$/nio/file/FileSystem$VivifiedWrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/FileSystem$VivifiedWrapper;

    iget-object p1, p1, Lj$/nio/file/FileSystem$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileSystem;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic getFileStores()Ljava/lang/Iterable;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/FileSystem$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileSystem;

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->getFileStores()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getPath(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/FileSystem$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileSystem;

    invoke-virtual {v0, p1, p2}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getPathMatcher(Ljava/lang/String;)Lj$/nio/file/PathMatcher;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/FileSystem$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileSystem;

    invoke-virtual {v0, p1}, Ljava/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/PathMatcher$VivifiedWrapper;->convert(Ljava/nio/file/PathMatcher;)Lj$/nio/file/PathMatcher;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getRootDirectories()Ljava/lang/Iterable;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/FileSystem$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileSystem;

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->getRootDirectories()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/PathApiFlips;->flipIterablePath(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getSeparator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/FileSystem$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileSystem;

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->getSeparator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getUserPrincipalLookupService()Lj$/nio/file/attribute/UserPrincipalLookupService;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/FileSystem$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileSystem;

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->getUserPrincipalLookupService()Ljava/nio/file/attribute/UserPrincipalLookupService;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/UserPrincipalLookupService$VivifiedWrapper;->convert(Ljava/nio/file/attribute/UserPrincipalLookupService;)Lj$/nio/file/attribute/UserPrincipalLookupService;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/FileSystem$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileSystem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic isOpen()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/FileSystem$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileSystem;

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->isOpen()Z

    move-result v0

    return v0
.end method

.method public synthetic isReadOnly()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/FileSystem$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileSystem;

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public synthetic newWatchService()Lj$/nio/file/WatchService;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/FileSystem$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileSystem;

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->newWatchService()Ljava/nio/file/WatchService;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/WatchService$VivifiedWrapper;->convert(Ljava/nio/file/WatchService;)Lj$/nio/file/WatchService;

    move-result-object v0

    return-object v0
.end method

.method public synthetic provider()Lj$/nio/file/spi/FileSystemProvider;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/FileSystem$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileSystem;

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->convert(Ljava/nio/file/spi/FileSystemProvider;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    return-object v0
.end method

.method public synthetic supportedFileAttributeViews()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/FileSystem$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileSystem;

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->supportedFileAttributeViews()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
