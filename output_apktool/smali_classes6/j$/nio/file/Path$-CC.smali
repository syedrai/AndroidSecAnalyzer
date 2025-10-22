.class public final synthetic Lj$/nio/file/Path$-CC;
.super Ljava/lang/Object;
.source "Path.java"


# direct methods
.method public static bridge synthetic $default$compareTo(Lj$/nio/file/Path;Ljava/lang/Object;)I
    .locals 0
    .param p0, "_this"    # Lj$/nio/file/Path;

    .line 99
    check-cast p1, Lj$/nio/file/Path;

    invoke-interface {p0, p1}, Lj$/nio/file/Path;->compareTo(Lj$/nio/file/Path;)I

    move-result p1

    return p1
.end method

.method public static $default$endsWith(Lj$/nio/file/Path;Ljava/lang/String;)Z
    .locals 2
    .param p0, "_this"    # Lj$/nio/file/Path;
    .param p1, "other"    # Ljava/lang/String;

    .line 435
    invoke-interface {p0}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/FileSystem;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lj$/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/nio/file/Path;->endsWith(Lj$/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public static $default$iterator(Lj$/nio/file/Path;)Ljava/util/Iterator;
    .locals 1
    .param p0, "_this"    # Lj$/nio/file/Path;

    .line 918
    new-instance v0, Lj$/nio/file/Path$1;

    invoke-direct {v0, p0}, Lj$/nio/file/Path$1;-><init>(Lj$/nio/file/Path;)V

    return-object v0
.end method

.method public static varargs $default$register(Lj$/nio/file/Path;Lj$/nio/file/WatchService;[Lj$/nio/file/WatchEvent$Kind;)Lj$/nio/file/WatchKey;
    .locals 1
    .param p0, "_this"    # Lj$/nio/file/Path;
    .param p1, "watcher"    # Lj$/nio/file/WatchService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 894
    .local p2, "events":[Lj$/nio/file/WatchEvent$Kind;, "[Ljava/nio/file/WatchEvent$Kind<*>;"
    const/4 v0, 0x0

    new-array v0, v0, [Lj$/nio/file/WatchEvent$Modifier;

    invoke-interface {p0, p1, p2, v0}, Lj$/nio/file/Path;->register(Lj$/nio/file/WatchService;[Lj$/nio/file/WatchEvent$Kind;[Lj$/nio/file/WatchEvent$Modifier;)Lj$/nio/file/WatchKey;

    move-result-object v0

    return-object v0
.end method

.method public static $default$resolve(Lj$/nio/file/Path;Ljava/lang/String;)Lj$/nio/file/Path;
    .locals 2
    .param p0, "_this"    # Lj$/nio/file/Path;
    .param p1, "other"    # Ljava/lang/String;

    .line 515
    invoke-interface {p0}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/FileSystem;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lj$/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/nio/file/Path;->resolve(Lj$/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static $default$resolveSibling(Lj$/nio/file/Path;Lj$/nio/file/Path;)Lj$/nio/file/Path;
    .locals 2
    .param p0, "_this"    # Lj$/nio/file/Path;
    .param p1, "other"    # Lj$/nio/file/Path;

    .line 546
    if-eqz p1, :cond_1

    .line 548
    invoke-interface {p0}, Lj$/nio/file/Path;->getParent()Lj$/nio/file/Path;

    move-result-object v0

    .line 549
    .local v0, "parent":Lj$/nio/file/Path;
    if-nez v0, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lj$/nio/file/Path;->resolve(Lj$/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object v1

    :goto_0
    return-object v1

    .line 547
    .end local v0    # "parent":Lj$/nio/file/Path;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static $default$resolveSibling(Lj$/nio/file/Path;Ljava/lang/String;)Lj$/nio/file/Path;
    .locals 2
    .param p0, "_this"    # Lj$/nio/file/Path;
    .param p1, "other"    # Ljava/lang/String;

    .line 574
    invoke-interface {p0}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/FileSystem;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lj$/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/nio/file/Path;->resolveSibling(Lj$/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static $default$startsWith(Lj$/nio/file/Path;Ljava/lang/String;)Z
    .locals 2
    .param p0, "_this"    # Lj$/nio/file/Path;
    .param p1, "other"    # Ljava/lang/String;

    .line 379
    invoke-interface {p0}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/FileSystem;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lj$/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/nio/file/Path;->startsWith(Lj$/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public static $default$toFile(Lj$/nio/file/Path;)Ljava/io/File;
    .locals 2
    .param p0, "_this"    # Lj$/nio/file/Path;

    .line 768
    invoke-interface {p0}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/FileSystem;

    move-result-object v0

    invoke-static {}, Lj$/nio/file/FileSystems;->getDefault()Lj$/nio/file/FileSystem;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 769
    new-instance v0, Ljava/io/File;

    invoke-interface {p0}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 771
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Path not associated with default file system."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs of(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;
    .locals 1
    .param p0, "first"    # Ljava/lang/String;
    .param p1, "more"    # [Ljava/lang/String;

    .line 147
    invoke-static {}, Lj$/nio/file/FileSystems;->getDefault()Lj$/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lj$/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/net/URI;)Lj$/nio/file/Path;
    .locals 4
    .param p0, "uri"    # Ljava/net/URI;

    .line 197
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 202
    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    invoke-static {}, Lj$/nio/file/FileSystems;->getDefault()Lj$/nio/file/FileSystem;

    move-result-object v1

    invoke-virtual {v1}, Lj$/nio/file/FileSystem;->provider()Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lj$/nio/file/spi/FileSystemProvider;->getPath(Ljava/net/URI;)Lj$/nio/file/Path;

    move-result-object v1

    return-object v1

    .line 206
    :cond_0
    invoke-static {}, Lj$/nio/file/spi/FileSystemProvider;->installedProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/nio/file/spi/FileSystemProvider;

    .line 207
    .local v2, "provider":Lj$/nio/file/spi/FileSystemProvider;
    invoke-virtual {v2}, Lj$/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    invoke-virtual {v2, p0}, Lj$/nio/file/spi/FileSystemProvider;->getPath(Ljava/net/URI;)Lj$/nio/file/Path;

    move-result-object v1

    return-object v1

    .line 210
    .end local v2    # "provider":Lj$/nio/file/spi/FileSystemProvider;
    :cond_1
    goto :goto_0

    .line 212
    :cond_2
    new-instance v1, Ljava/nio/file/FileSystemNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/nio/file/FileSystemNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing scheme"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
