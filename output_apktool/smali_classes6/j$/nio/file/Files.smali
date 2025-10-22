.class public final Lj$/nio/file/Files;
.super Ljava/lang/Object;
.source "Files.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/nio/file/Files$AcceptAllFilter;,
        Lj$/nio/file/Files$FileTypeDetectors;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BUFFER_SIZE:I = 0x2000

.field private static final DEFAULT_CREATE_OPTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lj$/nio/file/OpenOption;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_BUFFER_SIZE:I = 0x7ffffff7


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 92
    nop

    .line 607
    sget-object v0, Lj$/nio/file/StandardOpenOption;->CREATE_NEW:Lj$/nio/file/StandardOpenOption;

    sget-object v1, Lj$/nio/file/StandardOpenOption;->WRITE:Lj$/nio/file/StandardOpenOption;

    .line 608
    invoke-static {v0, v1}, Lj$/nio/file/Files$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj$/nio/file/Files;->DEFAULT_CREATE_OPTIONS:Ljava/util/Set;

    .line 607
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static asUncheckedRunnable(Ljava/io/Closeable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .line 107
    new-instance v0, Lj$/nio/file/Files$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lj$/nio/file/Files$$ExternalSyntheticLambda1;-><init>(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static copy(Lj$/nio/file/Path;Ljava/io/OutputStream;)J
    .locals 3
    .param p0, "source"    # Lj$/nio/file/Path;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3121
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3123
    const/4 v0, 0x0

    new-array v0, v0, [Lj$/nio/file/OpenOption;

    invoke-static {p0, v0}, Lj$/nio/file/Files;->newInputStream(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    .line 3124
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0, p1}, Lj$/io/InputStreamRetargetClass;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3125
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 3124
    :cond_0
    return-wide v1

    .line 3123
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public static varargs copy(Ljava/io/InputStream;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)J
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "target"    # Lj$/nio/file/Path;
    .param p2, "options"    # [Lj$/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3039
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3042
    const/4 v0, 0x0

    .line 3043
    .local v0, "replaceExisting":Z
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p2, v3

    .line 3044
    .local v4, "opt":Lj$/nio/file/CopyOption;
    sget-object v5, Lj$/nio/file/StandardCopyOption;->REPLACE_EXISTING:Lj$/nio/file/StandardCopyOption;

    if-ne v4, v5, :cond_0

    .line 3045
    const/4 v0, 0x1

    .line 3043
    .end local v4    # "opt":Lj$/nio/file/CopyOption;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3047
    .restart local v4    # "opt":Lj$/nio/file/CopyOption;
    :cond_0
    if-nez v4, :cond_1

    .line 3048
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "options contains \'null\'"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3050
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3056
    .end local v4    # "opt":Lj$/nio/file/CopyOption;
    :cond_2
    const/4 v1, 0x0

    .line 3057
    .local v1, "se":Ljava/lang/SecurityException;
    if-eqz v0, :cond_3

    .line 3059
    :try_start_0
    invoke-static {p1}, Lj$/nio/file/Files;->deleteIfExists(Lj$/nio/file/Path;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3062
    goto :goto_1

    .line 3060
    :catch_0
    move-exception v3

    .line 3061
    .local v3, "x":Ljava/lang/SecurityException;
    move-object v1, v3

    .line 3071
    .end local v3    # "x":Ljava/lang/SecurityException;
    :cond_3
    :goto_1
    const/4 v3, 0x2

    :try_start_1
    new-array v3, v3, [Lj$/nio/file/OpenOption;

    sget-object v4, Lj$/nio/file/StandardOpenOption;->CREATE_NEW:Lj$/nio/file/StandardOpenOption;

    aput-object v4, v3, v2

    sget-object v2, Lj$/nio/file/StandardOpenOption;->WRITE:Lj$/nio/file/StandardOpenOption;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {p1, v3}, Lj$/nio/file/Files;->newOutputStream(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3078
    .local v2, "ostream":Ljava/io/OutputStream;
    nop

    .line 3081
    move-object v3, v2

    .line 3082
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_2
    invoke-static {p0, v3}, Lj$/io/InputStreamRetargetClass;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3083
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 3082
    :cond_4
    return-wide v4

    .line 3081
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_5

    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v4

    .line 3073
    .end local v2    # "ostream":Ljava/io/OutputStream;
    .end local v3    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    .line 3074
    .local v2, "x":Ljava/nio/file/FileAlreadyExistsException;
    if-eqz v1, :cond_6

    .line 3075
    throw v1

    .line 3077
    :cond_6
    throw v2
.end method

.method public static varargs copy(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)Lj$/nio/file/Path;
    .locals 2
    .param p0, "source"    # Lj$/nio/file/Path;
    .param p1, "target"    # Lj$/nio/file/Path;
    .param p2, "options"    # [Lj$/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1290
    invoke-static {p0}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    .line 1293
    .local v0, "provider":Lj$/nio/file/spi/FileSystemProvider;
    invoke-static {p1}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1295
    invoke-virtual {v0, p0, p1, p2}, Lj$/nio/file/spi/FileSystemProvider;->copy(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)V

    goto :goto_0

    .line 1298
    :cond_0
    invoke-static {p0, p1, p2}, Lj$/nio/file/CopyMoveHelper;->copyToForeignTarget(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)V

    .line 1300
    :goto_0
    return-object p1
.end method

.method private static varargs createAndCheckIsDirectory(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)V
    .locals 4
    .param p0, "dir"    # Lj$/nio/file/Path;
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

    .line 795
    .local p1, "attrs":[Lj$/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lj$/nio/file/Files;->createDirectory(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;
    :try_end_0
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    goto :goto_0

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, "x":Ljava/nio/file/FileAlreadyExistsException;
    const/4 v1, 0x1

    new-array v1, v1, [Lj$/nio/file/LinkOption;

    const/4 v2, 0x0

    sget-object v3, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Lj$/nio/file/Files;->isDirectory(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 800
    .end local v0    # "x":Ljava/nio/file/FileAlreadyExistsException;
    :goto_0
    return-void

    .line 798
    .restart local v0    # "x":Ljava/nio/file/FileAlreadyExistsException;
    :cond_0
    throw v0
.end method

.method private static createBufferedReaderLinesStream(Ljava/io/BufferedReader;)Lj$/util/stream/Stream;
    .locals 3
    .param p0, "br"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            ")",
            "Lj$/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4092
    :try_start_0
    invoke-static {p0}, Lj$/io/BufferedReaderRetargetClass;->lines(Ljava/io/BufferedReader;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {p0}, Lj$/nio/file/Files;->asUncheckedRunnable(Ljava/io/Closeable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Stream;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4093
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4095
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4101
    goto :goto_1

    .line 4096
    :catch_2
    move-exception v1

    .line 4098
    .local v1, "ex":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4100
    goto :goto_1

    .line 4099
    :catchall_0
    move-exception v2

    .line 4102
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_1
    throw v0
.end method

.method public static varargs createDirectories(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;
    .locals 6
    .param p0, "dir"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "[",
            "Lj$/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Lj$/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 741
    .local p1, "attrs":[Lj$/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lj$/nio/file/Files;->createAndCheckIsDirectory(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)V
    :try_end_0
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    return-object p0

    .line 746
    :catch_0
    move-exception v0

    .line 749
    const/4 v0, 0x0

    .line 751
    .local v0, "se":Ljava/lang/SecurityException;
    :try_start_1
    invoke-interface {p0}, Lj$/nio/file/Path;->toAbsolutePath()Lj$/nio/file/Path;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p0, v1

    .line 755
    goto :goto_0

    .line 752
    :catch_1
    move-exception v1

    .line 754
    .local v1, "x":Ljava/lang/SecurityException;
    move-object v0, v1

    .line 757
    .end local v1    # "x":Ljava/lang/SecurityException;
    :goto_0
    invoke-interface {p0}, Lj$/nio/file/Path;->getParent()Lj$/nio/file/Path;

    move-result-object v1

    .line 758
    .local v1, "parent":Lj$/nio/file/Path;
    :goto_1
    if-eqz v1, :cond_0

    .line 760
    :try_start_2
    invoke-static {v1}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lj$/nio/file/AccessMode;

    invoke-virtual {v2, v1, v3}, Lj$/nio/file/spi/FileSystemProvider;->checkAccess(Lj$/nio/file/Path;[Lj$/nio/file/AccessMode;)V
    :try_end_2
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_2 .. :try_end_2} :catch_2

    .line 761
    goto :goto_2

    .line 762
    :catch_2
    move-exception v2

    .line 765
    invoke-interface {v1}, Lj$/nio/file/Path;->getParent()Lj$/nio/file/Path;

    move-result-object v1

    goto :goto_1

    .line 767
    :cond_0
    :goto_2
    if-nez v1, :cond_2

    .line 769
    if-nez v0, :cond_1

    .line 770
    new-instance v2, Ljava/nio/file/FileSystemException;

    invoke-interface {p0}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "Unable to determine if root directory exists"

    invoke-direct {v2, v3, v4, v5}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 773
    :cond_1
    throw v0

    .line 778
    :cond_2
    move-object v2, v1

    .line 779
    .local v2, "child":Lj$/nio/file/Path;
    invoke-interface {v1, p0}, Lj$/nio/file/Path;->relativize(Lj$/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Lj$/nio/file/Path;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj$/nio/file/Path;

    .line 780
    .local v4, "name":Lj$/nio/file/Path;
    invoke-interface {v2, v4}, Lj$/nio/file/Path;->resolve(Lj$/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object v2

    .line 781
    invoke-static {v2, p1}, Lj$/nio/file/Files;->createAndCheckIsDirectory(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)V

    .line 782
    .end local v4    # "name":Lj$/nio/file/Path;
    goto :goto_3

    .line 783
    :cond_3
    return-object p0

    .line 743
    .end local v0    # "se":Ljava/lang/SecurityException;
    .end local v1    # "parent":Lj$/nio/file/Path;
    .end local v2    # "child":Lj$/nio/file/Path;
    :catch_3
    move-exception v0

    .line 745
    .local v0, "x":Ljava/nio/file/FileAlreadyExistsException;
    throw v0
.end method

.method public static varargs createDirectory(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;
    .locals 1
    .param p0, "dir"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "[",
            "Lj$/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Lj$/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 688
    .local p1, "attrs":[Lj$/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-static {p0}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lj$/nio/file/spi/FileSystemProvider;->createDirectory(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)V

    .line 689
    return-object p0
.end method

.method public static varargs createFile(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "[",
            "Lj$/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Lj$/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    .local p1, "attrs":[Lj$/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    sget-object v0, Lj$/nio/file/Files;->DEFAULT_CREATE_OPTIONS:Ljava/util/Set;

    invoke-static {p0, v0, p1}, Lj$/nio/file/Files;->newByteChannel(Lj$/nio/file/Path;Ljava/util/Set;[Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 647
    return-object p0
.end method

.method private static createFileChannelLinesStream(Ljava/nio/channels/FileChannel;Ljava/nio/charset/Charset;)Lj$/util/stream/Stream;
    .locals 5
    .param p0, "fc"    # Ljava/nio/channels/FileChannel;
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/FileChannel;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lj$/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4068
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    .line 4071
    .local v0, "length":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 4072
    new-instance v2, Lj$/nio/file/FileChannelLinesSpliterator;

    long-to-int v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4, v3}, Lj$/nio/file/FileChannelLinesSpliterator;-><init>(Ljava/nio/channels/FileChannel;Ljava/nio/charset/Charset;II)V

    .line 4073
    .local v2, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/String;>;"
    invoke-static {v2, v4}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v3

    .line 4074
    invoke-static {p0}, Lj$/nio/file/Files;->asUncheckedRunnable(Ljava/io/Closeable;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v3

    check-cast v3, Lj$/util/stream/Stream;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4073
    return-object v3

    .line 4086
    .end local v0    # "length":J
    .end local v2    # "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/String;>;"
    :cond_0
    nop

    .line 4087
    const/4 v0, 0x0

    return-object v0

    .line 4076
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 4078
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 4084
    goto :goto_1

    .line 4079
    :catch_3
    move-exception v1

    .line 4081
    .local v1, "ex":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4083
    goto :goto_1

    .line 4082
    :catchall_0
    move-exception v2

    .line 4085
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_1
    throw v0
.end method

.method public static createLink(Lj$/nio/file/Path;Lj$/nio/file/Path;)Lj$/nio/file/Path;
    .locals 1
    .param p0, "link"    # Lj$/nio/file/Path;
    .param p1, "existing"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1100
    invoke-static {p0}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lj$/nio/file/spi/FileSystemProvider;->createLink(Lj$/nio/file/Path;Lj$/nio/file/Path;)V

    .line 1101
    return-object p0
.end method

.method public static varargs createSymbolicLink(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;
    .locals 1
    .param p0, "link"    # Lj$/nio/file/Path;
    .param p1, "target"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Lj$/nio/file/Path;",
            "[",
            "Lj$/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Lj$/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1057
    .local p2, "attrs":[Lj$/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-static {p0}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lj$/nio/file/spi/FileSystemProvider;->createSymbolicLink(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)V

    .line 1058
    return-object p0
.end method

.method public static varargs createTempDirectory(Lj$/nio/file/Path;Ljava/lang/String;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;
    .locals 1
    .param p0, "dir"    # Lj$/nio/file/Path;
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Ljava/lang/String;",
            "[",
            "Lj$/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Lj$/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 964
    .local p2, "attrs":[Lj$/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/nio/file/Path;

    invoke-static {v0, p1, p2}, Lj$/nio/file/TempFileHelper;->createTempDirectory(Lj$/nio/file/Path;Ljava/lang/String;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static varargs createTempDirectory(Ljava/lang/String;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lj$/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Lj$/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1005
    .local p1, "attrs":[Lj$/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lj$/nio/file/TempFileHelper;->createTempDirectory(Lj$/nio/file/Path;Ljava/lang/String;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static varargs createTempFile(Lj$/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;
    .locals 1
    .param p0, "dir"    # Lj$/nio/file/Path;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Lj$/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Lj$/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 866
    .local p3, "attrs":[Lj$/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/nio/file/Path;

    invoke-static {v0, p1, p2, p3}, Lj$/nio/file/TempFileHelper;->createTempFile(Lj$/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static varargs createTempFile(Ljava/lang/String;Ljava/lang/String;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Lj$/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Lj$/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 911
    .local p2, "attrs":[Lj$/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lj$/nio/file/TempFileHelper;->createTempFile(Lj$/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static delete(Lj$/nio/file/Path;)V
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1140
    invoke-static {p0}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj$/nio/file/spi/FileSystemProvider;->delete(Lj$/nio/file/Path;)V

    .line 1141
    return-void
.end method

.method public static deleteIfExists(Lj$/nio/file/Path;)Z
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1179
    invoke-static {p0}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj$/nio/file/spi/FileSystemProvider;->deleteIfExists(Lj$/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public static varargs exists(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z
    .locals 5
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "options"    # [Lj$/nio/file/LinkOption;

    .line 2436
    array-length v0, p1

    if-nez v0, :cond_0

    .line 2437
    invoke-static {p0}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    .line 2438
    .local v0, "provider":Lj$/nio/file/spi/FileSystemProvider;
    instance-of v1, v0, Lj$/sun/nio/fs/AbstractFileSystemProvider;

    if-eqz v1, :cond_0

    .line 2439
    move-object v1, v0

    check-cast v1, Lj$/sun/nio/fs/AbstractFileSystemProvider;

    invoke-virtual {v1, p0}, Lj$/sun/nio/fs/AbstractFileSystemProvider;->exists(Lj$/nio/file/Path;)Z

    move-result v1

    return v1

    .line 2443
    .end local v0    # "provider":Lj$/nio/file/spi/FileSystemProvider;
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lj$/nio/file/Files;->followLinks([Lj$/nio/file/LinkOption;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2444
    invoke-static {p0}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v1

    new-array v3, v0, [Lj$/nio/file/AccessMode;

    invoke-virtual {v1, p0, v3}, Lj$/nio/file/spi/FileSystemProvider;->checkAccess(Lj$/nio/file/Path;[Lj$/nio/file/AccessMode;)V

    goto :goto_0

    .line 2447
    :cond_1
    const-class v1, Lj$/nio/file/attribute/BasicFileAttributes;

    new-array v3, v2, [Lj$/nio/file/LinkOption;

    sget-object v4, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    aput-object v4, v3, v0

    invoke-static {p0, v1, v3}, Lj$/nio/file/Files;->readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2451
    :goto_0
    return v2

    .line 2452
    :catch_0
    move-exception v1

    .line 2454
    .local v1, "x":Ljava/io/IOException;
    return v0
.end method

.method public static varargs find(Lj$/nio/file/Path;ILjava/util/function/BiPredicate;[Lj$/nio/file/FileVisitOption;)Lj$/util/stream/Stream;
    .locals 4
    .param p0, "start"    # Lj$/nio/file/Path;
    .param p1, "maxDepth"    # I
    .param p3, "options"    # [Lj$/nio/file/FileVisitOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "I",
            "Ljava/util/function/BiPredicate<",
            "Lj$/nio/file/Path;",
            "Lj$/nio/file/attribute/BasicFileAttributes;",
            ">;[",
            "Lj$/nio/file/FileVisitOption;",
            ")",
            "Lj$/util/stream/Stream<",
            "Lj$/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3956
    .local p2, "matcher":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;>;"
    new-instance v0, Lj$/nio/file/FileTreeIterator;

    invoke-direct {v0, p0, p1, p3}, Lj$/nio/file/FileTreeIterator;-><init>(Lj$/nio/file/Path;I[Lj$/nio/file/FileVisitOption;)V

    .line 3958
    .local v0, "iterator":Lj$/nio/file/FileTreeIterator;
    nop

    .line 3959
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lj$/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Lj$/util/Spliterator;

    move-result-object v1

    .line 3960
    .local v1, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<Ljava/nio/file/FileTreeWalker$Event;>;"
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v2

    .line 3961
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lj$/nio/file/Files$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lj$/nio/file/Files$$ExternalSyntheticLambda2;-><init>(Lj$/nio/file/FileTreeIterator;)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Lj$/util/stream/Stream;

    new-instance v3, Lj$/nio/file/Files$$ExternalSyntheticLambda3;

    invoke-direct {v3, p2}, Lj$/nio/file/Files$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/BiPredicate;)V

    .line 3962
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lj$/nio/file/Files$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lj$/nio/file/Files$$ExternalSyntheticLambda4;-><init>()V

    .line 3963
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3960
    return-object v2

    .line 3964
    .end local v1    # "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<Ljava/nio/file/FileTreeWalker$Event;>;"
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 3965
    .local v1, "e":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v0}, Lj$/nio/file/FileTreeIterator;->close()V

    .line 3966
    throw v1
.end method

.method private static varargs followLinks([Lj$/nio/file/LinkOption;)Z
    .locals 5
    .param p0, "options"    # [Lj$/nio/file/LinkOption;

    .line 2394
    const/4 v0, 0x1

    .line 2395
    .local v0, "followLinks":Z
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 2396
    .local v3, "opt":Lj$/nio/file/LinkOption;
    sget-object v4, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    if-ne v3, v4, :cond_0

    .line 2397
    const/4 v0, 0x0

    .line 2398
    nop

    .line 2395
    .end local v3    # "opt":Lj$/nio/file/LinkOption;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2400
    .restart local v3    # "opt":Lj$/nio/file/LinkOption;
    :cond_0
    if-nez v3, :cond_1

    .line 2401
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2402
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Should not get here"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2404
    .end local v3    # "opt":Lj$/nio/file/LinkOption;
    :cond_2
    return v0
.end method

.method public static varargs getAttribute(Lj$/nio/file/Path;Ljava/lang/String;[Lj$/nio/file/LinkOption;)Ljava/lang/Object;
    .locals 4
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "options"    # [Lj$/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1898
    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    .line 1900
    invoke-static {p0, p1, p2}, Lj$/nio/file/Files;->readAttributes(Lj$/nio/file/Path;Ljava/lang/String;[Lj$/nio/file/LinkOption;)Ljava/util/Map;

    move-result-object v0

    .line 1901
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    nop

    .line 1903
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1904
    .local v1, "pos":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1905
    move-object v2, p1

    .local v2, "name":Ljava/lang/String;
    goto :goto_0

    .line 1907
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1909
    .restart local v2    # "name":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 1899
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "pos":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs getFileAttributeView(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/FileAttributeView;
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p2, "options"    # [Lj$/nio/file/LinkOption;
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

    .line 1705
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-static {p0}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lj$/nio/file/spi/FileSystemProvider;->getFileAttributeView(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/FileAttributeView;

    move-result-object v0

    return-object v0
.end method

.method public static getFileStore(Lj$/nio/file/Path;)Lj$/nio/file/FileStore;
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1490
    invoke-static {p0}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj$/nio/file/spi/FileSystemProvider;->getFileStore(Lj$/nio/file/Path;)Lj$/nio/file/FileStore;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getLastModifiedTime(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/FileTime;
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "options"    # [Lj$/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2319
    const-class v0, Lj$/nio/file/attribute/BasicFileAttributes;

    invoke-static {p0, v0, p1}, Lj$/nio/file/Files;->readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Lj$/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getOwner(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/UserPrincipal;
    .locals 2
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "options"    # [Lj$/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2115
    const-class v0, Lj$/nio/file/attribute/FileOwnerAttributeView;

    .line 2116
    invoke-static {p0, v0, p1}, Lj$/nio/file/Files;->getFileAttributeView(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Lj$/nio/file/attribute/FileOwnerAttributeView;

    .line 2117
    .local v0, "view":Lj$/nio/file/attribute/FileOwnerAttributeView;
    if-eqz v0, :cond_0

    .line 2119
    invoke-interface {v0}, Lj$/nio/file/attribute/FileOwnerAttributeView;->getOwner()Lj$/nio/file/attribute/UserPrincipal;

    move-result-object v1

    return-object v1

    .line 2118
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public static varargs getPosixFilePermissions(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Ljava/util/Set;
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "options"    # [Lj$/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "[",
            "Lj$/nio/file/LinkOption;",
            ")",
            "Ljava/util/Set<",
            "Lj$/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2042
    const-class v0, Lj$/nio/file/attribute/PosixFileAttributes;

    invoke-static {p0, v0, p1}, Lj$/nio/file/Files;->readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    check-cast v0, Lj$/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Lj$/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static varargs isAccessible(Lj$/nio/file/Path;[Lj$/nio/file/AccessMode;)Z
    .locals 2
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "modes"    # [Lj$/nio/file/AccessMode;

    .line 2514
    :try_start_0
    invoke-static {p0}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lj$/nio/file/spi/FileSystemProvider;->checkAccess(Lj$/nio/file/Path;[Lj$/nio/file/AccessMode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2515
    const/4 v0, 0x1

    return v0

    .line 2516
    :catch_0
    move-exception v0

    .line 2517
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public static varargs isDirectory(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z
    .locals 2
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "options"    # [Lj$/nio/file/LinkOption;

    .line 2232
    array-length v0, p1

    if-nez v0, :cond_0

    .line 2233
    invoke-static {p0}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    .line 2234
    .local v0, "provider":Lj$/nio/file/spi/FileSystemProvider;
    instance-of v1, v0, Lj$/sun/nio/fs/AbstractFileSystemProvider;

    if-eqz v1, :cond_0

    .line 2235
    move-object v1, v0

    check-cast v1, Lj$/sun/nio/fs/AbstractFileSystemProvider;

    invoke-virtual {v1, p0}, Lj$/sun/nio/fs/AbstractFileSystemProvider;->isDirectory(Lj$/nio/file/Path;)Z

    move-result v1

    return v1

    .line 2239
    .end local v0    # "provider":Lj$/nio/file/spi/FileSystemProvider;
    :cond_0
    :try_start_0
    const-class v0, Lj$/nio/file/attribute/BasicFileAttributes;

    invoke-static {p0, v0, p1}, Lj$/nio/file/Files;->readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2240
    :catch_0
    move-exception v0

    .line 2241
    .local v0, "ioe":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public static isExecutable(Lj$/nio/file/Path;)Z
    .locals 3
    .param p0, "path"    # Lj$/nio/file/Path;

    .line 2615
    const/4 v0, 0x1

    new-array v0, v0, [Lj$/nio/file/AccessMode;

    const/4 v1, 0x0

    sget-object v2, Lj$/nio/file/AccessMode;->EXECUTE:Lj$/nio/file/AccessMode;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lj$/nio/file/Files;->isAccessible(Lj$/nio/file/Path;[Lj$/nio/file/AccessMode;)Z

    move-result v0

    return v0
.end method

.method public static isHidden(Lj$/nio/file/Path;)Z
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1560
    invoke-static {p0}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj$/nio/file/spi/FileSystemProvider;->isHidden(Lj$/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public static isReadable(Lj$/nio/file/Path;)Z
    .locals 3
    .param p0, "path"    # Lj$/nio/file/Path;

    .line 2549
    const/4 v0, 0x1

    new-array v0, v0, [Lj$/nio/file/AccessMode;

    const/4 v1, 0x0

    sget-object v2, Lj$/nio/file/AccessMode;->READ:Lj$/nio/file/AccessMode;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lj$/nio/file/Files;->isAccessible(Lj$/nio/file/Path;[Lj$/nio/file/AccessMode;)Z

    move-result v0

    return v0
.end method

.method public static varargs isRegularFile(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z
    .locals 2
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "options"    # [Lj$/nio/file/LinkOption;

    .line 2275
    array-length v0, p1

    if-nez v0, :cond_0

    .line 2276
    invoke-static {p0}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    .line 2277
    .local v0, "provider":Lj$/nio/file/spi/FileSystemProvider;
    instance-of v1, v0, Lj$/sun/nio/fs/AbstractFileSystemProvider;

    if-eqz v1, :cond_0

    .line 2278
    move-object v1, v0

    check-cast v1, Lj$/sun/nio/fs/AbstractFileSystemProvider;

    invoke-virtual {v1, p0}, Lj$/sun/nio/fs/AbstractFileSystemProvider;->isRegularFile(Lj$/nio/file/Path;)Z

    move-result v1

    return v1

    .line 2282
    .end local v0    # "provider":Lj$/nio/file/spi/FileSystemProvider;
    :cond_0
    :try_start_0
    const-class v0, Lj$/nio/file/attribute/BasicFileAttributes;

    invoke-static {p0, v0, p1}, Lj$/nio/file/Files;->readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2283
    :catch_0
    move-exception v0

    .line 2284
    .local v0, "ioe":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public static isSameFile(Lj$/nio/file/Path;Lj$/nio/file/Path;)Z
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "path2"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1533
    invoke-static {p0}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lj$/nio/file/spi/FileSystemProvider;->isSameFile(Lj$/nio/file/Path;Lj$/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public static isSymbolicLink(Lj$/nio/file/Path;)Z
    .locals 4
    .param p0, "path"    # Lj$/nio/file/Path;

    .line 2194
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lj$/nio/file/attribute/BasicFileAttributes;

    const/4 v2, 0x1

    new-array v2, v2, [Lj$/nio/file/LinkOption;

    sget-object v3, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    aput-object v3, v2, v0

    invoke-static {p0, v1, v2}, Lj$/nio/file/Files;->readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    .line 2196
    invoke-interface {v1}, Lj$/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2194
    return v0

    .line 2197
    :catch_0
    move-exception v1

    .line 2198
    .local v1, "ioe":Ljava/io/IOException;
    return v0
.end method

.method public static isWritable(Lj$/nio/file/Path;)Z
    .locals 3
    .param p0, "path"    # Lj$/nio/file/Path;

    .line 2580
    const/4 v0, 0x1

    new-array v0, v0, [Lj$/nio/file/AccessMode;

    const/4 v1, 0x0

    sget-object v2, Lj$/nio/file/AccessMode;->WRITE:Lj$/nio/file/AccessMode;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lj$/nio/file/Files;->isAccessible(Lj$/nio/file/Path;[Lj$/nio/file/AccessMode;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$asUncheckedRunnable$0(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "c"    # Ljava/io/Closeable;

    .line 109
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    nop

    .line 113
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method static synthetic lambda$find$0(Ljava/util/function/BiPredicate;Lj$/nio/file/FileTreeWalker$Event;)Z
    .locals 2
    .param p0, "matcher"    # Ljava/util/function/BiPredicate;
    .param p1, "entry"    # Lj$/nio/file/FileTreeWalker$Event;

    .line 3962
    invoke-virtual {p1}, Lj$/nio/file/FileTreeWalker$Event;->file()Lj$/nio/file/Path;

    move-result-object v0

    invoke-virtual {p1}, Lj$/nio/file/FileTreeWalker$Event;->attributes()Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$find$1(Lj$/nio/file/FileTreeWalker$Event;)Lj$/nio/file/Path;
    .locals 1
    .param p0, "entry"    # Lj$/nio/file/FileTreeWalker$Event;

    .line 3963
    invoke-virtual {p0}, Lj$/nio/file/FileTreeWalker$Event;->file()Lj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$walk$0(Lj$/nio/file/FileTreeWalker$Event;)Lj$/nio/file/Path;
    .locals 1
    .param p0, "entry"    # Lj$/nio/file/FileTreeWalker$Event;

    .line 3845
    invoke-virtual {p0}, Lj$/nio/file/FileTreeWalker$Event;->file()Lj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static lines(Lj$/nio/file/Path;)Lj$/util/stream/Stream;
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            ")",
            "Lj$/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4146
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lj$/nio/file/Files;->lines(Lj$/nio/file/Path;Ljava/nio/charset/Charset;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static lines(Lj$/nio/file/Path;Ljava/nio/charset/Charset;)Lj$/util/stream/Stream;
    .locals 3
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lj$/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4050
    invoke-interface {p0}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/FileSystem;

    move-result-object v0

    invoke-static {}, Lj$/nio/file/FileSystems;->getDefault()Lj$/nio/file/FileSystem;

    move-result-object v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lj$/nio/file/FileChannelLinesSpliterator;->SUPPORTED_CHARSET_NAMES:Ljava/util/Set;

    .line 4051
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4052
    const/4 v0, 0x1

    new-array v0, v0, [Lj$/nio/file/OpenOption;

    const/4 v1, 0x0

    sget-object v2, Lj$/nio/file/StandardOpenOption;->READ:Lj$/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lj$/nio/channels/DesugarChannels;->open(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 4054
    .local v0, "fc":Ljava/nio/channels/FileChannel;
    invoke-static {v0, p1}, Lj$/nio/file/Files;->createFileChannelLinesStream(Ljava/nio/channels/FileChannel;Ljava/nio/charset/Charset;)Lj$/util/stream/Stream;

    move-result-object v1

    .line 4055
    .local v1, "fcls":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 4056
    return-object v1

    .line 4058
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 4061
    .end local v0    # "fc":Ljava/nio/channels/FileChannel;
    .end local v1    # "fcls":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/lang/String;>;"
    :cond_1
    invoke-static {p0, p1}, Lj$/nio/file/Files;->newBufferedReader(Lj$/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/Files;->createBufferedReaderLinesStream(Ljava/io/BufferedReader;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static list(Lj$/nio/file/Path;)Lj$/util/stream/Stream;
    .locals 6
    .param p0, "dir"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            ")",
            "Lj$/util/stream/Stream<",
            "Lj$/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3713
    invoke-static {p0}, Lj$/nio/file/Files;->newDirectoryStream(Lj$/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    .line 3715
    .local v0, "ds":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_0
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3718
    .local v1, "delegate":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/file/Path;>;"
    new-instance v2, Lj$/nio/file/Files$2;

    invoke-direct {v2, v1}, Lj$/nio/file/Files$2;-><init>(Ljava/util/Iterator;)V

    .line 3737
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/file/Path;>;"
    nop

    .line 3738
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lj$/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Lj$/util/Spliterator;

    move-result-object v3

    .line 3739
    .local v3, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<Ljava/nio/file/Path;>;"
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v4

    .line 3740
    invoke-static {v0}, Lj$/nio/file/Files;->asUncheckedRunnable(Ljava/io/Closeable;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-interface {v4, v5}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v4

    check-cast v4, Lj$/util/stream/Stream;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3739
    return-object v4

    .line 3741
    .end local v1    # "delegate":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/file/Path;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/file/Path;>;"
    .end local v3    # "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<Ljava/nio/file/Path;>;"
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 3743
    .local v1, "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3748
    goto :goto_2

    .line 3744
    :catch_2
    move-exception v2

    .line 3746
    .local v2, "ex":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3747
    :goto_1
    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_1

    .line 3749
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_2
    throw v1
.end method

.method public static varargs move(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)Lj$/nio/file/Path;
    .locals 2
    .param p0, "source"    # Lj$/nio/file/Path;
    .param p1, "target"    # Lj$/nio/file/Path;
    .param p2, "options"    # [Lj$/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1419
    invoke-static {p0}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    .line 1423
    .local v0, "provider":Lj$/nio/file/spi/FileSystemProvider;
    invoke-static {p1}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1425
    invoke-virtual {v0, p0, p1, p2}, Lj$/nio/file/spi/FileSystemProvider;->move(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)V

    goto :goto_0

    .line 1427
    :cond_0
    invoke-static {p0, p1, p2}, Lj$/nio/file/CopyMoveHelper;->moveToForeignTarget(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)V

    .line 1429
    :goto_0
    return-object p1
.end method

.method public static newBufferedReader(Lj$/nio/file/Path;)Ljava/io/BufferedReader;
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2875
    sget-object v0, Lj$/sun/nio/cs/UTF_8;->INSTANCE:Lj$/sun/nio/cs/UTF_8;

    invoke-static {p0, v0}, Lj$/nio/file/Files;->newBufferedReader(Lj$/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public static newBufferedReader(Lj$/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;
    .locals 3
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2842
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 2843
    .local v0, "decoder":Ljava/nio/charset/CharsetDecoder;
    new-instance v1, Ljava/io/InputStreamReader;

    const/4 v2, 0x0

    new-array v2, v2, [Lj$/nio/file/OpenOption;

    invoke-static {p0, v2}, Lj$/nio/file/Files;->newInputStream(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/CharsetDecoder;)V

    .line 2844
    .local v1, "reader":Ljava/io/Reader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v2
.end method

.method public static varargs newBufferedWriter(Lj$/nio/file/Path;Ljava/nio/charset/Charset;[Lj$/nio/file/OpenOption;)Ljava/io/BufferedWriter;
    .locals 3
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "options"    # [Lj$/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2923
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 2924
    .local v0, "encoder":Ljava/nio/charset/CharsetEncoder;
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-static {p0, p2}, Lj$/nio/file/Files;->newOutputStream(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;)V

    .line 2925
    .local v1, "writer":Ljava/io/Writer;
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    return-object v2
.end method

.method public static varargs newBufferedWriter(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/io/BufferedWriter;
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "options"    # [Lj$/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2967
    sget-object v0, Lj$/sun/nio/cs/UTF_8;->INSTANCE:Lj$/sun/nio/cs/UTF_8;

    invoke-static {p0, v0, p1}, Lj$/nio/file/Files;->newBufferedWriter(Lj$/nio/file/Path;Ljava/nio/charset/Charset;[Lj$/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newByteChannel(Lj$/nio/file/Path;Ljava/util/Set;[Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
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

    .line 369
    .local p1, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    .local p2, "attrs":[Lj$/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-static {p0}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lj$/nio/file/spi/FileSystemProvider;->newByteChannel(Lj$/nio/file/Path;Ljava/util/Set;[Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newByteChannel(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;
    .locals 2
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "options"    # [Lj$/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    array-length v0, p1

    if-nez v0, :cond_0

    .line 415
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/OpenOption;>;"
    goto :goto_0

    .line 417
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/OpenOption;>;"
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 418
    .restart local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/OpenOption;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 420
    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Lj$/nio/file/attribute/FileAttribute;

    invoke-static {p0, v0, v1}, Lj$/nio/file/Files;->newByteChannel(Lj$/nio/file/Path;Ljava/util/Set;[Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v1

    return-object v1
.end method

.method public static newDirectoryStream(Lj$/nio/file/Path;)Ljava/nio/file/DirectoryStream;
    .locals 2
    .param p0, "dir"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            ")",
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

    .line 470
    invoke-static {p0}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    sget-object v1, Lj$/nio/file/Files$AcceptAllFilter;->FILTER:Lj$/nio/file/Files$AcceptAllFilter;

    invoke-virtual {v0, p0, v1}, Lj$/nio/file/spi/FileSystemProvider;->newDirectoryStream(Lj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    return-object v0
.end method

.method public static newDirectoryStream(Lj$/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/DirectoryStream;
    .locals 4
    .param p0, "dir"    # Lj$/nio/file/Path;
    .param p1, "glob"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Ljava/lang/String;",
            ")",
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

    .line 526
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    invoke-static {p0}, Lj$/nio/file/Files;->newDirectoryStream(Lj$/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    return-object v0

    .line 530
    :cond_0
    invoke-interface {p0}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/FileSystem;

    move-result-object v0

    .line 531
    .local v0, "fs":Lj$/nio/file/FileSystem;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glob:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Lj$/nio/file/PathMatcher;

    move-result-object v1

    .line 532
    .local v1, "matcher":Lj$/nio/file/PathMatcher;
    new-instance v2, Lj$/nio/file/Files$1;

    invoke-direct {v2, v1}, Lj$/nio/file/Files$1;-><init>(Lj$/nio/file/PathMatcher;)V

    .line 538
    .local v2, "filter":Ljava/nio/file/DirectoryStream$Filter;, "Ljava/nio/file/DirectoryStream$Filter<Ljava/nio/file/Path;>;"
    invoke-virtual {v0}, Lj$/nio/file/FileSystem;->provider()Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lj$/nio/file/spi/FileSystemProvider;->newDirectoryStream(Lj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object v3

    return-object v3
.end method

.method public static newDirectoryStream(Lj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;
    .locals 1
    .param p0, "dir"    # Lj$/nio/file/Path;
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

    .line 602
    .local p1, "filter":Ljava/nio/file/DirectoryStream$Filter;, "Ljava/nio/file/DirectoryStream$Filter<-Ljava/nio/file/Path;>;"
    invoke-static {p0}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lj$/nio/file/spi/FileSystemProvider;->newDirectoryStream(Lj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newInputStream(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/io/InputStream;
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "options"    # [Lj$/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-static {p0}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lj$/nio/file/spi/FileSystemProvider;->newInputStream(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newOutputStream(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "options"    # [Lj$/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-static {p0}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lj$/nio/file/spi/FileSystemProvider;->newOutputStream(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs notExists(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z
    .locals 5
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "options"    # [Lj$/nio/file/LinkOption;

    .line 2492
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lj$/nio/file/Files;->followLinks([Lj$/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2493
    invoke-static {p0}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v2

    new-array v3, v1, [Lj$/nio/file/AccessMode;

    invoke-virtual {v2, p0, v3}, Lj$/nio/file/spi/FileSystemProvider;->checkAccess(Lj$/nio/file/Path;[Lj$/nio/file/AccessMode;)V

    goto :goto_0

    .line 2496
    :cond_0
    const-class v2, Lj$/nio/file/attribute/BasicFileAttributes;

    new-array v3, v0, [Lj$/nio/file/LinkOption;

    sget-object v4, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lj$/nio/file/Files;->readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2500
    :goto_0
    return v1

    .line 2504
    :catch_0
    move-exception v0

    .line 2505
    .local v0, "x":Ljava/io/IOException;
    return v1

    .line 2501
    .end local v0    # "x":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 2503
    .local v1, "x":Ljava/nio/file/NoSuchFileException;
    return v0
.end method

.method public static probeContentType(Lj$/nio/file/Path;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1647
    sget-object v0, Lj$/nio/file/Files$FileTypeDetectors;->installedDetectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/nio/file/spi/FileTypeDetector;

    .line 1648
    .local v1, "detector":Lj$/nio/file/spi/FileTypeDetector;
    invoke-virtual {v1, p0}, Lj$/nio/file/spi/FileTypeDetector;->probeContentType(Lj$/nio/file/Path;)Ljava/lang/String;

    move-result-object v2

    .line 1649
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1650
    return-object v2

    .line 1651
    .end local v1    # "detector":Lj$/nio/file/spi/FileTypeDetector;
    .end local v2    # "result":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1654
    :cond_1
    sget-object v0, Lj$/nio/file/Files$FileTypeDetectors;->defaultFileTypeDetector:Lj$/nio/file/spi/FileTypeDetector;

    invoke-virtual {v0, p0}, Lj$/nio/file/spi/FileTypeDetector;->probeContentType(Lj$/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;

    .line 99
    invoke-interface {p0}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lj$/nio/file/FileSystem;->provider()Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    return-object v0
.end method

.method private static read(Ljava/io/InputStream;I)[B
    .locals 6
    .param p0, "source"    # Ljava/io/InputStream;
    .param p1, "initialSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3157
    move v0, p1

    .line 3158
    .local v0, "capacity":I
    new-array v1, v0, [B

    .line 3159
    .local v1, "buf":[B
    const/4 v2, 0x0

    .line 3164
    .local v2, "nread":I
    :goto_0
    sub-int v3, v0, v2

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move v4, v3

    .local v4, "n":I
    if-lez v3, :cond_0

    .line 3165
    add-int/2addr v2, v4

    goto :goto_0

    .line 3169
    :cond_0
    if-ltz v4, :cond_4

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    move v4, v3

    if-gez v3, :cond_1

    .line 3170
    goto :goto_2

    .line 3173
    :cond_1
    const v3, 0x7ffffff7

    sub-int v5, v3, v0

    if-gt v0, v5, :cond_2

    .line 3174
    shl-int/lit8 v3, v0, 0x1

    const/16 v5, 0x2000

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 3176
    :cond_2
    if-eq v0, v3, :cond_3

    .line 3178
    const v0, 0x7ffffff7

    .line 3180
    :goto_1
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 3181
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "nread":I
    .local v3, "nread":I
    int-to-byte v5, v4

    aput-byte v5, v1, v2

    move v2, v3

    goto :goto_0

    .line 3177
    .end local v3    # "nread":I
    .restart local v2    # "nread":I
    :cond_3
    new-instance v3, Ljava/lang/OutOfMemoryError;

    const-string v5, "Required array size too large"

    invoke-direct {v3, v5}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3183
    :cond_4
    :goto_2
    if-ne v0, v2, :cond_5

    move-object v3, v1

    goto :goto_3

    :cond_5
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    :goto_3
    return-object v3
.end method

.method public static readAllBytes(Lj$/nio/file/Path;)[B
    .locals 7
    .param p0, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3211
    const/4 v0, 0x0

    new-array v0, v0, [Lj$/nio/file/OpenOption;

    invoke-static {p0, v0}, Lj$/nio/file/Files;->newByteChannel(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    .line 3212
    .local v0, "sbc":Ljava/nio/channels/SeekableByteChannel;
    :try_start_0
    invoke-static {v0}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3216
    .local v1, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v2

    .line 3217
    .local v2, "size":J
    const-wide/32 v4, 0x7ffffff7

    cmp-long v6, v2, v4

    if-gtz v6, :cond_2

    .line 3219
    long-to-int v4, v2

    invoke-static {v1, v4}, Lj$/nio/file/Files;->read(Ljava/io/InputStream;I)[B

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3220
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 3219
    :cond_1
    return-object v4

    .line 3218
    :cond_2
    :try_start_3
    new-instance v4, Ljava/lang/OutOfMemoryError;

    const-string v5, "Required array size too large"

    invoke-direct {v4, v5}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    .end local v0    # "sbc":Ljava/nio/channels/SeekableByteChannel;
    .end local v1    # "in":Ljava/io/InputStream;
    .end local p0    # "path":Lj$/nio/file/Path;
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3211
    .end local v2    # "size":J
    .restart local v0    # "sbc":Ljava/nio/channels/SeekableByteChannel;
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local p0    # "path":Lj$/nio/file/Path;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "sbc":Ljava/nio/channels/SeekableByteChannel;
    .end local p0    # "path":Lj$/nio/file/Path;
    :cond_3
    :goto_0
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v0    # "sbc":Ljava/nio/channels/SeekableByteChannel;
    .restart local p0    # "path":Lj$/nio/file/Path;
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_6
    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1
.end method

.method public static readAllLines(Lj$/nio/file/Path;)Ljava/util/List;
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3380
    sget-object v0, Lj$/sun/nio/cs/UTF_8;->INSTANCE:Lj$/sun/nio/cs/UTF_8;

    invoke-static {p0, v0}, Lj$/nio/file/Files;->readAllLines(Lj$/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readAllLines(Lj$/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 3
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3340
    invoke-static {p0, p1}, Lj$/nio/file/Files;->newBufferedReader(Lj$/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v0

    .line 3341
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3343
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3344
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 3345
    nop

    .line 3348
    .end local v2    # "line":Ljava/lang/String;
    nop

    .line 3349
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 3348
    :cond_0
    return-object v1

    .line 3346
    .restart local v2    # "line":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3347
    nop

    .end local v2    # "line":Ljava/lang/String;
    goto :goto_0

    .line 3340
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method public static varargs readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p2, "options"    # [Lj$/nio/file/LinkOption;
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

    .line 1768
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-static {p0}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lj$/nio/file/spi/FileSystemProvider;->readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static varargs readAttributes(Lj$/nio/file/Path;Ljava/lang/String;[Lj$/nio/file/LinkOption;)Ljava/util/Map;
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "attributes"    # Ljava/lang/String;
    .param p2, "options"    # [Lj$/nio/file/LinkOption;
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

    .line 2001
    invoke-static {p0}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lj$/nio/file/spi/FileSystemProvider;->readAttributes(Lj$/nio/file/Path;Ljava/lang/String;[Lj$/nio/file/LinkOption;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static readString(Lj$/nio/file/Path;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3249
    sget-object v0, Lj$/sun/nio/cs/UTF_8;->INSTANCE:Lj$/sun/nio/cs/UTF_8;

    invoke-static {p0, v0}, Lj$/nio/file/Files;->readString(Lj$/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readString(Lj$/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3287
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3288
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3290
    invoke-static {p0}, Lj$/nio/file/Files;->readAllBytes(Lj$/nio/file/Path;)[B

    move-result-object v0

    .line 3297
    .local v0, "ba":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static readSymbolicLink(Lj$/nio/file/Path;)Lj$/nio/file/Path;
    .locals 1
    .param p0, "link"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1461
    invoke-static {p0}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj$/nio/file/spi/FileSystemProvider;->readSymbolicLink(Lj$/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static varargs setAttribute(Lj$/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Lj$/nio/file/LinkOption;)Lj$/nio/file/Path;
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "options"    # [Lj$/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1836
    invoke-static {p0}, Lj$/nio/file/Files;->provider(Lj$/nio/file/Path;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lj$/nio/file/spi/FileSystemProvider;->setAttribute(Lj$/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Lj$/nio/file/LinkOption;)V

    .line 1837
    return-object p0
.end method

.method public static setLastModifiedTime(Lj$/nio/file/Path;Lj$/nio/file/attribute/FileTime;)Lj$/nio/file/Path;
    .locals 3
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "time"    # Lj$/nio/file/attribute/FileTime;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2358
    const-class v0, Lj$/nio/file/attribute/BasicFileAttributeView;

    const/4 v1, 0x0

    new-array v1, v1, [Lj$/nio/file/LinkOption;

    invoke-static {p0, v0, v1}, Lj$/nio/file/Files;->getFileAttributeView(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Lj$/nio/file/attribute/BasicFileAttributeView;

    .line 2359
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/nio/file/attribute/FileTime;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lj$/nio/file/attribute/BasicFileAttributeView;->setTimes(Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;)V

    .line 2360
    return-object p0
.end method

.method public static setOwner(Lj$/nio/file/Path;Lj$/nio/file/attribute/UserPrincipal;)Lj$/nio/file/Path;
    .locals 2
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "owner"    # Lj$/nio/file/attribute/UserPrincipal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2164
    const-class v0, Lj$/nio/file/attribute/FileOwnerAttributeView;

    const/4 v1, 0x0

    new-array v1, v1, [Lj$/nio/file/LinkOption;

    .line 2165
    invoke-static {p0, v0, v1}, Lj$/nio/file/Files;->getFileAttributeView(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Lj$/nio/file/attribute/FileOwnerAttributeView;

    .line 2166
    .local v0, "view":Lj$/nio/file/attribute/FileOwnerAttributeView;
    if-eqz v0, :cond_0

    .line 2168
    invoke-interface {v0, p1}, Lj$/nio/file/attribute/FileOwnerAttributeView;->setOwner(Lj$/nio/file/attribute/UserPrincipal;)V

    .line 2169
    return-object p0

    .line 2167
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public static setPosixFilePermissions(Lj$/nio/file/Path;Ljava/util/Set;)Lj$/nio/file/Path;
    .locals 2
    .param p0, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Ljava/util/Set<",
            "Lj$/nio/file/attribute/PosixFilePermission;",
            ">;)",
            "Lj$/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2080
    .local p1, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    const-class v0, Lj$/nio/file/attribute/PosixFileAttributeView;

    const/4 v1, 0x0

    new-array v1, v1, [Lj$/nio/file/LinkOption;

    .line 2081
    invoke-static {p0, v0, v1}, Lj$/nio/file/Files;->getFileAttributeView(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Lj$/nio/file/attribute/PosixFileAttributeView;

    .line 2082
    .local v0, "view":Lj$/nio/file/attribute/PosixFileAttributeView;
    if-eqz v0, :cond_0

    .line 2084
    invoke-interface {v0, p1}, Lj$/nio/file/attribute/PosixFileAttributeView;->setPermissions(Ljava/util/Set;)V

    .line 2085
    return-object p0

    .line 2083
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public static size(Lj$/nio/file/Path;)J
    .locals 2
    .param p0, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2385
    const-class v0, Lj$/nio/file/attribute/BasicFileAttributes;

    const/4 v1, 0x0

    new-array v1, v1, [Lj$/nio/file/LinkOption;

    invoke-static {p0, v0, v1}, Lj$/nio/file/Files;->readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs walk(Lj$/nio/file/Path;I[Lj$/nio/file/FileVisitOption;)Lj$/util/stream/Stream;
    .locals 4
    .param p0, "start"    # Lj$/nio/file/Path;
    .param p1, "maxDepth"    # I
    .param p2, "options"    # [Lj$/nio/file/FileVisitOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "I[",
            "Lj$/nio/file/FileVisitOption;",
            ")",
            "Lj$/util/stream/Stream<",
            "Lj$/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3839
    new-instance v0, Lj$/nio/file/FileTreeIterator;

    invoke-direct {v0, p0, p1, p2}, Lj$/nio/file/FileTreeIterator;-><init>(Lj$/nio/file/Path;I[Lj$/nio/file/FileVisitOption;)V

    .line 3841
    .local v0, "iterator":Lj$/nio/file/FileTreeIterator;
    nop

    .line 3842
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lj$/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Lj$/util/Spliterator;

    move-result-object v1

    .line 3843
    .local v1, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<Ljava/nio/file/FileTreeWalker$Event;>;"
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v2

    .line 3844
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lj$/nio/file/Files$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lj$/nio/file/Files$$ExternalSyntheticLambda2;-><init>(Lj$/nio/file/FileTreeIterator;)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Lj$/util/stream/Stream;

    new-instance v3, Lj$/nio/file/Files$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lj$/nio/file/Files$$ExternalSyntheticLambda5;-><init>()V

    .line 3845
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3843
    return-object v2

    .line 3846
    .end local v1    # "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<Ljava/nio/file/FileTreeWalker$Event;>;"
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 3847
    .local v1, "e":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v0}, Lj$/nio/file/FileTreeIterator;->close()V

    .line 3848
    throw v1
.end method

.method public static varargs walk(Lj$/nio/file/Path;[Lj$/nio/file/FileVisitOption;)Lj$/util/stream/Stream;
    .locals 1
    .param p0, "start"    # Lj$/nio/file/Path;
    .param p1, "options"    # [Lj$/nio/file/FileVisitOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "[",
            "Lj$/nio/file/FileVisitOption;",
            ")",
            "Lj$/util/stream/Stream<",
            "Lj$/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3893
    const v0, 0x7fffffff

    invoke-static {p0, v0, p1}, Lj$/nio/file/Files;->walk(Lj$/nio/file/Path;I[Lj$/nio/file/FileVisitOption;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static walkFileTree(Lj$/nio/file/Path;Lj$/nio/file/FileVisitor;)Lj$/nio/file/Path;
    .locals 2
    .param p0, "start"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Lj$/nio/file/FileVisitor<",
            "-",
            "Lj$/nio/file/Path;",
            ">;)",
            "Lj$/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2801
    .local p1, "visitor":Lj$/nio/file/FileVisitor;, "Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;"
    const-class v0, Lj$/nio/file/FileVisitOption;

    .line 2802
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 2801
    const v1, 0x7fffffff

    invoke-static {p0, v0, v1, p1}, Lj$/nio/file/Files;->walkFileTree(Lj$/nio/file/Path;Ljava/util/Set;ILj$/nio/file/FileVisitor;)Lj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static walkFileTree(Lj$/nio/file/Path;Ljava/util/Set;ILj$/nio/file/FileVisitor;)Lj$/nio/file/Path;
    .locals 5
    .param p0, "start"    # Lj$/nio/file/Path;
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Ljava/util/Set<",
            "Lj$/nio/file/FileVisitOption;",
            ">;I",
            "Lj$/nio/file/FileVisitor<",
            "-",
            "Lj$/nio/file/Path;",
            ">;)",
            "Lj$/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2720
    .local p1, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;"
    .local p3, "visitor":Lj$/nio/file/FileVisitor;, "Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;"
    new-instance v0, Lj$/nio/file/FileTreeWalker;

    invoke-direct {v0, p1, p2}, Lj$/nio/file/FileTreeWalker;-><init>(Ljava/util/Collection;I)V

    .line 2721
    .local v0, "walker":Lj$/nio/file/FileTreeWalker;
    :try_start_0
    invoke-virtual {v0, p0}, Lj$/nio/file/FileTreeWalker;->walk(Lj$/nio/file/Path;)Lj$/nio/file/FileTreeWalker$Event;

    move-result-object v1

    .line 2724
    .local v1, "ev":Lj$/nio/file/FileTreeWalker$Event;
    :cond_0
    sget-object v2, Lj$/nio/file/Files$3;->$SwitchMap$java$nio$file$FileTreeWalker$EventType:[I

    invoke-virtual {v1}, Lj$/nio/file/FileTreeWalker$Event;->type()Lj$/nio/file/FileTreeWalker$EventType;

    move-result-object v3

    invoke-virtual {v3}, Lj$/nio/file/FileTreeWalker$EventType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2755
    new-instance v2, Ljava/lang/AssertionError;

    goto/16 :goto_2

    .line 2747
    :pswitch_0
    invoke-virtual {v1}, Lj$/nio/file/FileTreeWalker$Event;->file()Lj$/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1}, Lj$/nio/file/FileTreeWalker$Event;->ioeException()Ljava/io/IOException;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Lj$/nio/file/FileVisitor;->postVisitDirectory(Ljava/lang/Object;Ljava/io/IOException;)Lj$/nio/file/FileVisitResult;

    move-result-object v2

    .line 2750
    .local v2, "result":Lj$/nio/file/FileVisitResult;
    sget-object v3, Lj$/nio/file/FileVisitResult;->SKIP_SIBLINGS:Lj$/nio/file/FileVisitResult;

    if-ne v2, v3, :cond_3

    .line 2751
    sget-object v3, Lj$/nio/file/FileVisitResult;->CONTINUE:Lj$/nio/file/FileVisitResult;

    move-object v2, v3

    goto :goto_0

    .line 2736
    .end local v2    # "result":Lj$/nio/file/FileVisitResult;
    :pswitch_1
    invoke-virtual {v1}, Lj$/nio/file/FileTreeWalker$Event;->file()Lj$/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1}, Lj$/nio/file/FileTreeWalker$Event;->attributes()Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Lj$/nio/file/FileVisitor;->preVisitDirectory(Ljava/lang/Object;Lj$/nio/file/attribute/BasicFileAttributes;)Lj$/nio/file/FileVisitResult;

    move-result-object v2

    .line 2741
    .restart local v2    # "result":Lj$/nio/file/FileVisitResult;
    sget-object v3, Lj$/nio/file/FileVisitResult;->SKIP_SUBTREE:Lj$/nio/file/FileVisitResult;

    if-eq v2, v3, :cond_1

    sget-object v3, Lj$/nio/file/FileVisitResult;->SKIP_SIBLINGS:Lj$/nio/file/FileVisitResult;

    if-ne v2, v3, :cond_3

    .line 2743
    :cond_1
    invoke-virtual {v0}, Lj$/nio/file/FileTreeWalker;->pop()V

    goto :goto_0

    .line 2726
    .end local v2    # "result":Lj$/nio/file/FileVisitResult;
    :pswitch_2
    invoke-virtual {v1}, Lj$/nio/file/FileTreeWalker$Event;->ioeException()Ljava/io/IOException;

    move-result-object v2

    .line 2727
    .local v2, "ioe":Ljava/io/IOException;
    if-nez v2, :cond_2

    .line 2728
    nop

    .line 2729
    invoke-virtual {v1}, Lj$/nio/file/FileTreeWalker$Event;->file()Lj$/nio/file/Path;

    move-result-object v3

    invoke-virtual {v1}, Lj$/nio/file/FileTreeWalker$Event;->attributes()Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Lj$/nio/file/FileVisitor;->visitFile(Ljava/lang/Object;Lj$/nio/file/attribute/BasicFileAttributes;)Lj$/nio/file/FileVisitResult;

    move-result-object v3

    move-object v2, v3

    .local v3, "result":Lj$/nio/file/FileVisitResult;
    goto :goto_0

    .line 2731
    .end local v3    # "result":Lj$/nio/file/FileVisitResult;
    :cond_2
    invoke-virtual {v1}, Lj$/nio/file/FileTreeWalker$Event;->file()Lj$/nio/file/Path;

    move-result-object v3

    invoke-interface {p3, v3, v2}, Lj$/nio/file/FileVisitor;->visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Lj$/nio/file/FileVisitResult;

    move-result-object v3

    .line 2733
    .restart local v3    # "result":Lj$/nio/file/FileVisitResult;
    move-object v2, v3

    .line 2758
    .end local v3    # "result":Lj$/nio/file/FileVisitResult;
    .local v2, "result":Lj$/nio/file/FileVisitResult;
    :cond_3
    :goto_0
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lj$/nio/file/FileVisitResult;->CONTINUE:Lj$/nio/file/FileVisitResult;

    if-eq v3, v4, :cond_5

    .line 2759
    sget-object v3, Lj$/nio/file/FileVisitResult;->TERMINATE:Lj$/nio/file/FileVisitResult;

    if-ne v2, v3, :cond_4

    .line 2760
    goto :goto_1

    .line 2761
    :cond_4
    sget-object v3, Lj$/nio/file/FileVisitResult;->SKIP_SIBLINGS:Lj$/nio/file/FileVisitResult;

    if-ne v2, v3, :cond_5

    .line 2762
    invoke-virtual {v0}, Lj$/nio/file/FileTreeWalker;->skipRemainingSiblings()V

    .line 2765
    :cond_5
    invoke-virtual {v0}, Lj$/nio/file/FileTreeWalker;->next()Lj$/nio/file/FileTreeWalker$Event;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 2766
    .end local v2    # "result":Lj$/nio/file/FileVisitResult;
    if-nez v1, :cond_0

    .line 2767
    .end local v1    # "ev":Lj$/nio/file/FileTreeWalker$Event;
    :goto_1
    invoke-virtual {v0}, Lj$/nio/file/FileTreeWalker;->close()V

    .line 2769
    .end local v0    # "walker":Lj$/nio/file/FileTreeWalker;
    return-object p0

    .line 2755
    .restart local v0    # "walker":Lj$/nio/file/FileTreeWalker;
    .restart local v1    # "ev":Lj$/nio/file/FileTreeWalker$Event;
    :goto_2
    :try_start_1
    const-string v3, "Should not get here"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "walker":Lj$/nio/file/FileTreeWalker;
    .end local p0    # "start":Lj$/nio/file/Path;
    .end local p1    # "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;"
    .end local p2    # "maxDepth":I
    .end local p3    # "visitor":Lj$/nio/file/FileVisitor;, "Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;"
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2720
    .end local v1    # "ev":Lj$/nio/file/FileTreeWalker$Event;
    .restart local v0    # "walker":Lj$/nio/file/FileTreeWalker;
    .restart local p0    # "start":Lj$/nio/file/Path;
    .restart local p1    # "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;"
    .restart local p2    # "maxDepth":I
    .restart local p3    # "visitor":Lj$/nio/file/FileVisitor;, "Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;"
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Lj$/nio/file/FileTreeWalker;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static varargs write(Lj$/nio/file/Path;Ljava/lang/Iterable;Ljava/nio/charset/Charset;[Lj$/nio/file/OpenOption;)Lj$/nio/file/Path;
    .locals 5
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p2, "cs"    # Ljava/nio/charset/Charset;
    .param p3, "options"    # [Lj$/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/nio/charset/Charset;",
            "[",
            "Lj$/nio/file/OpenOption;",
            ")",
            "Lj$/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3498
    .local p1, "lines":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/CharSequence;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3499
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 3500
    .local v0, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-static {p0, p3}, Lj$/nio/file/Files;->newOutputStream(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1

    .line 3501
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3502
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 3503
    .local v4, "line":Ljava/lang/CharSequence;
    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 3504
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3505
    .end local v4    # "line":Ljava/lang/CharSequence;
    goto :goto_0

    .line 3506
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 3507
    .end local v1    # "out":Ljava/io/OutputStream;
    :cond_1
    return-object p0

    .line 3500
    .restart local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "encoder":Ljava/nio/charset/CharsetEncoder;
    .end local v1    # "out":Ljava/io/OutputStream;
    .end local p0    # "path":Lj$/nio/file/Path;
    .end local p1    # "lines":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/CharSequence;>;"
    .end local p2    # "cs":Ljava/nio/charset/Charset;
    .end local p3    # "options":[Lj$/nio/file/OpenOption;
    :goto_1
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v0    # "encoder":Ljava/nio/charset/CharsetEncoder;
    .restart local v1    # "out":Ljava/io/OutputStream;
    .restart local p0    # "path":Lj$/nio/file/Path;
    .restart local p1    # "lines":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/CharSequence;>;"
    .restart local p2    # "cs":Ljava/nio/charset/Charset;
    .restart local p3    # "options":[Lj$/nio/file/OpenOption;
    :catchall_2
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v2
.end method

.method public static varargs write(Lj$/nio/file/Path;Ljava/lang/Iterable;[Lj$/nio/file/OpenOption;)Lj$/nio/file/Path;
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p2, "options"    # [Lj$/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;[",
            "Lj$/nio/file/OpenOption;",
            ")",
            "Lj$/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3551
    .local p1, "lines":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/CharSequence;>;"
    sget-object v0, Lj$/sun/nio/cs/UTF_8;->INSTANCE:Lj$/sun/nio/cs/UTF_8;

    invoke-static {p0, p1, v0, p2}, Lj$/nio/file/Files;->write(Lj$/nio/file/Path;Ljava/lang/Iterable;Ljava/nio/charset/Charset;[Lj$/nio/file/OpenOption;)Lj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static varargs write(Lj$/nio/file/Path;[B[Lj$/nio/file/OpenOption;)Lj$/nio/file/Path;
    .locals 5
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "bytes"    # [B
    .param p2, "options"    # [Lj$/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3433
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3435
    invoke-static {p0, p2}, Lj$/nio/file/Files;->newOutputStream(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    .line 3436
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    array-length v1, p1

    .line 3437
    .local v1, "len":I
    move v2, v1

    .line 3438
    .local v2, "rem":I
    :goto_0
    if-lez v2, :cond_0

    .line 3439
    const/16 v3, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3440
    .local v3, "n":I
    sub-int v4, v1, v2

    invoke-virtual {v0, p1, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3441
    sub-int/2addr v2, v3

    .line 3442
    .end local v3    # "n":I
    goto :goto_0

    .line 3443
    .end local v1    # "len":I
    .end local v2    # "rem":I
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 3444
    .end local v0    # "out":Ljava/io/OutputStream;
    :cond_1
    return-object p0

    .line 3435
    .restart local v0    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method public static varargs writeString(Lj$/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Lj$/nio/file/OpenOption;)Lj$/nio/file/Path;
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "cs"    # Ljava/nio/charset/Charset;
    .param p3, "options"    # [Lj$/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3644
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3645
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3646
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3650
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 3655
    .local v0, "bytes":[B
    invoke-static {p0, v0, p3}, Lj$/nio/file/Files;->write(Lj$/nio/file/Path;[B[Lj$/nio/file/OpenOption;)Lj$/nio/file/Path;

    .line 3657
    return-object p0
.end method

.method public static varargs writeString(Lj$/nio/file/Path;Ljava/lang/CharSequence;[Lj$/nio/file/OpenOption;)Lj$/nio/file/Path;
    .locals 1
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "options"    # [Lj$/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3591
    sget-object v0, Lj$/sun/nio/cs/UTF_8;->INSTANCE:Lj$/sun/nio/cs/UTF_8;

    invoke-static {p0, p1, v0, p2}, Lj$/nio/file/Files;->writeString(Lj$/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Lj$/nio/file/OpenOption;)Lj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method
