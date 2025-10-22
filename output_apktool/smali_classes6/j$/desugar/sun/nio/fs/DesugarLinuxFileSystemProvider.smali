.class public Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;
.super Lj$/nio/file/spi/FileSystemProvider;
.source "DesugarLinuxFileSystemProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarDirectoryStream;,
        Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field private static final FILE_SCHEME:Ljava/lang/String; = "file"


# instance fields
.field private final rootDir:Ljava/lang/String;

.field private volatile theFileSystem:Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;

.field private final userDir:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetrootDir(Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->rootDir:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettheFileSystem(Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;)Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;
    .locals 0

    iget-object p0, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->theFileSystem:Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuserDir(Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->userDir:Ljava/lang/String;

    return-object p0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "userDir"    # Ljava/lang/String;
    .param p2, "rootDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userDir",
            "rootDir"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lj$/nio/file/spi/FileSystemProvider;-><init>()V

    .line 75
    iput-object p1, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->userDir:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->rootDir:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private checkFileUri(Ljava/net/URI;)V
    .locals 3
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 386
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 389
    invoke-virtual {p1}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 392
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 396
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 399
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 402
    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 405
    return-void

    .line 403
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Fragment component present"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 400
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Query component present"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 397
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Path component should be \'/\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 394
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Path component is undefined"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 390
    .end local v0    # "path":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority component present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI does not match this provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private containsCopyOption([Lj$/nio/file/CopyOption;Lj$/nio/file/CopyOption;)Z
    .locals 4
    .param p1, "options"    # [Lj$/nio/file/CopyOption;
    .param p2, "option"    # Lj$/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "options",
            "option"
        }
    .end annotation

    .line 229
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 230
    .local v3, "copyOption":Lj$/nio/file/CopyOption;
    if-ne v3, p2, :cond_0

    .line 231
    const/4 v0, 0x1

    return v0

    .line 229
    .end local v3    # "copyOption":Lj$/nio/file/CopyOption;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    :cond_1
    return v1
.end method

.method public static create()Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;
    .locals 3

    .line 71
    new-instance v0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;

    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-direct {v0, v1, v2}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private exists(Lj$/nio/file/Path;)Z
    .locals 2
    .param p1, "file"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Lj$/nio/file/AccessMode;

    invoke-virtual {p0, p1, v1}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->checkAccess(Lj$/nio/file/Path;[Lj$/nio/file/AccessMode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    const/4 v0, 0x1

    return v0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "ioe":Ljava/io/IOException;
    return v0
.end method


# virtual methods
.method public varargs checkAccess(Lj$/nio/file/Path;[Lj$/nio/file/AccessMode;)V
    .locals 8
    .param p1, "path"    # Lj$/nio/file/Path;
    .param p2, "modes"    # [Lj$/nio/file/AccessMode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "modes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    invoke-interface {p1}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    .line 280
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 283
    const/4 v1, 0x1

    .line 284
    .local v1, "permittedToAccess":Z
    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p2, v4

    .line 285
    .local v5, "accessMode":Lj$/nio/file/AccessMode;
    sget-object v6, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$1;->$SwitchMap$java$nio$file$AccessMode:[I

    invoke-virtual {v5}, Lj$/nio/file/AccessMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 293
    :pswitch_0
    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v6

    and-int/2addr v1, v6

    goto :goto_1

    .line 290
    :pswitch_1
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v6

    and-int/2addr v1, v6

    .line 291
    goto :goto_1

    .line 287
    :pswitch_2
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v6

    and-int/2addr v1, v6

    .line 288
    nop

    .line 284
    .end local v5    # "accessMode":Lj$/nio/file/AccessMode;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 297
    :cond_0
    if-eqz v1, :cond_1

    .line 300
    return-void

    .line 298
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    const-string v3, "Unable to access file %s"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 281
    .end local v1    # "permittedToAccess":Z
    :cond_2
    new-instance v1, Ljava/nio/file/NoSuchFileException;

    invoke-interface {p1}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs copy(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)V
    .locals 7
    .param p1, "source"    # Lj$/nio/file/Path;
    .param p2, "target"    # Lj$/nio/file/Path;
    .param p3, "options"    # [Lj$/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "target",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    sget-object v0, Lj$/nio/file/StandardCopyOption;->REPLACE_EXISTING:Lj$/nio/file/StandardCopyOption;

    invoke-direct {p0, p3, v0}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->containsCopyOption([Lj$/nio/file/CopyOption;Lj$/nio/file/CopyOption;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array v0, v1, [Lj$/nio/file/LinkOption;

    invoke-static {p2, v0}, Lj$/nio/file/Files;->exists(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    new-instance v0, Ljava/nio/file/FileAlreadyExistsException;

    invoke-interface {p2}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1
    :goto_0
    sget-object v0, Lj$/nio/file/StandardCopyOption;->ATOMIC_MOVE:Lj$/nio/file/StandardCopyOption;

    invoke-direct {p0, p3, v0}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->containsCopyOption([Lj$/nio/file/CopyOption;Lj$/nio/file/CopyOption;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 205
    new-instance v0, Ljava/io/FileInputStream;

    invoke-interface {p1}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 206
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-interface {p2}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 207
    .local v2, "out":Ljava/io/OutputStream;
    const/16 v3, 0x2000

    :try_start_1
    new-array v4, v3, [B

    .line 209
    .local v4, "buffer":[B
    :goto_1
    invoke-virtual {v0, v4, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    move v6, v5

    .local v6, "read":I
    if-ltz v5, :cond_2

    .line 210
    invoke-virtual {v2, v4, v1, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 212
    .end local v4    # "buffer":[B
    .end local v6    # "read":I
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v2    # "out":Ljava/io/OutputStream;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 213
    .end local v0    # "in":Ljava/io/InputStream;
    return-void

    .line 205
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/InputStream;
    .end local p1    # "source":Lj$/nio/file/Path;
    .end local p2    # "target":Lj$/nio/file/Path;
    .end local p3    # "options":[Lj$/nio/file/CopyOption;
    :goto_2
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local p1    # "source":Lj$/nio/file/Path;
    .restart local p2    # "target":Lj$/nio/file/Path;
    .restart local p3    # "options":[Lj$/nio/file/CopyOption;
    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1

    .line 203
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported copy option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs createDirectory(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)V
    .locals 4
    .param p1, "dir"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dir",
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

    .line 121
    .local p2, "attrs":[Lj$/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-interface {p1}, Lj$/nio/file/Path;->getParent()Lj$/nio/file/Path;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lj$/nio/file/Path;->getParent()Lj$/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lj$/nio/file/LinkOption;

    invoke-static {v0, v1}, Lj$/nio/file/Files;->exists(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    new-instance v0, Ljava/nio/file/NoSuchFileException;

    invoke-interface {p1}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    :goto_0
    invoke-interface {p1}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    .line 125
    .local v0, "dirFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 126
    .local v1, "mkdirStatus":Z
    if-eqz v1, :cond_2

    .line 129
    return-void

    .line 127
    :cond_2
    new-instance v2, Ljava/nio/file/FileAlreadyExistsException;

    invoke-interface {p1}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createLink(Lj$/nio/file/Path;Lj$/nio/file/Path;)V
    .locals 1
    .param p1, "link"    # Lj$/nio/file/Path;
    .param p2, "existing"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "link",
            "existing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public varargs createSymbolicLink(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)V
    .locals 1
    .param p1, "link"    # Lj$/nio/file/Path;
    .param p2, "target"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "link",
            "target",
            "attrs"
        }
    .end annotation

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

    .line 189
    .local p3, "attrs":[Lj$/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public delete(Lj$/nio/file/Path;)V
    .locals 2
    .param p1, "path"    # Lj$/nio/file/Path;
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

    .line 142
    invoke-direct {p0, p1}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->exists(Lj$/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0, p1}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->deleteIfExists(Lj$/nio/file/Path;)Z

    .line 144
    return-void

    .line 146
    :cond_0
    new-instance v0, Ljava/nio/file/NoSuchFileException;

    invoke-interface {p1}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteIfExists(Lj$/nio/file/Path;)Z
    .locals 1
    .param p1, "path"    # Lj$/nio/file/Path;
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

    .line 151
    invoke-interface {p1}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public varargs getFileAttributeView(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/FileAttributeView;
    .locals 1
    .param p1, "path"    # Lj$/nio/file/Path;
    .param p3, "options"    # [Lj$/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "type",
            "options"
        }
    .end annotation

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

    .line 268
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    if-eqz p2, :cond_1

    .line 271
    const-class v0, Lj$/nio/file/attribute/BasicFileAttributeView;

    if-ne p2, v0, :cond_0

    .line 272
    new-instance v0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;

    invoke-direct {v0, p1}, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;-><init>(Lj$/nio/file/Path;)V

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/nio/file/attribute/FileAttributeView;

    return-object v0

    .line 274
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 269
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public getFileStore(Lj$/nio/file/Path;)Lj$/nio/file/FileStore;
    .locals 2
    .param p1, "path"    # Lj$/nio/file/Path;
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

    .line 262
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "getFileStore"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getFileSystem(Ljava/net/URI;)Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;
    .locals 4
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->checkFileUri(Ljava/net/URI;)V

    .line 93
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->theFileSystem:Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;

    .line 94
    .local v0, "fs":Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;
    if-nez v0, :cond_1

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v1, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->theFileSystem:Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;

    move-object v0, v1

    .line 97
    if-nez v0, :cond_0

    .line 98
    new-instance v1, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;

    iget-object v2, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->userDir:Ljava/lang/String;

    iget-object v3, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->rootDir:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;-><init>(Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    iput-object v1, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->theFileSystem:Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;

    .line 100
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 102
    :cond_1
    :goto_0
    return-object v0
.end method

.method public bridge synthetic getFileSystem(Ljava/net/URI;)Lj$/nio/file/FileSystem;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "uri"
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->getFileSystem(Ljava/net/URI;)Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;

    move-result-object p1

    return-object p1
.end method

.method getFileTypeDetector()Lj$/nio/file/spi/FileTypeDetector;
    .locals 1

    .line 382
    new-instance v0, Lj$/desugar/sun/nio/fs/DesugarMimeTypesFileTypeDetector;

    invoke-direct {v0}, Lj$/desugar/sun/nio/fs/DesugarMimeTypesFileTypeDetector;-><init>()V

    return-object v0
.end method

.method public getPath(Ljava/net/URI;)Lj$/nio/file/Path;
    .locals 3
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->theFileSystem:Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;

    iget-object v1, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->userDir:Ljava/lang/String;

    iget-object v2, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->rootDir:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->fromUri(Lj$/nio/file/FileSystem;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 81
    const-string v0, "file"

    return-object v0
.end method

.method public isHidden(Lj$/nio/file/Path;)Z
    .locals 1
    .param p1, "path"    # Lj$/nio/file/Path;
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

    .line 252
    invoke-interface {p1}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isSameFile(Lj$/nio/file/Path;Lj$/nio/file/Path;)Z
    .locals 2
    .param p1, "path"    # Lj$/nio/file/Path;
    .param p2, "path2"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "path2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-interface {p1, p2}, Lj$/nio/file/Path;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const/4 v0, 0x1

    return v0

    .line 245
    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Lj$/nio/file/AccessMode;

    invoke-virtual {p0, p1, v1}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->checkAccess(Lj$/nio/file/Path;[Lj$/nio/file/AccessMode;)V

    .line 246
    new-array v0, v0, [Lj$/nio/file/AccessMode;

    invoke-virtual {p0, p2, v0}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->checkAccess(Lj$/nio/file/Path;[Lj$/nio/file/AccessMode;)V

    .line 247
    invoke-interface {p1}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-interface {p2}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public varargs move(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)V
    .locals 2
    .param p1, "source"    # Lj$/nio/file/Path;
    .param p2, "target"    # Lj$/nio/file/Path;
    .param p3, "options"    # [Lj$/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "target",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    sget-object v0, Lj$/nio/file/StandardCopyOption;->REPLACE_EXISTING:Lj$/nio/file/StandardCopyOption;

    invoke-direct {p0, p3, v0}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->containsCopyOption([Lj$/nio/file/CopyOption;Lj$/nio/file/CopyOption;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Lj$/nio/file/LinkOption;

    invoke-static {p2, v0}, Lj$/nio/file/Files;->exists(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    new-instance v0, Ljava/nio/file/FileAlreadyExistsException;

    invoke-interface {p2}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    :goto_0
    sget-object v0, Lj$/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Lj$/nio/file/StandardCopyOption;

    invoke-direct {p0, p3, v0}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->containsCopyOption([Lj$/nio/file/CopyOption;Lj$/nio/file/CopyOption;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 223
    invoke-interface {p1}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    .line 224
    .local v0, "sourceFile":Ljava/io/File;
    invoke-interface {p2}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    .line 225
    .local v1, "targetFile":Ljava/io/File;
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 226
    return-void

    .line 221
    .end local v0    # "sourceFile":Ljava/io/File;
    .end local v1    # "targetFile":Ljava/io/File;
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported copy option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs newAsynchronousFileChannel(Lj$/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/channels/AsynchronousFileChannel;
    .locals 1
    .param p1, "path"    # Lj$/nio/file/Path;
    .param p3, "executor"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "options",
            "executor",
            "attrs"
        }
    .end annotation

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

    .line 178
    .local p2, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    .local p4, "attrs":[Lj$/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public varargs newByteChannel(Lj$/nio/file/Path;Ljava/util/Set;[Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .locals 1
    .param p1, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "options",
            "attrs"
        }
    .end annotation

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

    .line 158
    .local p2, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    .local p3, "attrs":[Lj$/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-virtual {p0, p1, p2, p3}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->newFileChannel(Lj$/nio/file/Path;Ljava/util/Set;[Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method public newDirectoryStream(Lj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;
    .locals 1
    .param p1, "dir"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dir",
            "filter"
        }
    .end annotation

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

    .line 113
    .local p2, "filter":Ljava/nio/file/DirectoryStream$Filter;, "Ljava/nio/file/DirectoryStream$Filter<-Ljava/nio/file/Path;>;"
    if-eqz p2, :cond_0

    .line 116
    new-instance v0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarDirectoryStream;

    invoke-direct {v0, p0, p1, p2}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarDirectoryStream;-><init>(Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;Lj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)V

    return-object v0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public varargs newFileChannel(Lj$/nio/file/Path;Ljava/util/Set;[Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;
    .locals 4
    .param p1, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "options",
            "attrs"
        }
    .end annotation

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

    .line 164
    .local p2, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    .local p3, "attrs":[Lj$/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-interface {p1}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-static {p1, p2, p3}, Lj$/desugar/sun/nio/fs/DesugarFileChannel;->openEmulatedFileChannel(Lj$/nio/file/Path;Ljava/util/Set;[Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The desugar library does not support creating a file channel on a directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newFileSystem(Ljava/net/URI;Ljava/util/Map;)Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uri",
            "env"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;"
        }
    .end annotation

    .line 86
    .local p2, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0, p1}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->checkFileUri(Ljava/net/URI;)V

    .line 87
    new-instance v0, Ljava/nio/file/FileSystemAlreadyExistsException;

    invoke-direct {v0}, Ljava/nio/file/FileSystemAlreadyExistsException;-><init>()V

    throw v0
.end method

.method public bridge synthetic newFileSystem(Ljava/net/URI;Ljava/util/Map;)Lj$/nio/file/FileSystem;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "uri",
            "env"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1, p2}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->newFileSystem(Ljava/net/URI;Ljava/util/Map;)Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;

    move-result-object p1

    return-object p1
.end method

.method public varargs readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;
    .locals 2
    .param p1, "path"    # Lj$/nio/file/Path;
    .param p3, "options"    # [Lj$/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "type",
            "options"
        }
    .end annotation

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

    .line 306
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    const-class v0, Lj$/nio/file/attribute/BasicFileAttributes;

    if-ne p2, v0, :cond_0

    .line 307
    const-class v0, Lj$/nio/file/attribute/BasicFileAttributeView;

    .line 311
    .local v0, "view":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/nio/file/attribute/BasicFileAttributeView;>;"
    invoke-virtual {p0, p1, v0, p3}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->getFileAttributeView(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/FileAttributeView;

    move-result-object v1

    check-cast v1, Lj$/nio/file/attribute/BasicFileAttributeView;

    invoke-interface {v1}, Lj$/nio/file/attribute/BasicFileAttributeView;->readAttributes()Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/nio/file/attribute/BasicFileAttributes;

    return-object v1

    .line 309
    .end local v0    # "view":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/nio/file/attribute/BasicFileAttributeView;>;"
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public varargs readAttributes(Lj$/nio/file/Path;Ljava/lang/String;[Lj$/nio/file/LinkOption;)Ljava/util/Map;
    .locals 7
    .param p1, "path"    # Lj$/nio/file/Path;
    .param p2, "attributes"    # Ljava/lang/String;
    .param p3, "options"    # [Lj$/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "attributes",
            "options"
        }
    .end annotation

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

    .line 317
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 320
    .local v0, "attributesTypeIndexEnd":I
    const/4 v1, -0x1

    const-string v2, ","

    if-ne v0, v1, :cond_0

    .line 321
    const-class v1, Lj$/nio/file/attribute/BasicFileAttributeView;

    .line 322
    .local v1, "attributeViewType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/nio/file/attribute/BasicFileAttributeView;>;"
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "requestedAttributes":[Ljava/lang/String;
    goto :goto_0

    .line 324
    .end local v1    # "attributeViewType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/nio/file/attribute/BasicFileAttributeView;>;"
    .end local v2    # "requestedAttributes":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, "attributeTypeSpec":Ljava/lang/String;
    const-string v4, "basic"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 326
    const-class v1, Lj$/nio/file/attribute/BasicFileAttributeView;

    .line 331
    .restart local v1    # "attributeViewType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/nio/file/attribute/BasicFileAttributeView;>;"
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 333
    .end local v3    # "attributeTypeSpec":Ljava/lang/String;
    .restart local v2    # "requestedAttributes":[Ljava/lang/String;
    :goto_0
    const-class v3, Lj$/nio/file/attribute/BasicFileAttributeView;

    if-ne v1, v3, :cond_1

    .line 334
    new-instance v3, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;

    invoke-direct {v3, p1}, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;-><init>(Lj$/nio/file/Path;)V

    .line 335
    .local v3, "attrView":Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;
    invoke-virtual {v3, v2}, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;->readAttributes([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    return-object v4

    .line 337
    .end local v3    # "attrView":Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected View \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' requested"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 328
    .end local v1    # "attributeViewType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/nio/file/attribute/BasicFileAttributeView;>;"
    .end local v2    # "requestedAttributes":[Ljava/lang/String;
    .local v3, "attributeTypeSpec":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    .line 329
    const-string v1, "Requested attribute type for: %s is not available."

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readSymbolicLink(Lj$/nio/file/Path;)Lj$/nio/file/Path;
    .locals 5
    .param p1, "link"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "link"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    new-instance v0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v1, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->theFileSystem:Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;

    invoke-interface {p1}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->userDir:Ljava/lang/String;

    iget-object v4, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->rootDir:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Lj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public varargs setAttribute(Lj$/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Lj$/nio/file/LinkOption;)V
    .locals 7
    .param p1, "path"    # Lj$/nio/file/Path;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "options"    # [Lj$/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "attribute",
            "value",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 346
    .local v0, "attributesTypeIndexEnd":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 347
    const-class v1, Lj$/nio/file/attribute/BasicFileAttributeView;

    .line 348
    .local v1, "attributeViewType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/nio/file/attribute/BasicFileAttributeView;>;"
    move-object v2, p2

    .local v2, "requestedAttribute":Ljava/lang/String;
    goto :goto_0

    .line 350
    .end local v1    # "attributeViewType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/nio/file/attribute/BasicFileAttributeView;>;"
    .end local v2    # "requestedAttribute":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "attributeTypeSpec":Ljava/lang/String;
    const-string v3, "basic"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 352
    const-class v1, Lj$/nio/file/attribute/BasicFileAttributeView;

    .line 357
    .restart local v1    # "attributeViewType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/nio/file/attribute/BasicFileAttributeView;>;"
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 359
    .local v2, "requestedAttribute":Ljava/lang/String;
    :goto_0
    const-class v3, Lj$/nio/file/attribute/BasicFileAttributeView;

    if-ne v1, v3, :cond_1

    .line 360
    new-instance v3, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;

    invoke-direct {v3, p1}, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;-><init>(Lj$/nio/file/Path;)V

    .line 361
    .local v3, "attrView":Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;
    invoke-virtual {v3, v2, p3}, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 362
    return-void

    .line 364
    .end local v3    # "attrView":Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected View \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' requested"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 354
    .end local v1    # "attributeViewType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/nio/file/attribute/BasicFileAttributeView;>;"
    .local v2, "attributeTypeSpec":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    .line 355
    const-string v1, "Requested attribute type for: %s is not available."

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
