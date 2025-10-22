.class Lj$/desugar/sun/nio/fs/DesugarMimeTypesFileTypeDetector;
.super Lj$/desugar/sun/nio/fs/DesugarAbstractFileTypeDetector;
.source "DesugarMimeTypesFileTypeDetector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lj$/desugar/sun/nio/fs/DesugarAbstractFileTypeDetector;-><init>()V

    return-void
.end method


# virtual methods
.method protected implProbeContentType(Lj$/nio/file/Path;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 68
    invoke-interface {p1}, Lj$/nio/file/Path;->getFileName()Lj$/nio/file/Path;

    move-result-object v0

    .line 69
    .local v0, "fn":Lj$/nio/file/Path;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 70
    return-object v1

    .line 72
    :cond_0
    invoke-interface {v0}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lj$/desugar/sun/nio/fs/DesugarMimeTypesFileTypeDetector;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "ext":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    return-object v1

    .line 88
    :cond_1
    invoke-static {}, Lj$/libcore/content/type/MimeMap;->getDefault()Lj$/libcore/content/type/MimeMap;

    move-result-object v1

    invoke-virtual {v1, v2}, Lj$/libcore/content/type/MimeMap;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "mimeType":Ljava/lang/String;
    if-nez v1, :cond_2

    invoke-virtual {p0, v2}, Lj$/desugar/sun/nio/fs/DesugarMimeTypesFileTypeDetector;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    :cond_3
    return-object v1
.end method
