.class public final Lj$/nio/file/FileSystems;
.super Ljava/lang/Object;
.source "FileSystems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/nio/file/FileSystems$DefaultFileSystemHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lj$/nio/file/FileSystem;
    .locals 1

    .line 186
    sget-object v0, Lj$/nio/file/FileSystems$DefaultFileSystemHolder;->defaultFileSystem:Lj$/nio/file/FileSystem;

    return-object v0
.end method

.method public static getFileSystem(Ljava/net/URI;)Lj$/nio/file/FileSystem;
    .locals 4
    .param p0, "uri"    # Ljava/net/URI;

    .line 228
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "scheme":Ljava/lang/String;
    invoke-static {}, Lj$/nio/file/spi/FileSystemProvider;->installedProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/nio/file/spi/FileSystemProvider;

    .line 230
    .local v2, "provider":Lj$/nio/file/spi/FileSystemProvider;
    invoke-virtual {v2}, Lj$/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    invoke-virtual {v2, p0}, Lj$/nio/file/spi/FileSystemProvider;->getFileSystem(Ljava/net/URI;)Lj$/nio/file/FileSystem;

    move-result-object v1

    return-object v1

    .line 233
    .end local v2    # "provider":Lj$/nio/file/spi/FileSystemProvider;
    :cond_0
    goto :goto_0

    .line 234
    :cond_1
    new-instance v1, Ljava/nio/file/ProviderNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/nio/file/ProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static newFileSystem(Lj$/nio/file/Path;Ljava/lang/ClassLoader;)Lj$/nio/file/FileSystem;
    .locals 5
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    if-eqz p0, :cond_2

    .line 401
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 404
    .local v0, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {}, Lj$/nio/file/spi/FileSystemProvider;->installedProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/nio/file/spi/FileSystemProvider;

    .line 406
    .local v2, "provider":Lj$/nio/file/spi/FileSystemProvider;
    :try_start_0
    invoke-virtual {v2, p0, v0}, Lj$/nio/file/spi/FileSystemProvider;->newFileSystem(Lj$/nio/file/Path;Ljava/util/Map;)Lj$/nio/file/FileSystem;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 407
    :catch_0
    move-exception v3

    .line 409
    .end local v2    # "provider":Lj$/nio/file/spi/FileSystemProvider;
    goto :goto_0

    .line 412
    :cond_0
    if-eqz p1, :cond_1

    .line 413
    const-class v1, Lj$/nio/file/spi/FileSystemProvider;

    .line 414
    invoke-static {v1, p1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    .line 415
    .local v1, "sl":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/nio/file/spi/FileSystemProvider;>;"
    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj$/nio/file/spi/FileSystemProvider;

    .line 417
    .local v3, "provider":Lj$/nio/file/spi/FileSystemProvider;
    :try_start_1
    invoke-virtual {v3, p0, v0}, Lj$/nio/file/spi/FileSystemProvider;->newFileSystem(Lj$/nio/file/Path;Ljava/util/Map;)Lj$/nio/file/FileSystem;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 418
    :catch_1
    move-exception v4

    .line 420
    .end local v3    # "provider":Lj$/nio/file/spi/FileSystemProvider;
    goto :goto_1

    .line 423
    .end local v1    # "sl":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/nio/file/spi/FileSystemProvider;>;"
    :cond_1
    new-instance v1, Ljava/nio/file/ProviderNotFoundException;

    const-string v2, "Provider not found"

    invoke-direct {v1, v2}, Ljava/nio/file/ProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 400
    .end local v0    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static newFileSystem(Ljava/net/URI;Ljava/util/Map;)Lj$/nio/file/FileSystem;
    .locals 1
    .param p0, "uri"    # Ljava/net/URI;
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

    .line 286
    .local p1, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lj$/nio/file/FileSystems;->newFileSystem(Ljava/net/URI;Ljava/util/Map;Ljava/lang/ClassLoader;)Lj$/nio/file/FileSystem;

    move-result-object v0

    return-object v0
.end method

.method public static newFileSystem(Ljava/net/URI;Ljava/util/Map;Ljava/lang/ClassLoader;)Lj$/nio/file/FileSystem;
    .locals 5
    .param p0, "uri"    # Ljava/net/URI;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lj$/nio/file/FileSystem;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    .local p1, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "scheme":Ljava/lang/String;
    invoke-static {}, Lj$/nio/file/spi/FileSystemProvider;->installedProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/nio/file/spi/FileSystemProvider;

    .line 335
    .local v2, "provider":Lj$/nio/file/spi/FileSystemProvider;
    invoke-virtual {v2}, Lj$/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    :try_start_0
    invoke-virtual {v2, p0, p1}, Lj$/nio/file/spi/FileSystemProvider;->newFileSystem(Ljava/net/URI;Ljava/util/Map;)Lj$/nio/file/FileSystem;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 338
    :catch_0
    move-exception v3

    .line 341
    .end local v2    # "provider":Lj$/nio/file/spi/FileSystemProvider;
    :cond_0
    goto :goto_0

    .line 344
    :cond_1
    if-eqz p2, :cond_3

    .line 345
    const-class v1, Lj$/nio/file/spi/FileSystemProvider;

    .line 346
    invoke-static {v1, p2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    .line 347
    .local v1, "sl":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/nio/file/spi/FileSystemProvider;>;"
    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj$/nio/file/spi/FileSystemProvider;

    .line 348
    .local v3, "provider":Lj$/nio/file/spi/FileSystemProvider;
    invoke-virtual {v3}, Lj$/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 350
    :try_start_1
    invoke-virtual {v3, p0, p1}, Lj$/nio/file/spi/FileSystemProvider;->newFileSystem(Ljava/net/URI;Ljava/util/Map;)Lj$/nio/file/FileSystem;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 351
    :catch_1
    move-exception v4

    .line 354
    .end local v3    # "provider":Lj$/nio/file/spi/FileSystemProvider;
    :cond_2
    goto :goto_1

    .line 357
    .end local v1    # "sl":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/nio/file/spi/FileSystemProvider;>;"
    :cond_3
    new-instance v1, Ljava/nio/file/ProviderNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/nio/file/ProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
