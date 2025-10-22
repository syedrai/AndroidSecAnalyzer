.class Lj$/nio/file/Files$FileTypeDetectors;
.super Ljava/lang/Object;
.source "Files.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/nio/file/Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileTypeDetectors"
.end annotation


# static fields
.field static final defaultFileTypeDetector:Lj$/nio/file/spi/FileTypeDetector;

.field static final installedDetectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj$/nio/file/spi/FileTypeDetector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1566
    invoke-static {}, Lj$/nio/file/Files$FileTypeDetectors;->createDefaultFileTypeDetector()Lj$/nio/file/spi/FileTypeDetector;

    move-result-object v0

    sput-object v0, Lj$/nio/file/Files$FileTypeDetectors;->defaultFileTypeDetector:Lj$/nio/file/spi/FileTypeDetector;

    .line 1568
    invoke-static {}, Lj$/nio/file/Files$FileTypeDetectors;->loadInstalledDetectors()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lj$/nio/file/Files$FileTypeDetectors;->installedDetectors:Ljava/util/List;

    .line 1567
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDefaultFileTypeDetector()Lj$/nio/file/spi/FileTypeDetector;
    .locals 1

    .line 1572
    new-instance v0, Lj$/nio/file/Files$FileTypeDetectors$1;

    invoke-direct {v0}, Lj$/nio/file/Files$FileTypeDetectors$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/nio/file/spi/FileTypeDetector;

    return-object v0
.end method

.method private static loadInstalledDetectors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj$/nio/file/spi/FileTypeDetector;",
            ">;"
        }
    .end annotation

    .line 1583
    new-instance v0, Lj$/nio/file/Files$FileTypeDetectors$2;

    invoke-direct {v0}, Lj$/nio/file/Files$FileTypeDetectors$2;-><init>()V

    .line 1584
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1583
    return-object v0
.end method
