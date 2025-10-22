.class Lj$/nio/file/spi/FileSystemProvider$1;
.super Ljava/lang/Object;
.source "FileSystemProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/nio/file/spi/FileSystemProvider;->installedProviders()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/util/List<",
        "Lj$/nio/file/spi/FileSystemProvider;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lj$/nio/file/spi/FileSystemProvider$1;->run()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj$/nio/file/spi/FileSystemProvider;",
            ">;"
        }
    .end annotation

    .line 205
    invoke-static {}, Lj$/nio/file/spi/FileSystemProvider;->-$$Nest$smloadInstalledProviders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
