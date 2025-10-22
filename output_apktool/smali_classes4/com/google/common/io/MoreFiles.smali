.class public final Lcom/google/common/io/MoreFiles;
.super Ljava/lang/Object;
.source "MoreFiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/MoreFiles$PathByteSource;,
        Lcom/google/common/io/MoreFiles$PathByteSink;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$OKnTcUvazX0H--5Oy9JeARc-PgQ(Lj$/nio/file/Path;)Ljava/lang/Iterable;
    .locals 0

    invoke-static {p0}, Lcom/google/common/io/MoreFiles;->fileTreeChildren(Lj$/nio/file/Path;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addException(Ljava/util/Collection;Ljava/io/IOException;)Ljava/util/Collection;
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "exceptions",
            "e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/IOException;",
            ">;",
            "Ljava/io/IOException;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .line 782
    .local p0, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    if-nez p0, :cond_0

    .line 783
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p0, v0

    .line 785
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 786
    return-object p0
.end method

.method public static varargs asByteSink(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Lcom/google/common/io/ByteSink;
    .locals 2
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "options"    # [Lj$/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "options"
        }
    .end annotation

    .line 228
    new-instance v0, Lcom/google/common/io/MoreFiles$PathByteSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/io/MoreFiles$PathByteSink;-><init>(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;Lcom/google/common/io/MoreFiles-IA;)V

    return-object v0
.end method

.method public static varargs asByteSource(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Lcom/google/common/io/ByteSource;
    .locals 2
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "options"    # [Lj$/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "options"
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/google/common/io/MoreFiles$PathByteSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/io/MoreFiles$PathByteSource;-><init>(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;Lcom/google/common/io/MoreFiles-IA;)V

    return-object v0
.end method

.method public static varargs asCharSink(Lj$/nio/file/Path;Ljava/nio/charset/Charset;[Lj$/nio/file/OpenOption;)Lcom/google/common/io/CharSink;
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "options"    # [Lj$/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "charset",
            "options"
        }
    .end annotation

    .line 278
    invoke-static {p0, p2}, Lcom/google/common/io/MoreFiles;->asByteSink(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Lcom/google/common/io/ByteSink;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/ByteSink;->asCharSink(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSink;

    move-result-object v0

    return-object v0
.end method

.method public static varargs asCharSource(Lj$/nio/file/Path;Ljava/nio/charset/Charset;[Lj$/nio/file/OpenOption;)Lcom/google/common/io/CharSource;
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "options"    # [Lj$/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "charset",
            "options"
        }
    .end annotation

    .line 264
    invoke-static {p0, p2}, Lcom/google/common/io/MoreFiles;->asByteSource(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/ByteSource;->asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v0

    return-object v0
.end method

.method public static varargs asSeekableChannelByteSource(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Lcom/google/common/io/SeekableChannelByteSource;
    .locals 2
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "options"    # [Lj$/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "options"
        }
    .end annotation

    .line 101
    new-instance v0, Lcom/google/common/io/MoreFiles$PathByteSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/io/MoreFiles$PathByteSource;-><init>(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;Lcom/google/common/io/MoreFiles-IA;)V

    return-object v0
.end method

.method private static checkAllowsInsecure(Lj$/nio/file/Path;[Lcom/google/common/io/RecursiveDeleteOption;)V
    .locals 2
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "options"    # [Lcom/google/common/io/RecursiveDeleteOption;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/InsecureRecursiveDeleteException;
        }
    .end annotation

    .line 771
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/google/common/io/RecursiveDeleteOption;->ALLOW_INSECURE:Lcom/google/common/io/RecursiveDeleteOption;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    return-void

    .line 772
    :cond_0
    new-instance v0, Lcom/google/common/io/InsecureRecursiveDeleteException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/io/InsecureRecursiveDeleteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static concat(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "exceptions",
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/IOException;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/io/IOException;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .line 796
    .local p0, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    .local p1, "other":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    if-nez p0, :cond_0

    .line 797
    return-object p1

    .line 798
    :cond_0
    if-eqz p1, :cond_1

    .line 799
    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 801
    :cond_1
    return-object p0
.end method

.method public static varargs createParentDirectories(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)V
    .locals 6
    .param p0, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "attrs"
        }
    .end annotation

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

    .line 449
    .local p1, "attrs":[Lj$/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-interface {p0}, Lj$/nio/file/Path;->toAbsolutePath()Lj$/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Lj$/nio/file/Path;->normalize()Lj$/nio/file/Path;

    move-result-object v0

    .line 450
    .local v0, "normalizedAbsolutePath":Lj$/nio/file/Path;
    invoke-interface {v0}, Lj$/nio/file/Path;->getParent()Lj$/nio/file/Path;

    move-result-object v1

    .line 451
    .local v1, "parent":Lj$/nio/file/Path;
    if-nez v1, :cond_0

    .line 456
    return-void

    .line 463
    :cond_0
    const/4 v2, 0x0

    new-array v3, v2, [Lj$/nio/file/LinkOption;

    invoke-static {v1, v3}, Lj$/nio/file/Files;->isDirectory(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 464
    invoke-static {v1, p1}, Lj$/nio/file/Files;->createDirectories(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;

    .line 465
    new-array v2, v2, [Lj$/nio/file/LinkOption;

    invoke-static {v1, v2}, Lj$/nio/file/Files;->isDirectory(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 466
    :cond_1
    new-instance v2, Ljava/io/IOException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create parent directories of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 469
    :cond_2
    :goto_0
    return-void
.end method

.method public static varargs deleteDirectoryContents(Lj$/nio/file/Path;[Lcom/google/common/io/RecursiveDeleteOption;)V
    .locals 4
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "options"    # [Lcom/google/common/io/RecursiveDeleteOption;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 618
    const/4 v0, 0x0

    .line 619
    .local v0, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    :try_start_0
    invoke-static {p0}, Lj$/nio/file/Files;->newDirectoryStream(Lj$/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    .local v1, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_1
    instance-of v2, v1, Lj$/nio/file/SecureDirectoryStream;

    if-eqz v2, :cond_0

    .line 621
    move-object v2, v1

    check-cast v2, Lj$/nio/file/SecureDirectoryStream;

    .line 622
    .local v2, "sds":Lj$/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    invoke-static {v2}, Lcom/google/common/io/MoreFiles;->deleteDirectoryContentsSecure(Lj$/nio/file/SecureDirectoryStream;)Ljava/util/Collection;

    move-result-object v3

    .line 623
    .end local v0    # "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    .end local v2    # "sds":Lj$/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    .local v3, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    move-object v0, v3

    goto :goto_0

    .line 624
    .end local v3    # "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    .restart local v0    # "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    :cond_0
    invoke-static {p0, p1}, Lcom/google/common/io/MoreFiles;->checkAllowsInsecure(Lj$/nio/file/Path;[Lcom/google/common/io/RecursiveDeleteOption;)V

    .line 625
    invoke-static {v1}, Lcom/google/common/io/MoreFiles;->deleteDirectoryContentsInsecure(Ljava/nio/file/DirectoryStream;)Ljava/util/Collection;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 627
    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 633
    .end local v1    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :cond_1
    goto :goto_2

    .line 619
    .restart local v1    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    .end local p0    # "path":Lj$/nio/file/Path;
    .end local p1    # "options":[Lcom/google/common/io/RecursiveDeleteOption;
    :cond_2
    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 627
    .end local v1    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local v0    # "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    .restart local p0    # "path":Lj$/nio/file/Path;
    .restart local p1    # "options":[Lcom/google/common/io/RecursiveDeleteOption;
    :catch_0
    move-exception v1

    .line 628
    .local v1, "e":Ljava/io/IOException;
    if-eqz v0, :cond_4

    .line 631
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 635
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz v0, :cond_3

    .line 636
    invoke-static {p0, v0}, Lcom/google/common/io/MoreFiles;->throwDeleteFailed(Lj$/nio/file/Path;Ljava/util/Collection;)V

    .line 638
    :cond_3
    return-void

    .line 629
    .restart local v1    # "e":Ljava/io/IOException;
    :cond_4
    throw v1
.end method

.method private static deleteDirectoryContentsInsecure(Ljava/nio/file/DirectoryStream;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/DirectoryStream<",
            "Lj$/nio/file/Path;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .line 718
    .local p0, "dir":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    const/4 v0, 0x0

    .line 720
    .local v0, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    :try_start_0
    invoke-interface {p0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/nio/file/Path;

    .line 721
    .local v2, "entry":Lj$/nio/file/Path;
    invoke-static {v2}, Lcom/google/common/io/MoreFiles;->deleteRecursivelyInsecure(Lj$/nio/file/Path;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/io/MoreFiles;->concat(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3
    :try_end_0
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 722
    .end local v2    # "entry":Lj$/nio/file/Path;
    goto :goto_0

    .line 724
    :cond_0
    return-object v0

    .line 725
    :catch_0
    move-exception v1

    .line 726
    .local v1, "e":Ljava/nio/file/DirectoryIteratorException;
    invoke-virtual {v1}, Ljava/nio/file/DirectoryIteratorException;->getCause()Ljava/io/IOException;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/io/MoreFiles;->addException(Ljava/util/Collection;Ljava/io/IOException;)Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method private static deleteDirectoryContentsSecure(Lj$/nio/file/SecureDirectoryStream;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/SecureDirectoryStream<",
            "Lj$/nio/file/Path;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .line 674
    .local p0, "dir":Lj$/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    const/4 v0, 0x0

    .line 676
    .local v0, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    :try_start_0
    invoke-interface {p0}, Lj$/nio/file/SecureDirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/nio/file/Path;

    .line 677
    .local v2, "path":Lj$/nio/file/Path;
    invoke-interface {v2}, Lj$/nio/file/Path;->getFileName()Lj$/nio/file/Path;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/common/io/MoreFiles;->deleteRecursivelySecure(Lj$/nio/file/SecureDirectoryStream;Lj$/nio/file/Path;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/io/MoreFiles;->concat(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3
    :try_end_0
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 678
    .end local v2    # "path":Lj$/nio/file/Path;
    goto :goto_0

    .line 680
    :cond_0
    return-object v0

    .line 681
    :catch_0
    move-exception v1

    .line 682
    .local v1, "e":Ljava/nio/file/DirectoryIteratorException;
    invoke-virtual {v1}, Ljava/nio/file/DirectoryIteratorException;->getCause()Ljava/io/IOException;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/io/MoreFiles;->addException(Ljava/util/Collection;Ljava/io/IOException;)Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method public static varargs deleteRecursively(Lj$/nio/file/Path;[Lcom/google/common/io/RecursiveDeleteOption;)V
    .locals 6
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "options"    # [Lcom/google/common/io/RecursiveDeleteOption;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    invoke-static {p0}, Lcom/google/common/io/MoreFiles;->getParentPath(Lj$/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object v0

    .line 547
    .local v0, "parentPath":Lj$/nio/file/Path;
    if-eqz v0, :cond_6

    .line 551
    const/4 v1, 0x0

    .line 553
    .local v1, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    const/4 v2, 0x0

    .line 554
    .local v2, "sdsSupported":Z
    :try_start_0
    invoke-static {v0}, Lj$/nio/file/Files;->newDirectoryStream(Lj$/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    .local v3, "parent":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_1
    instance-of v4, v3, Lj$/nio/file/SecureDirectoryStream;

    if-eqz v4, :cond_0

    .line 556
    const/4 v2, 0x1

    .line 557
    move-object v4, v3

    check-cast v4, Lj$/nio/file/SecureDirectoryStream;

    .line 564
    invoke-interface {p0}, Lj$/nio/file/Path;->getFileName()Lj$/nio/file/Path;

    move-result-object v5

    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj$/nio/file/Path;

    .line 558
    invoke-static {v4, v5}, Lcom/google/common/io/MoreFiles;->deleteRecursivelySecure(Lj$/nio/file/SecureDirectoryStream;Lj$/nio/file/Path;)Ljava/util/Collection;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v4

    .line 566
    :cond_0
    if-eqz v3, :cond_1

    :try_start_2
    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->close()V

    .line 568
    .end local v3    # "parent":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :cond_1
    if-nez v2, :cond_2

    .line 569
    invoke-static {p0, p1}, Lcom/google/common/io/MoreFiles;->checkAllowsInsecure(Lj$/nio/file/Path;[Lcom/google/common/io/RecursiveDeleteOption;)V

    .line 570
    invoke-static {p0}, Lcom/google/common/io/MoreFiles;->deleteRecursivelyInsecure(Lj$/nio/file/Path;)Ljava/util/Collection;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v3

    .line 578
    .end local v2    # "sdsSupported":Z
    :cond_2
    goto :goto_1

    .line 554
    .restart local v2    # "sdsSupported":Z
    .restart local v3    # "parent":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    :try_start_3
    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "parentPath":Lj$/nio/file/Path;
    .end local v1    # "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    .end local p0    # "path":Lj$/nio/file/Path;
    .end local p1    # "options":[Lcom/google/common/io/RecursiveDeleteOption;
    :cond_3
    :goto_0
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 572
    .end local v2    # "sdsSupported":Z
    .end local v3    # "parent":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local v0    # "parentPath":Lj$/nio/file/Path;
    .restart local v1    # "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    .restart local p0    # "path":Lj$/nio/file/Path;
    .restart local p1    # "options":[Lcom/google/common/io/RecursiveDeleteOption;
    :catch_0
    move-exception v2

    .line 573
    .local v2, "e":Ljava/io/IOException;
    if-eqz v1, :cond_5

    .line 576
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 580
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    if-eqz v1, :cond_4

    .line 581
    invoke-static {p0, v1}, Lcom/google/common/io/MoreFiles;->throwDeleteFailed(Lj$/nio/file/Path;Ljava/util/Collection;)V

    .line 583
    :cond_4
    return-void

    .line 574
    .restart local v2    # "e":Ljava/io/IOException;
    :cond_5
    throw v2

    .line 548
    .end local v1    # "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    .end local v2    # "e":Ljava/io/IOException;
    :cond_6
    new-instance v1, Ljava/nio/file/FileSystemException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "can\'t delete recursively"

    invoke-direct {v1, v2, v3, v4}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method private static deleteRecursivelyInsecure(Lj$/nio/file/Path;)Ljava/util/Collection;
    .locals 4
    .param p0, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .line 691
    const/4 v0, 0x0

    .line 693
    .local v0, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Lj$/nio/file/LinkOption;

    sget-object v2, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Lj$/nio/file/Files;->isDirectory(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 694
    invoke-static {p0}, Lj$/nio/file/Files;->newDirectoryStream(Lj$/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    .local v1, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_1
    invoke-static {v1}, Lcom/google/common/io/MoreFiles;->deleteDirectoryContentsInsecure(Ljava/nio/file/DirectoryStream;)Ljava/util/Collection;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 696
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 694
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_3
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    .end local p0    # "path":Lj$/nio/file/Path;
    :cond_0
    :goto_0
    throw v2

    .line 701
    .end local v1    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local v0    # "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    .restart local p0    # "path":Lj$/nio/file/Path;
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 702
    invoke-static {p0}, Lj$/nio/file/Files;->delete(Lj$/nio/file/Path;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 705
    :cond_2
    return-object v0

    .line 706
    :catch_0
    move-exception v1

    .line 707
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/google/common/io/MoreFiles;->addException(Ljava/util/Collection;Ljava/io/IOException;)Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method private static deleteRecursivelySecure(Lj$/nio/file/SecureDirectoryStream;Lj$/nio/file/Path;)Ljava/util/Collection;
    .locals 5
    .param p1, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dir",
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/SecureDirectoryStream<",
            "Lj$/nio/file/Path;",
            ">;",
            "Lj$/nio/file/Path;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .line 646
    .local p0, "dir":Lj$/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    const/4 v0, 0x0

    .line 648
    .local v0, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Lj$/nio/file/LinkOption;

    sget-object v3, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p0, p1, v2}, Lcom/google/common/io/MoreFiles;->isDirectory(Lj$/nio/file/SecureDirectoryStream;Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 649
    new-array v1, v1, [Lj$/nio/file/LinkOption;

    sget-object v2, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    aput-object v2, v1, v4

    invoke-interface {p0, p1, v1}, Lj$/nio/file/SecureDirectoryStream;->newDirectoryStream(Ljava/lang/Object;[Lj$/nio/file/LinkOption;)Lj$/nio/file/SecureDirectoryStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    .local v1, "childDir":Lj$/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_1
    invoke-static {v1}, Lcom/google/common/io/MoreFiles;->deleteDirectoryContentsSecure(Lj$/nio/file/SecureDirectoryStream;)Ljava/util/Collection;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 651
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Lj$/nio/file/SecureDirectoryStream;->close()V

    .line 655
    .end local v1    # "childDir":Lj$/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    :cond_0
    if-nez v0, :cond_3

    .line 656
    invoke-interface {p0, p1}, Lj$/nio/file/SecureDirectoryStream;->deleteDirectory(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 649
    .restart local v1    # "childDir":Lj$/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-interface {v1}, Lj$/nio/file/SecureDirectoryStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    .end local p0    # "dir":Lj$/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    .end local p1    # "path":Lj$/nio/file/Path;
    :cond_1
    :goto_0
    throw v2

    .line 659
    .end local v1    # "childDir":Lj$/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    .restart local v0    # "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    .restart local p0    # "dir":Lj$/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    .restart local p1    # "path":Lj$/nio/file/Path;
    :cond_2
    invoke-interface {p0, p1}, Lj$/nio/file/SecureDirectoryStream;->deleteFile(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 662
    :cond_3
    :goto_1
    return-object v0

    .line 663
    :catch_0
    move-exception v1

    .line 664
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/google/common/io/MoreFiles;->addException(Ljava/util/Collection;Ljava/io/IOException;)Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method public static equal(Lj$/nio/file/Path;Lj$/nio/file/Path;)Z
    .locals 10
    .param p0, "path1"    # Lj$/nio/file/Path;
    .param p1, "path2"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path1",
            "path2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    invoke-static {p0, p1}, Lj$/nio/file/Files;->isSameFile(Lj$/nio/file/Path;Lj$/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    const/4 v0, 0x1

    return v0

    .line 401
    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Lj$/nio/file/OpenOption;

    invoke-static {p0, v1}, Lcom/google/common/io/MoreFiles;->asByteSource(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Lcom/google/common/io/ByteSource;

    move-result-object v1

    .line 402
    .local v1, "source1":Lcom/google/common/io/ByteSource;
    new-array v2, v0, [Lj$/nio/file/OpenOption;

    invoke-static {p1, v2}, Lcom/google/common/io/MoreFiles;->asByteSource(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Lcom/google/common/io/ByteSource;

    move-result-object v2

    .line 403
    .local v2, "source2":Lcom/google/common/io/ByteSource;
    invoke-virtual {v1}, Lcom/google/common/io/ByteSource;->sizeIfKnown()Lcom/google/common/base/Optional;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 404
    .local v6, "len1":J
    invoke-virtual {v2}, Lcom/google/common/io/ByteSource;->sizeIfKnown()Lcom/google/common/base/Optional;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 405
    .local v8, "len2":J
    cmp-long v3, v6, v4

    if-eqz v3, :cond_1

    cmp-long v3, v8, v4

    if-eqz v3, :cond_1

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    .line 406
    return v0

    .line 408
    :cond_1
    invoke-virtual {v1, v2}, Lcom/google/common/io/ByteSource;->contentEquals(Lcom/google/common/io/ByteSource;)Z

    move-result v0

    return v0
.end method

.method public static fileTraverser()Lcom/google/common/graph/Traverser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/Traverser<",
            "Lj$/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 321
    new-instance v0, Lcom/google/common/io/MoreFiles$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/google/common/graph/Traverser;->forTree(Lcom/google/common/graph/SuccessorsFunction;)Lcom/google/common/graph/Traverser;

    move-result-object v0

    return-object v0
.end method

.method private static fileTreeChildren(Lj$/nio/file/Path;)Ljava/lang/Iterable;
    .locals 3
    .param p0, "dir"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            ")",
            "Ljava/lang/Iterable<",
            "Lj$/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 325
    const/4 v0, 0x1

    new-array v0, v0, [Lj$/nio/file/LinkOption;

    const/4 v1, 0x0

    sget-object v2, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lj$/nio/file/Files;->isDirectory(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    :try_start_0
    invoke-static {p0}, Lcom/google/common/io/MoreFiles;->listFiles(Lj$/nio/file/Path;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 328
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/nio/file/DirectoryIteratorException;

    invoke-direct {v1, v0}, Ljava/nio/file/DirectoryIteratorException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 333
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static getFileExtension(Lj$/nio/file/Path;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 486
    invoke-interface {p0}, Lj$/nio/file/Path;->getFileName()Lj$/nio/file/Path;

    move-result-object v0

    .line 489
    .local v0, "name":Lj$/nio/file/Path;
    const-string v1, ""

    if-nez v0, :cond_0

    .line 490
    return-object v1

    .line 493
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 494
    .local v2, "fileName":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 495
    .local v3, "dotIndex":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getNameWithoutExtension(Lj$/nio/file/Path;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 504
    invoke-interface {p0}, Lj$/nio/file/Path;->getFileName()Lj$/nio/file/Path;

    move-result-object v0

    .line 507
    .local v0, "name":Lj$/nio/file/Path;
    if-nez v0, :cond_0

    .line 508
    const-string v1, ""

    return-object v1

    .line 511
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, "fileName":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 513
    .local v2, "dotIndex":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3
.end method

.method private static getParentPath(Lj$/nio/file/Path;)Lj$/nio/file/Path;
    .locals 4
    .param p0, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 736
    invoke-interface {p0}, Lj$/nio/file/Path;->getParent()Lj$/nio/file/Path;

    move-result-object v0

    .line 739
    .local v0, "parent":Lj$/nio/file/Path;
    if-eqz v0, :cond_0

    .line 745
    return-object v0

    .line 749
    :cond_0
    invoke-interface {p0}, Lj$/nio/file/Path;->getNameCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 761
    const/4 v1, 0x0

    return-object v1

    .line 764
    :cond_1
    invoke-interface {p0}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/FileSystem;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v1, v3, v2}, Lj$/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object v1

    return-object v1
.end method

.method public static varargs isDirectory([Lj$/nio/file/LinkOption;)Lcom/google/common/base/Predicate;
    .locals 2
    .param p0, "options"    # [Lj$/nio/file/LinkOption;
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
            "([",
            "Lj$/nio/file/LinkOption;",
            ")",
            "Lcom/google/common/base/Predicate<",
            "Lj$/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 341
    invoke-virtual {p0}, [Lj$/nio/file/LinkOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/nio/file/LinkOption;

    .line 342
    .local v0, "optionsCopy":[Lj$/nio/file/LinkOption;
    new-instance v1, Lcom/google/common/io/MoreFiles$1;

    invoke-direct {v1, v0}, Lcom/google/common/io/MoreFiles$1;-><init>([Lj$/nio/file/LinkOption;)V

    return-object v1
.end method

.method private static varargs isDirectory(Lj$/nio/file/SecureDirectoryStream;Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z
    .locals 1
    .param p1, "name"    # Lj$/nio/file/Path;
    .param p2, "options"    # [Lj$/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dir",
            "name",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/SecureDirectoryStream<",
            "Lj$/nio/file/Path;",
            ">;",
            "Lj$/nio/file/Path;",
            "[",
            "Lj$/nio/file/LinkOption;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    .local p0, "dir":Lj$/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    const-class v0, Lj$/nio/file/attribute/BasicFileAttributeView;

    invoke-interface {p0, p1, v0, p2}, Lj$/nio/file/SecureDirectoryStream;->getFileAttributeView(Ljava/lang/Object;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Lj$/nio/file/attribute/BasicFileAttributeView;

    .line 359
    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributeView;->readAttributes()Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    .line 360
    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v0

    .line 358
    return v0
.end method

.method public static varargs isRegularFile([Lj$/nio/file/LinkOption;)Lcom/google/common/base/Predicate;
    .locals 2
    .param p0, "options"    # [Lj$/nio/file/LinkOption;
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
            "([",
            "Lj$/nio/file/LinkOption;",
            ")",
            "Lcom/google/common/base/Predicate<",
            "Lj$/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 368
    invoke-virtual {p0}, [Lj$/nio/file/LinkOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/nio/file/LinkOption;

    .line 369
    .local v0, "optionsCopy":[Lj$/nio/file/LinkOption;
    new-instance v1, Lcom/google/common/io/MoreFiles$2;

    invoke-direct {v1, v0}, Lcom/google/common/io/MoreFiles$2;-><init>([Lj$/nio/file/LinkOption;)V

    return-object v1
.end method

.method public static listFiles(Lj$/nio/file/Path;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .param p0, "dir"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lj$/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    :try_start_0
    invoke-static {p0}, Lj$/nio/file/Files;->newDirectoryStream(Lj$/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .local v0, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_1
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    if-eqz v0, :cond_0

    :try_start_2
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_2
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_2 .. :try_end_2} :catch_0

    .line 291
    :cond_0
    return-object v1

    .line 290
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "dir":Lj$/nio/file/Path;
    :cond_1
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_4 .. :try_end_4} :catch_0

    .line 292
    .end local v0    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local p0    # "dir":Lj$/nio/file/Path;
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/nio/file/DirectoryIteratorException;
    invoke-virtual {v0}, Ljava/nio/file/DirectoryIteratorException;->getCause()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private static pathNotFound(Lj$/nio/file/Path;Ljava/util/Collection;)Ljava/nio/file/NoSuchFileException;
    .locals 7
    .param p0, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "exceptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Ljava/util/Collection<",
            "Ljava/io/IOException;",
            ">;)",
            "Ljava/nio/file/NoSuchFileException;"
        }
    .end annotation

    .line 834
    .local p1, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 835
    return-object v2

    .line 837
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    .line 838
    .local v0, "exception":Ljava/io/IOException;
    instance-of v1, v0, Ljava/nio/file/NoSuchFileException;

    if-nez v1, :cond_1

    .line 839
    return-object v2

    .line 841
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/nio/file/NoSuchFileException;

    .line 842
    .local v1, "noSuchFileException":Ljava/nio/file/NoSuchFileException;
    invoke-virtual {v1}, Ljava/nio/file/NoSuchFileException;->getFile()Ljava/lang/String;

    move-result-object v3

    .line 843
    .local v3, "exceptionFile":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 848
    return-object v2

    .line 850
    :cond_2
    invoke-static {p0}, Lcom/google/common/io/MoreFiles;->getParentPath(Lj$/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object v4

    .line 851
    .local v4, "parentPath":Lj$/nio/file/Path;
    if-nez v4, :cond_3

    .line 871
    return-object v2

    .line 874
    :cond_3
    invoke-interface {p0}, Lj$/nio/file/Path;->getFileName()Lj$/nio/file/Path;

    move-result-object v5

    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj$/nio/file/Path;

    invoke-interface {v4, v5}, Lj$/nio/file/Path;->resolve(Lj$/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object v5

    .line 875
    .local v5, "pathResolvedFromParent":Lj$/nio/file/Path;
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 876
    return-object v1

    .line 878
    :cond_4
    return-object v2
.end method

.method private static throwDeleteFailed(Lj$/nio/file/Path;Ljava/util/Collection;)V
    .locals 5
    .param p0, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "exceptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Ljava/util/Collection<",
            "Ljava/io/IOException;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/file/FileSystemException;
        }
    .end annotation

    .line 814
    .local p1, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    invoke-static {p0, p1}, Lcom/google/common/io/MoreFiles;->pathNotFound(Lj$/nio/file/Path;Ljava/util/Collection;)Ljava/nio/file/NoSuchFileException;

    move-result-object v0

    .line 815
    .local v0, "pathNotFound":Ljava/nio/file/NoSuchFileException;
    if-nez v0, :cond_1

    .line 821
    new-instance v1, Ljava/nio/file/FileSystemException;

    .line 823
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "failed to delete one or more files; see suppressed exceptions for details"

    invoke-direct {v1, v2, v3, v4}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    .local v1, "deleteFailed":Ljava/nio/file/FileSystemException;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/IOException;

    .line 827
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v1, v3}, Ljava/nio/file/FileSystemException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 828
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 829
    :cond_0
    throw v1

    .line 816
    .end local v1    # "deleteFailed":Ljava/nio/file/FileSystemException;
    :cond_1
    throw v0
.end method

.method public static touch(Lj$/nio/file/Path;)V
    .locals 2
    .param p0, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/nio/file/attribute/FileTime;->fromMillis(J)Lj$/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {p0, v0}, Lj$/nio/file/Files;->setLastModifiedTime(Lj$/nio/file/Path;Lj$/nio/file/attribute/FileTime;)Lj$/nio/file/Path;
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/nio/file/NoSuchFileException;
    const/4 v1, 0x0

    :try_start_1
    new-array v1, v1, [Lj$/nio/file/attribute/FileAttribute;

    invoke-static {p0, v1}, Lj$/nio/file/Files;->createFile(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;
    :try_end_1
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 431
    goto :goto_0

    .line 424
    :catch_1
    move-exception v1

    .line 433
    .end local v0    # "e":Ljava/nio/file/NoSuchFileException;
    :goto_0
    return-void
.end method
