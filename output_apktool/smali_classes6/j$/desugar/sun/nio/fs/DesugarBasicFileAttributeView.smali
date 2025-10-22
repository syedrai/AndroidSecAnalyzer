.class Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;
.super Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView;
.source "DesugarBasicFileAttributeView.java"


# instance fields
.field private final path:Lj$/nio/file/Path;


# direct methods
.method public constructor <init>(Lj$/nio/file/Path;)V
    .locals 0
    .param p1, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView;-><init>()V

    .line 38
    iput-object p1, p0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;->path:Lj$/nio/file/Path;

    .line 39
    return-void
.end method


# virtual methods
.method public readAttributes()Lj$/nio/file/attribute/BasicFileAttributes;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;->path:Lj$/nio/file/Path;

    invoke-interface {v0}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lj$/nio/file/FileSystem;->provider()Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    iget-object v1, p0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;->path:Lj$/nio/file/Path;

    const/4 v2, 0x0

    new-array v2, v2, [Lj$/nio/file/AccessMode;

    invoke-virtual {v0, v1, v2}, Lj$/nio/file/spi/FileSystemProvider;->checkAccess(Lj$/nio/file/Path;[Lj$/nio/file/AccessMode;)V

    .line 44
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;->path:Lj$/nio/file/Path;

    invoke-interface {v0}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->create(Ljava/io/File;)Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public setTimes(Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;)V
    .locals 6
    .param p1, "lastModifiedTime"    # Lj$/nio/file/attribute/FileTime;
    .param p2, "lastAccessTime"    # Lj$/nio/file/attribute/FileTime;
    .param p3, "createTime"    # Lj$/nio/file/attribute/FileTime;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lastModifiedTime",
            "lastAccessTime",
            "createTime"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 53
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;->path:Lj$/nio/file/Path;

    invoke-interface {v0}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lj$/nio/file/FileSystem;->provider()Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    iget-object v1, p0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;->path:Lj$/nio/file/Path;

    const/4 v2, 0x1

    new-array v2, v2, [Lj$/nio/file/AccessMode;

    const/4 v3, 0x0

    sget-object v4, Lj$/nio/file/AccessMode;->WRITE:Lj$/nio/file/AccessMode;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lj$/nio/file/spi/FileSystemProvider;->checkAccess(Lj$/nio/file/Path;[Lj$/nio/file/AccessMode;)V

    .line 56
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;->path:Lj$/nio/file/Path;

    invoke-interface {v0}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    .line 57
    .local v0, "file":Ljava/io/File;
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1}, Lj$/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    move-result v1

    .line 58
    .local v1, "setLastModifiedSuccessfully":Z
    if-eqz v1, :cond_1

    .line 61
    return-void

    .line 59
    :cond_1
    new-instance v2, Ljava/io/IOException;

    iget-object v3, p0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;->path:Lj$/nio/file/Path;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File.setLastModified did not succeed on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
