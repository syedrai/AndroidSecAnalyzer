.class Lj$/nio/file/FileSystems$DefaultFileSystemHolder$1;
.super Ljava/lang/Object;
.source "FileSystems.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/nio/file/FileSystems$DefaultFileSystemHolder;->defaultFileSystem()Lj$/nio/file/FileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Lj$/nio/file/spi/FileSystemProvider;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lj$/nio/file/spi/FileSystemProvider;
    .locals 1

    .line 100
    invoke-static {}, Lj$/nio/file/FileSystems$DefaultFileSystemHolder;->-$$Nest$smgetDefaultProvider()Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lj$/nio/file/FileSystems$DefaultFileSystemHolder$1;->run()Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    return-object v0
.end method
