.class Lj$/nio/file/Files$FileTypeDetectors$1;
.super Ljava/lang/Object;
.source "Files.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/nio/file/Files$FileTypeDetectors;->createDefaultFileTypeDetector()Lj$/nio/file/spi/FileTypeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Lj$/nio/file/spi/FileTypeDetector;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lj$/nio/file/spi/FileTypeDetector;
    .locals 1

    .line 1576
    invoke-static {}, Lj$/adapter/HybridFileTypeDetector;->create()Lj$/nio/file/spi/FileTypeDetector;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 1573
    invoke-virtual {p0}, Lj$/nio/file/Files$FileTypeDetectors$1;->run()Lj$/nio/file/spi/FileTypeDetector;

    move-result-object v0

    return-object v0
.end method
