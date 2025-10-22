.class Lj$/adapter/HybridFileTypeDetector$PlatformFileTypeDetector;
.super Lj$/nio/file/spi/FileTypeDetector;
.source "HybridFileTypeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/adapter/HybridFileTypeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlatformFileTypeDetector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lj$/nio/file/spi/FileTypeDetector;-><init>()V

    return-void
.end method


# virtual methods
.method public probeContentType(Lj$/nio/file/Path;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-static {p1}, Lj$/nio/file/Path$Wrapper;->convert(Lj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/file/Files;->probeContentType(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
