.class public Lj$/adapter/HybridFileTypeDetector;
.super Ljava/lang/Object;
.source "DefaultFileTypeDetector.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lj$/nio/file/spi/FileTypeDetector;
    .locals 2

    .line 36
    invoke-static {}, Lj$/nio/file/FileSystems;->getDefault()Lj$/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lj$/nio/file/FileSystem;->provider()Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    .line 37
    .local v0, "provider":Lj$/nio/file/spi/FileSystemProvider;
    move-object v1, v0

    check-cast v1, Lsun/nio/fs/UnixFileSystemProvider;

    invoke-virtual {v1}, Lsun/nio/fs/UnixFileSystemProvider;->getFileTypeDetector()Lj$/nio/file/spi/FileTypeDetector;

    move-result-object v1

    return-object v1
.end method
