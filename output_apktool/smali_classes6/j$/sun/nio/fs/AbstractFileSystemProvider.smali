.class public abstract Lj$/sun/nio/fs/AbstractFileSystemProvider;
.super Lj$/nio/file/spi/FileSystemProvider;
.source "AbstractFileSystemProvider.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lj$/nio/file/spi/FileSystemProvider;-><init>()V

    return-void
.end method

.method private static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "attribute"    # Ljava/lang/String;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 49
    .local v0, "s":[Ljava/lang/String;
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 50
    .local v1, "pos":I
    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    .line 51
    const-string v2, "basic"

    aput-object v2, v0, v4

    .line 52
    aput-object p0, v0, v3

    goto :goto_1

    .line 54
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pos":I
    .local v2, "pos":I
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    aput-object v1, v0, v3

    move v1, v2

    .line 57
    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final delete(Lj$/nio/file/Path;)V
    .locals 1
    .param p1, "file"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lj$/sun/nio/fs/AbstractFileSystemProvider;->implDelete(Lj$/nio/file/Path;Z)Z

    .line 106
    return-void
.end method

.method public final deleteIfExists(Lj$/nio/file/Path;)Z
    .locals 1
    .param p1, "file"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lj$/sun/nio/fs/AbstractFileSystemProvider;->implDelete(Lj$/nio/file/Path;Z)Z

    move-result v0

    return v0
.end method

.method public exists(Lj$/nio/file/Path;)Z
    .locals 2
    .param p1, "file"    # Lj$/nio/file/Path;

    .line 151
    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Lj$/nio/file/AccessMode;

    invoke-virtual {p0, p1, v1}, Lj$/sun/nio/fs/AbstractFileSystemProvider;->checkAccess(Lj$/nio/file/Path;[Lj$/nio/file/AccessMode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    const/4 v0, 0x1

    return v0

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "ioe":Ljava/io/IOException;
    return v0
.end method

.method varargs abstract getFileAttributeView(Lj$/nio/file/Path;Ljava/lang/String;[Lj$/nio/file/LinkOption;)Lj$/sun/nio/fs/DynamicFileAttributeView;
.end method

.method abstract implDelete(Lj$/nio/file/Path;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public isDirectory(Lj$/nio/file/Path;)Z
    .locals 3
    .param p1, "file"    # Lj$/nio/file/Path;

    .line 122
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lj$/nio/file/attribute/BasicFileAttributes;

    new-array v2, v0, [Lj$/nio/file/LinkOption;

    invoke-virtual {p0, p1, v1, v2}, Lj$/sun/nio/fs/AbstractFileSystemProvider;->readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    invoke-interface {v1}, Lj$/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "ioe":Ljava/io/IOException;
    return v0
.end method

.method public isRegularFile(Lj$/nio/file/Path;)Z
    .locals 3
    .param p1, "file"    # Lj$/nio/file/Path;

    .line 137
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lj$/nio/file/attribute/BasicFileAttributes;

    new-array v2, v0, [Lj$/nio/file/LinkOption;

    invoke-virtual {p0, p1, v1, v2}, Lj$/sun/nio/fs/AbstractFileSystemProvider;->readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    invoke-interface {v1}, Lj$/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "ioe":Ljava/io/IOException;
    return v0
.end method

.method public final varargs readAttributes(Lj$/nio/file/Path;Ljava/lang/String;[Lj$/nio/file/LinkOption;)Ljava/util/Map;
    .locals 6
    .param p1, "file"    # Lj$/nio/file/Path;
    .param p2, "attributes"    # Ljava/lang/String;
    .param p3, "options"    # [Lj$/nio/file/LinkOption;
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

    .line 88
    invoke-static {p2}, Lj$/sun/nio/fs/AbstractFileSystemProvider;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "s":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    aget-object v2, v0, v1

    invoke-virtual {p0, p1, v2, p3}, Lj$/sun/nio/fs/AbstractFileSystemProvider;->getFileAttributeView(Lj$/nio/file/Path;Ljava/lang/String;[Lj$/nio/file/LinkOption;)Lj$/sun/nio/fs/DynamicFileAttributeView;

    move-result-object v2

    .line 92
    .local v2, "view":Lj$/sun/nio/fs/DynamicFileAttributeView;
    if-eqz v2, :cond_0

    .line 94
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lj$/sun/nio/fs/DynamicFileAttributeView;->readAttributes([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 93
    :cond_0
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    aget-object v1, v0, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\' not available"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 90
    .end local v2    # "view":Lj$/sun/nio/fs/DynamicFileAttributeView;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final varargs setAttribute(Lj$/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Lj$/nio/file/LinkOption;)V
    .locals 6
    .param p1, "file"    # Lj$/nio/file/Path;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "options"    # [Lj$/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-static {p2}, Lj$/sun/nio/fs/AbstractFileSystemProvider;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "s":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    aget-object v2, v0, v1

    invoke-virtual {p0, p1, v2, p4}, Lj$/sun/nio/fs/AbstractFileSystemProvider;->getFileAttributeView(Lj$/nio/file/Path;Ljava/lang/String;[Lj$/nio/file/LinkOption;)Lj$/sun/nio/fs/DynamicFileAttributeView;

    move-result-object v2

    .line 79
    .local v2, "view":Lj$/sun/nio/fs/DynamicFileAttributeView;
    if-eqz v2, :cond_0

    .line 81
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-interface {v2, v1, p3}, Lj$/sun/nio/fs/DynamicFileAttributeView;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    return-void

    .line 80
    :cond_0
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    aget-object v1, v0, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\' not available"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 77
    .end local v2    # "view":Lj$/sun/nio/fs/DynamicFileAttributeView;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
