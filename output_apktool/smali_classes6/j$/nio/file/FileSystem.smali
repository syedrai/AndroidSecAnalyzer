.class public abstract Lj$/nio/file/FileSystem;
.super Ljava/lang/Object;
.source "FileSystem.java"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFileStores()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lj$/nio/file/FileStore;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract getPath(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;
.end method

.method public abstract getPathMatcher(Ljava/lang/String;)Lj$/nio/file/PathMatcher;
.end method

.method public abstract getRootDirectories()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lj$/nio/file/Path;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSeparator()Ljava/lang/String;
.end method

.method public abstract getUserPrincipalLookupService()Lj$/nio/file/attribute/UserPrincipalLookupService;
.end method

.method public abstract isOpen()Z
.end method

.method public abstract isReadOnly()Z
.end method

.method public abstract newWatchService()Lj$/nio/file/WatchService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract provider()Lj$/nio/file/spi/FileSystemProvider;
.end method

.method public abstract supportedFileAttributeViews()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
