.class Lj$/nio/file/CopyMoveHelper;
.super Ljava/lang/Object;
.source "CopyMoveHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/nio/file/CopyMoveHelper$CopyOptions;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs convertMoveToCopyOptions([Lj$/nio/file/CopyOption;)[Lj$/nio/file/CopyOption;
    .locals 7
    .param p0, "options"    # [Lj$/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/file/AtomicMoveNotSupportedException;
        }
    .end annotation

    .line 81
    array-length v0, p0

    .line 82
    .local v0, "len":I
    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Lj$/nio/file/CopyOption;

    .line 83
    .local v1, "newOptions":[Lj$/nio/file/CopyOption;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 84
    aget-object v3, p0, v2

    .line 85
    .local v3, "option":Lj$/nio/file/CopyOption;
    sget-object v4, Lj$/nio/file/StandardCopyOption;->ATOMIC_MOVE:Lj$/nio/file/StandardCopyOption;

    if-eq v3, v4, :cond_0

    .line 89
    aput-object v3, v1, v2

    .line 83
    .end local v3    # "option":Lj$/nio/file/CopyOption;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .restart local v3    # "option":Lj$/nio/file/CopyOption;
    :cond_0
    new-instance v4, Ljava/nio/file/AtomicMoveNotSupportedException;

    const-string v5, "Atomic move between providers is not supported"

    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, v5}, Ljava/nio/file/AtomicMoveNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 91
    .end local v2    # "i":I
    .end local v3    # "option":Lj$/nio/file/CopyOption;
    :cond_1
    sget-object v2, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    aput-object v2, v1, v0

    .line 92
    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lj$/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Lj$/nio/file/StandardCopyOption;

    aput-object v3, v1, v2

    .line 93
    return-object v1
.end method

.method static varargs copyToForeignTarget(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)V
    .locals 7
    .param p0, "source"    # Lj$/nio/file/Path;
    .param p1, "target"    # Lj$/nio/file/Path;
    .param p2, "options"    # [Lj$/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-static {p2}, Lj$/nio/file/CopyMoveHelper$CopyOptions;->parse([Lj$/nio/file/CopyOption;)Lj$/nio/file/CopyMoveHelper$CopyOptions;

    move-result-object v0

    .line 105
    .local v0, "opts":Lj$/nio/file/CopyMoveHelper$CopyOptions;
    iget-boolean v1, v0, Lj$/nio/file/CopyMoveHelper$CopyOptions;->followLinks:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-array v1, v2, [Lj$/nio/file/LinkOption;

    goto :goto_0

    .line 106
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lj$/nio/file/LinkOption;

    sget-object v3, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    aput-object v3, v1, v2

    :goto_0
    nop

    .line 109
    .local v1, "linkOptions":[Lj$/nio/file/LinkOption;
    const-class v3, Lj$/nio/file/attribute/BasicFileAttributes;

    invoke-static {p0, v3, v1}, Lj$/nio/file/Files;->readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v3

    .line 112
    .local v3, "attrs":Lj$/nio/file/attribute/BasicFileAttributes;
    invoke-interface {v3}, Lj$/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v4

    if-nez v4, :cond_7

    .line 116
    iget-boolean v4, v0, Lj$/nio/file/CopyMoveHelper$CopyOptions;->replaceExisting:Z

    if-eqz v4, :cond_1

    .line 117
    invoke-static {p1}, Lj$/nio/file/Files;->deleteIfExists(Lj$/nio/file/Path;)Z

    goto :goto_1

    .line 118
    :cond_1
    new-array v4, v2, [Lj$/nio/file/LinkOption;

    invoke-static {p1, v4}, Lj$/nio/file/Files;->exists(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 122
    :goto_1
    invoke-interface {v3}, Lj$/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    new-array v4, v2, [Lj$/nio/file/attribute/FileAttribute;

    invoke-static {p1, v4}, Lj$/nio/file/Files;->createDirectory(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;

    goto :goto_2

    .line 125
    :cond_2
    new-array v4, v2, [Lj$/nio/file/OpenOption;

    invoke-static {p0, v4}, Lj$/nio/file/Files;->newInputStream(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v4

    .line 126
    .local v4, "in":Ljava/io/InputStream;
    :try_start_0
    new-array v5, v2, [Lj$/nio/file/CopyOption;

    invoke-static {v4, p1, v5}, Lj$/nio/file/Files;->copy(Ljava/io/InputStream;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 127
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 131
    .end local v4    # "in":Ljava/io/InputStream;
    :cond_3
    :goto_2
    iget-boolean v4, v0, Lj$/nio/file/CopyMoveHelper$CopyOptions;->copyAttributes:Z

    if-eqz v4, :cond_4

    .line 132
    const-class v4, Lj$/nio/file/attribute/BasicFileAttributeView;

    new-array v2, v2, [Lj$/nio/file/LinkOption;

    .line 133
    invoke-static {p1, v4, v2}, Lj$/nio/file/Files;->getFileAttributeView(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/FileAttributeView;

    move-result-object v2

    check-cast v2, Lj$/nio/file/attribute/BasicFileAttributeView;

    .line 135
    .local v2, "view":Lj$/nio/file/attribute/BasicFileAttributeView;
    :try_start_1
    invoke-interface {v3}, Lj$/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Lj$/nio/file/attribute/FileTime;

    move-result-object v4

    .line 136
    invoke-interface {v3}, Lj$/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Lj$/nio/file/attribute/FileTime;

    move-result-object v5

    .line 137
    invoke-interface {v3}, Lj$/nio/file/attribute/BasicFileAttributes;->creationTime()Lj$/nio/file/attribute/FileTime;

    move-result-object v6

    .line 135
    invoke-interface {v2, v4, v5, v6}, Lj$/nio/file/attribute/BasicFileAttributeView;->setTimes(Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    goto :goto_4

    .line 138
    :catchall_0
    move-exception v4

    .line 141
    .local v4, "x":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {p1}, Lj$/nio/file/Files;->delete(Lj$/nio/file/Path;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 144
    goto :goto_3

    .line 142
    :catchall_1
    move-exception v5

    .line 143
    .local v5, "suppressed":Ljava/lang/Throwable;
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 145
    .end local v5    # "suppressed":Ljava/lang/Throwable;
    :goto_3
    throw v4

    .line 148
    .end local v2    # "view":Lj$/nio/file/attribute/BasicFileAttributeView;
    .end local v4    # "x":Ljava/lang/Throwable;
    :cond_4
    :goto_4
    return-void

    .line 125
    .local v4, "in":Ljava/io/InputStream;
    :catchall_2
    move-exception v2

    if-eqz v4, :cond_5

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v5

    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_5
    throw v2

    .line 119
    .end local v4    # "in":Ljava/io/InputStream;
    :cond_6
    new-instance v2, Ljava/nio/file/FileAlreadyExistsException;

    invoke-interface {p1}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_7
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Copying of symbolic links not supported"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static varargs moveToForeignTarget(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)V
    .locals 1
    .param p0, "source"    # Lj$/nio/file/Path;
    .param p1, "target"    # Lj$/nio/file/Path;
    .param p2, "options"    # [Lj$/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-static {p2}, Lj$/nio/file/CopyMoveHelper;->convertMoveToCopyOptions([Lj$/nio/file/CopyOption;)[Lj$/nio/file/CopyOption;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lj$/nio/file/CopyMoveHelper;->copyToForeignTarget(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)V

    .line 158
    invoke-static {p0}, Lj$/nio/file/Files;->delete(Lj$/nio/file/Path;)V

    .line 159
    return-void
.end method
