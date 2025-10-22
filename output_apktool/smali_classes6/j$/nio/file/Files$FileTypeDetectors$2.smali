.class Lj$/nio/file/Files$FileTypeDetectors$2;
.super Ljava/lang/Object;
.source "Files.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/nio/file/Files$FileTypeDetectors;->loadInstalledDetectors()Ljava/util/List;
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
        "Lj$/nio/file/spi/FileTypeDetector;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 1584
    invoke-virtual {p0}, Lj$/nio/file/Files$FileTypeDetectors$2;->run()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj$/nio/file/spi/FileTypeDetector;",
            ">;"
        }
    .end annotation

    .line 1586
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1587
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/spi/FileTypeDetector;>;"
    const-class v1, Lj$/nio/file/spi/FileTypeDetector;

    .line 1588
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    .line 1589
    .local v1, "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/nio/file/spi/FileTypeDetector;>;"
    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj$/nio/file/spi/FileTypeDetector;

    .line 1590
    .local v3, "detector":Lj$/nio/file/spi/FileTypeDetector;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1591
    .end local v3    # "detector":Lj$/nio/file/spi/FileTypeDetector;
    goto :goto_0

    .line 1592
    :cond_0
    return-object v0
.end method
