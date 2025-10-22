.class Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;
.super Ljava/lang/Object;
.source "DesugarLinuxFileSystemProvider.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DesugarPathIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lj$/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final candidates:[Ljava/io/File;

.field private final filter:Ljava/nio/file/DirectoryStream$Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/file/DirectoryStream$Filter<",
            "-",
            "Lj$/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field final synthetic this$0:Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;


# direct methods
.method constructor <init>(Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;Lj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)V
    .locals 2
    .param p1, "this$0"    # Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;
    .param p2, "dir"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
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
            ">;)V"
        }
    .end annotation

    .line 413
    .local p3, "filter":Ljava/nio/file/DirectoryStream$Filter;, "Ljava/nio/file/DirectoryStream$Filter<-Ljava/nio/file/Path;>;"
    iput-object p1, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->this$0:Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    const/4 v0, 0x0

    iput v0, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->index:I

    .line 416
    invoke-interface {p2}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 417
    .local v1, "theCandidates":[Ljava/io/File;
    if-nez v1, :cond_0

    new-array v0, v0, [Ljava/io/File;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->candidates:[Ljava/io/File;

    .line 418
    iput-object p3, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->filter:Ljava/nio/file/DirectoryStream$Filter;

    .line 419
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 423
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->next()Lj$/nio/file/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 424
    iget v0, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->index:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->index:I

    .line 425
    return v1

    .line 427
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Lj$/nio/file/Path;
    .locals 6

    .line 434
    nop

    :goto_0
    iget v0, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->index:I

    iget-object v1, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->candidates:[Ljava/io/File;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 435
    const/4 v0, 0x0

    return-object v0

    .line 437
    :cond_0
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->candidates:[Ljava/io/File;

    iget v1, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->index:I

    aget-object v0, v0, v1

    .line 438
    .local v0, "nextFile":Ljava/io/File;
    new-instance v1, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v2, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->this$0:Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;

    invoke-static {v2}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->-$$Nest$fgettheFileSystem(Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;)Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->this$0:Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;

    invoke-static {v4}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->-$$Nest$fgetuserDir(Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->this$0:Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;

    invoke-static {v5}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->-$$Nest$fgetrootDir(Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Lj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .local v1, "pathEntry":Lj$/nio/file/Path;
    :try_start_0
    iget-object v2, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->filter:Ljava/nio/file/DirectoryStream$Filter;

    invoke-interface {v2, v1}, Ljava/nio/file/DirectoryStream$Filter;->accept(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    .local v2, "accept":Z
    nop

    .line 445
    if-eqz v2, :cond_1

    .line 446
    return-object v1

    .line 448
    .end local v0    # "nextFile":Ljava/io/File;
    .end local v1    # "pathEntry":Lj$/nio/file/Path;
    .end local v2    # "accept":Z
    :cond_1
    goto :goto_0

    .line 442
    .restart local v0    # "nextFile":Ljava/io/File;
    .restart local v1    # "pathEntry":Lj$/nio/file/Path;
    :catch_0
    move-exception v2

    .line 443
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/nio/file/DirectoryIteratorException;

    invoke-direct {v3, v2}, Ljava/nio/file/DirectoryIteratorException;-><init>(Ljava/io/IOException;)V

    throw v3
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 407
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->next()Lj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method
