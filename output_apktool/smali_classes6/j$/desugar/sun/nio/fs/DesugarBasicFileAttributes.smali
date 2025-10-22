.class Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;
.super Ljava/lang/Object;
.source "DesugarBasicFileAttributes.java"

# interfaces
.implements Lj$/nio/file/attribute/BasicFileAttributes;


# instance fields
.field private final creationTime:Lj$/nio/file/attribute/FileTime;

.field private final fileKey:Ljava/lang/Object;

.field private final isDirectory:Z

.field private final isOther:Z

.field private final isRegularFile:Z

.field private final isSymbolicLink:Z

.field private final lastAccessTime:Lj$/nio/file/attribute/FileTime;

.field private final lastModifiedTime:Lj$/nio/file/attribute/FileTime;

.field private final size:J


# direct methods
.method public constructor <init>(Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;ZZZZJLjava/lang/Object;)V
    .locals 0
    .param p1, "lastModifiedTime"    # Lj$/nio/file/attribute/FileTime;
    .param p2, "lastAccessTime"    # Lj$/nio/file/attribute/FileTime;
    .param p3, "creationTime"    # Lj$/nio/file/attribute/FileTime;
    .param p4, "isRegularFile"    # Z
    .param p5, "isDirectory"    # Z
    .param p6, "isSymbolicLink"    # Z
    .param p7, "isOther"    # Z
    .param p8, "size"    # J
    .param p10, "fileKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "lastModifiedTime",
            "lastAccessTime",
            "creationTime",
            "isRegularFile",
            "isDirectory",
            "isSymbolicLink",
            "isOther",
            "size",
            "fileKey"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->lastModifiedTime:Lj$/nio/file/attribute/FileTime;

    .line 75
    iput-object p2, p0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->lastAccessTime:Lj$/nio/file/attribute/FileTime;

    .line 76
    iput-object p3, p0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->creationTime:Lj$/nio/file/attribute/FileTime;

    .line 77
    iput-boolean p4, p0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->isRegularFile:Z

    .line 78
    iput-boolean p5, p0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->isDirectory:Z

    .line 79
    iput-boolean p6, p0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->isSymbolicLink:Z

    .line 80
    iput-boolean p7, p0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->isOther:Z

    .line 81
    iput-wide p8, p0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->size:J

    .line 82
    iput-object p10, p0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->fileKey:Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public static create(Ljava/io/File;)Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;
    .locals 14
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lj$/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Lj$/nio/file/attribute/FileTime;

    move-result-object v4

    .line 46
    .local v4, "lastModifiedTime":Lj$/nio/file/attribute/FileTime;
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v7

    .line 47
    .local v7, "isRegularFile":Z
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    .line 48
    .local v8, "isDirectory":Z
    invoke-static {p0}, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->isSymlink(Ljava/io/File;)Z

    move-result v9

    .line 49
    .local v9, "isSymbolicLink":Z
    new-instance v3, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;

    if-nez v7, :cond_0

    if-nez v8, :cond_0

    if-nez v9, :cond_0

    const/4 v0, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v10, 0x0

    .line 57
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v11

    .line 61
    invoke-virtual {p0}, Ljava/io/File;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v3 .. v13}, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;-><init>(Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;ZZZZJLjava/lang/Object;)V

    .line 49
    return-object v3
.end method

.method public static isSymlink(Ljava/io/File;)Z
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 131
    if-eqz p0, :cond_1

    .line 136
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 137
    move-object v0, p0

    .local v0, "canonicalFile":Ljava/io/File;
    goto :goto_0

    .line 139
    .end local v0    # "canonicalFile":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 140
    .local v0, "canonicalDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 142
    .local v0, "canonicalFile":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 143
    .end local v0    # "canonicalFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "File must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public creationTime()Lj$/nio/file/attribute/FileTime;
    .locals 1

    .line 97
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->creationTime:Lj$/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public fileKey()Ljava/lang/Object;
    .locals 1

    .line 127
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->fileKey:Ljava/lang/Object;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->isDirectory:Z

    return v0
.end method

.method public isOther()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->isOther:Z

    return v0
.end method

.method public isRegularFile()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->isRegularFile:Z

    return v0
.end method

.method public isSymbolicLink()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->isSymbolicLink:Z

    return v0
.end method

.method public lastAccessTime()Lj$/nio/file/attribute/FileTime;
    .locals 1

    .line 92
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->lastAccessTime:Lj$/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public lastModifiedTime()Lj$/nio/file/attribute/FileTime;
    .locals 1

    .line 87
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->lastModifiedTime:Lj$/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public size()J
    .locals 2

    .line 122
    iget-wide v0, p0, Lj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->size:J

    return-wide v0
.end method
