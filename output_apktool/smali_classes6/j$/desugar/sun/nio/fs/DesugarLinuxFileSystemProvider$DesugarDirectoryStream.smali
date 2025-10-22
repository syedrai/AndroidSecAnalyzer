.class Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarDirectoryStream;
.super Ljava/lang/Object;
.source "DesugarLinuxFileSystemProvider.java"

# interfaces
.implements Ljava/nio/file/DirectoryStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DesugarDirectoryStream"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/nio/file/DirectoryStream<",
        "Lj$/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field iterator:Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;


# direct methods
.method constructor <init>(Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;Lj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)V
    .locals 1
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

    .line 456
    .local p3, "filter":Ljava/nio/file/DirectoryStream$Filter;, "Ljava/nio/file/DirectoryStream$Filter<-Ljava/nio/file/Path;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    new-instance v0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;

    invoke-direct {v0, p1, p2, p3}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;-><init>(Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;Lj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)V

    iput-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarDirectoryStream;->iterator:Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;

    .line 458
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lj$/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarDirectoryStream;->iterator:Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;

    return-object v0
.end method
