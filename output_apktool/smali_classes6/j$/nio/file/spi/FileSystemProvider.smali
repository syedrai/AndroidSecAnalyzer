.class public abstract Lj$/nio/file/spi/FileSystemProvider;
.super Ljava/lang/Object;
.source "FileSystemProvider.java"


# static fields
.field private static final DEFAULT_OPEN_OPTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lj$/nio/file/OpenOption;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile installedProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj$/nio/file/spi/FileSystemProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static loadingProviders:Z

.field private static final lock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$smloadInstalledProviders()Ljava/util/List;
    .locals 1

    invoke-static {}, Lj$/nio/file/spi/FileSystemProvider;->loadInstalledProviders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj$/nio/file/spi/FileSystemProvider;->lock:Ljava/lang/Object;

    .line 121
    const/4 v0, 0x0

    sput-boolean v0, Lj$/nio/file/spi/FileSystemProvider;->loadingProviders:Z

    .line 428
    sget-object v0, Lj$/nio/file/StandardOpenOption;->CREATE:Lj$/nio/file/StandardOpenOption;

    sget-object v1, Lj$/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Lj$/nio/file/StandardOpenOption;

    sget-object v2, Lj$/nio/file/StandardOpenOption;->WRITE:Lj$/nio/file/StandardOpenOption;

    .line 429
    invoke-static {v0, v1, v2}, Lj$/nio/file/spi/FileSystemProvider$$ExternalSyntheticBackport7;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj$/nio/file/spi/FileSystemProvider;->DEFAULT_OPEN_OPTIONS:Ljava/util/Set;

    .line 428
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 144
    invoke-static {}, Lj$/nio/file/spi/FileSystemProvider;->checkPermission()Ljava/lang/Void;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/nio/file/spi/FileSystemProvider;-><init>(Ljava/lang/Void;)V

    .line 145
    return-void
.end method

.method private constructor <init>(Ljava/lang/Void;)V
    .locals 0
    .param p1, "ignore"    # Ljava/lang/Void;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkPermission()Ljava/lang/Void;
    .locals 3

    .line 124
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 125
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 126
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "fileSystemProvider"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 127
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static installedProviders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj$/nio/file/spi/FileSystemProvider;",
            ">;"
        }
    .end annotation

    .line 190
    sget-object v0, Lj$/nio/file/spi/FileSystemProvider;->installedProviders:Ljava/util/List;

    if-nez v0, :cond_2

    .line 192
    invoke-static {}, Lj$/nio/file/FileSystems;->getDefault()Lj$/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lj$/nio/file/FileSystem;->provider()Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    .line 194
    .local v0, "defaultProvider":Lj$/nio/file/spi/FileSystemProvider;
    sget-object v1, Lj$/nio/file/spi/FileSystemProvider;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_0
    sget-object v2, Lj$/nio/file/spi/FileSystemProvider;->installedProviders:Ljava/util/List;

    if-nez v2, :cond_1

    .line 196
    sget-boolean v2, Lj$/nio/file/spi/FileSystemProvider;->loadingProviders:Z

    if-nez v2, :cond_0

    .line 199
    const/4 v2, 0x1

    sput-boolean v2, Lj$/nio/file/spi/FileSystemProvider;->loadingProviders:Z

    .line 201
    new-instance v2, Lj$/nio/file/spi/FileSystemProvider$1;

    invoke-direct {v2}, Lj$/nio/file/spi/FileSystemProvider$1;-><init>()V

    .line 202
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 209
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/spi/FileSystemProvider;>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 211
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lj$/nio/file/spi/FileSystemProvider;->installedProviders:Ljava/util/List;

    goto :goto_0

    .line 197
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/spi/FileSystemProvider;>;"
    :cond_0
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Circular loading of installed providers detected"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .end local v0    # "defaultProvider":Lj$/nio/file/spi/FileSystemProvider;
    throw v2

    .line 213
    .restart local v0    # "defaultProvider":Lj$/nio/file/spi/FileSystemProvider;
    :cond_1
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 215
    .end local v0    # "defaultProvider":Lj$/nio/file/spi/FileSystemProvider;
    :cond_2
    :goto_1
    sget-object v0, Lj$/nio/file/spi/FileSystemProvider;->installedProviders:Ljava/util/List;

    return-object v0
.end method

.method private static loadInstalledProviders()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj$/nio/file/spi/FileSystemProvider;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/spi/FileSystemProvider;>;"
    nop

    .line 152
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Lj$/nio/file/spi/FileSystemProvider;

    invoke-static {v2, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    .line 155
    .local v1, "sl":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/nio/file/spi/FileSystemProvider;>;"
    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj$/nio/file/spi/FileSystemProvider;

    .line 156
    .local v3, "provider":Lj$/nio/file/spi/FileSystemProvider;
    invoke-virtual {v3}, Lj$/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "scheme":Ljava/lang/String;
    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 160
    const/4 v5, 0x0

    .line 161
    .local v5, "found":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj$/nio/file/spi/FileSystemProvider;

    .line 162
    .local v7, "p":Lj$/nio/file/spi/FileSystemProvider;
    invoke-virtual {v7}, Lj$/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 163
    const/4 v5, 0x1

    .line 164
    goto :goto_2

    .line 166
    .end local v7    # "p":Lj$/nio/file/spi/FileSystemProvider;
    :cond_0
    goto :goto_1

    .line 167
    :cond_1
    :goto_2
    if-nez v5, :cond_2

    .line 168
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v3    # "provider":Lj$/nio/file/spi/FileSystemProvider;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "found":Z
    :cond_2
    goto :goto_0

    .line 172
    :cond_3
    return-object v0
.end method


# virtual methods
.method public varargs abstract checkAccess(Lj$/nio/file/Path;[Lj$/nio/file/AccessMode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs abstract copy(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs abstract createDirectory(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "[",
            "Lj$/nio/file/attribute/FileAttribute<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public createLink(Lj$/nio/file/Path;Lj$/nio/file/Path;)V
    .locals 1
    .param p1, "link"    # Lj$/nio/file/Path;
    .param p2, "existing"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 735
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public varargs createSymbolicLink(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)V
    .locals 1
    .param p1, "link"    # Lj$/nio/file/Path;
    .param p2, "target"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Lj$/nio/file/Path;",
            "[",
            "Lj$/nio/file/attribute/FileAttribute<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 703
    .local p3, "attrs":[Lj$/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract delete(Lj$/nio/file/Path;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public deleteIfExists(Lj$/nio/file/Path;)Z
    .locals 2
    .param p1, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 788
    :try_start_0
    invoke-virtual {p0, p1}, Lj$/nio/file/spi/FileSystemProvider;->delete(Lj$/nio/file/Path;)V
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    const/4 v0, 0x1

    return v0

    .line 790
    :catch_0
    move-exception v0

    .line 791
    .local v0, "ignore":Ljava/nio/file/NoSuchFileException;
    const/4 v1, 0x0

    return v1
.end method

.method public varargs abstract getFileAttributeView(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/FileAttributeView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lj$/nio/file/attribute/FileAttributeView;",
            ">(",
            "Lj$/nio/file/Path;",
            "Ljava/lang/Class<",
            "TV;>;[",
            "Lj$/nio/file/LinkOption;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract getFileStore(Lj$/nio/file/Path;)Lj$/nio/file/FileStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFileSystem(Ljava/net/URI;)Lj$/nio/file/FileSystem;
.end method

.method public abstract getPath(Ljava/net/URI;)Lj$/nio/file/Path;
.end method

.method public abstract getScheme()Ljava/lang/String;
.end method

.method public abstract isHidden(Lj$/nio/file/Path;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isSameFile(Lj$/nio/file/Path;Lj$/nio/file/Path;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs abstract move(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs newAsynchronousFileChannel(Lj$/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/channels/AsynchronousFileChannel;
    .locals 1
    .param p1, "path"    # Lj$/nio/file/Path;
    .param p3, "executor"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Ljava/util/Set<",
            "+",
            "Lj$/nio/file/OpenOption;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            "[",
            "Lj$/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Lj$/nio/channels/AsynchronousFileChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 574
    .local p2, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    .local p4, "attrs":[Lj$/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public varargs abstract newByteChannel(Lj$/nio/file/Path;Ljava/util/Set;[Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Ljava/util/Set<",
            "+",
            "Lj$/nio/file/OpenOption;",
            ">;[",
            "Lj$/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/channels/SeekableByteChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract newDirectoryStream(Lj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Ljava/nio/file/DirectoryStream$Filter<",
            "-",
            "Lj$/nio/file/Path;",
            ">;)",
            "Ljava/nio/file/DirectoryStream<",
            "Lj$/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs newFileChannel(Lj$/nio/file/Path;Ljava/util/Set;[Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;
    .locals 1
    .param p1, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Ljava/util/Set<",
            "+",
            "Lj$/nio/file/OpenOption;",
            ">;[",
            "Lj$/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/channels/FileChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    .local p2, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    .local p3, "attrs":[Lj$/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public newFileSystem(Lj$/nio/file/Path;Ljava/util/Map;)Lj$/nio/file/FileSystem;
    .locals 1
    .param p1, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lj$/nio/file/FileSystem;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    .local p2, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract newFileSystem(Ljava/net/URI;Ljava/util/Map;)Lj$/nio/file/FileSystem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lj$/nio/file/FileSystem;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs newInputStream(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/io/InputStream;
    .locals 5
    .param p1, "path"    # Lj$/nio/file/Path;
    .param p2, "options"    # [Lj$/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    array-length v0, p2

    if-lez v0, :cond_1

    .line 413
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 415
    .local v2, "opt":Lj$/nio/file/OpenOption;
    sget-object v3, Lj$/nio/file/StandardOpenOption;->APPEND:Lj$/nio/file/StandardOpenOption;

    if-eq v2, v3, :cond_0

    sget-object v3, Lj$/nio/file/StandardOpenOption;->WRITE:Lj$/nio/file/StandardOpenOption;

    if-eq v2, v3, :cond_0

    .line 413
    .end local v2    # "opt":Lj$/nio/file/OpenOption;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    .restart local v2    # "opt":Lj$/nio/file/OpenOption;
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' not allowed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    .end local v2    # "opt":Lj$/nio/file/OpenOption;
    :cond_1
    invoke-static {p1, p2}, Lj$/nio/file/Files;->newByteChannel(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    .line 425
    .local v0, "rbc":Ljava/nio/channels/ReadableByteChannel;
    invoke-static {v0}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public varargs newOutputStream(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/io/OutputStream;
    .locals 7
    .param p1, "path"    # Lj$/nio/file/Path;
    .param p2, "options"    # [Lj$/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    array-length v0, p2

    .line 468
    .local v0, "len":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 469
    sget-object v2, Lj$/nio/file/spi/FileSystemProvider;->DEFAULT_OPEN_OPTIONS:Ljava/util/Set;

    .local v2, "opts":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/OpenOption;>;"
    goto :goto_1

    .line 471
    .end local v2    # "opts":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/OpenOption;>;"
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 472
    .restart local v2    # "opts":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/OpenOption;>;"
    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p2, v4

    .line 473
    .local v5, "opt":Lj$/nio/file/OpenOption;
    sget-object v6, Lj$/nio/file/StandardOpenOption;->READ:Lj$/nio/file/StandardOpenOption;

    if-eq v5, v6, :cond_1

    .line 475
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 472
    .end local v5    # "opt":Lj$/nio/file/OpenOption;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 474
    .restart local v5    # "opt":Lj$/nio/file/OpenOption;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "READ not allowed"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 477
    .end local v5    # "opt":Lj$/nio/file/OpenOption;
    :cond_2
    sget-object v3, Lj$/nio/file/StandardOpenOption;->WRITE:Lj$/nio/file/StandardOpenOption;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 479
    :goto_1
    new-array v1, v1, [Lj$/nio/file/attribute/FileAttribute;

    invoke-virtual {p0, p1, v2, v1}, Lj$/nio/file/spi/FileSystemProvider;->newByteChannel(Lj$/nio/file/Path;Ljava/util/Set;[Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v1

    .line 483
    .local v1, "wbc":Ljava/nio/channels/WritableByteChannel;
    invoke-static {v1}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v3

    return-object v3
.end method

.method public varargs abstract readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lj$/nio/file/attribute/BasicFileAttributes;",
            ">(",
            "Lj$/nio/file/Path;",
            "Ljava/lang/Class<",
            "TA;>;[",
            "Lj$/nio/file/LinkOption;",
            ")TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs abstract readAttributes(Lj$/nio/file/Path;Ljava/lang/String;[Lj$/nio/file/LinkOption;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Ljava/lang/String;",
            "[",
            "Lj$/nio/file/LinkOption;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public readSymbolicLink(Lj$/nio/file/Path;)Lj$/nio/file/Path;
    .locals 1
    .param p1, "link"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 820
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public varargs abstract setAttribute(Lj$/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Lj$/nio/file/LinkOption;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
