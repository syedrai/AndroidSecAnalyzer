.class public Lj$/desugar/sun/nio/fs/DesugarDefaultFileSystemProvider;
.super Ljava/lang/Object;
.source "DesugarDefaultFileSystemProvider.java"


# static fields
.field private static final INSTANCE:Lj$/nio/file/spi/FileSystemProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->create()Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;

    move-result-object v0

    sput-object v0, Lj$/desugar/sun/nio/fs/DesugarDefaultFileSystemProvider;->INSTANCE:Lj$/nio/file/spi/FileSystemProvider;

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lj$/nio/file/spi/FileSystemProvider;
    .locals 1

    .line 46
    sget-object v0, Lj$/desugar/sun/nio/fs/DesugarDefaultFileSystemProvider;->INSTANCE:Lj$/nio/file/spi/FileSystemProvider;

    return-object v0
.end method

.method public static theFileSystem()Lj$/nio/file/FileSystem;
    .locals 2

    .line 53
    sget-object v0, Lj$/desugar/sun/nio/fs/DesugarDefaultFileSystemProvider;->INSTANCE:Lj$/nio/file/spi/FileSystemProvider;

    const-string v1, "file:///"

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/nio/file/spi/FileSystemProvider;->getFileSystem(Ljava/net/URI;)Lj$/nio/file/FileSystem;

    move-result-object v0

    return-object v0
.end method
