.class public final Lj$/adapter/HybridFileSystemProvider;
.super Ljava/lang/Object;
.source "HybridFileSystemProvider.java"


# static fields
.field private static final FILE_SYSTEM_INSTANCE:Lj$/nio/file/FileSystem;

.field private static final INSTANCE:Lj$/nio/file/spi/FileSystemProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    invoke-static {}, Lj$/adapter/HybridFileSystemProvider;->getFileSystemProvider()Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    sput-object v0, Lj$/adapter/HybridFileSystemProvider;->INSTANCE:Lj$/nio/file/spi/FileSystemProvider;

    .line 22
    sget-object v0, Lj$/adapter/HybridFileSystemProvider;->INSTANCE:Lj$/nio/file/spi/FileSystemProvider;

    .line 23
    const-string v1, "file:///"

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/nio/file/spi/FileSystemProvider;->getFileSystem(Ljava/net/URI;)Lj$/nio/file/FileSystem;

    move-result-object v0

    sput-object v0, Lj$/adapter/HybridFileSystemProvider;->FILE_SYSTEM_INSTANCE:Lj$/nio/file/FileSystem;

    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFileSystemProvider()Lj$/nio/file/spi/FileSystemProvider;
    .locals 1

    .line 26
    sget-boolean v0, Lj$/adapter/AndroidVersionTest;->is26OrAbove:Z

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    .line 30
    invoke-static {v0}, Lj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->convert(Ljava/nio/file/spi/FileSystemProvider;)Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    return-object v0

    .line 32
    :cond_0
    sget-boolean v0, Lj$/adapter/AndroidVersionTest;->isHeadfull:Z

    if-eqz v0, :cond_1

    .line 35
    invoke-static {}, Lj$/adapter/HybridFileSystemProvider;->setThreadPolicy()V

    .line 37
    :cond_1
    invoke-static {}, Lj$/desugar/sun/nio/fs/DesugarDefaultFileSystemProvider;->instance()Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    return-object v0
.end method

.method public static instance()Lj$/nio/file/spi/FileSystemProvider;
    .locals 1

    .line 51
    sget-object v0, Lj$/adapter/HybridFileSystemProvider;->INSTANCE:Lj$/nio/file/spi/FileSystemProvider;

    return-object v0
.end method

.method private static setThreadPolicy()V
    .locals 2

    .line 43
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 44
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 45
    return-void
.end method

.method public static theFileSystem()Lj$/nio/file/FileSystem;
    .locals 1

    .line 56
    sget-object v0, Lj$/adapter/HybridFileSystemProvider;->FILE_SYSTEM_INSTANCE:Lj$/nio/file/FileSystem;

    return-object v0
.end method
