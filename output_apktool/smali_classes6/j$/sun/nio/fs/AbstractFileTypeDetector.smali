.class public abstract Lj$/sun/nio/fs/AbstractFileTypeDetector;
.super Lj$/nio/file/spi/FileTypeDetector;
.source "AbstractFileTypeDetector.java"


# static fields
.field private static final TSPECIALS:Ljava/lang/String; = "()<>@,;:/[]?=\\\""


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lj$/nio/file/spi/FileTypeDetector;-><init>()V

    .line 44
    return-void
.end method

.method private static isTokenChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 128
    const/16 v0, 0x20

    if-le p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_0

    const-string v0, "()<>@,;:/[]?=\\\""

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidToken(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 136
    .local v0, "len":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 137
    return v1

    .line 138
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 139
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lj$/sun/nio/fs/AbstractFileTypeDetector;->isTokenChar(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 140
    return v1

    .line 138
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private static parse(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .line 100
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 101
    .local v1, "slash":I
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 102
    .local v2, "semicolon":I
    const/4 v3, 0x0

    if-gez v1, :cond_0

    .line 103
    return-object v3

    .line 104
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "type":Ljava/lang/String;
    invoke-static {v4}, Lj$/sun/nio/fs/AbstractFileTypeDetector;->isValidToken(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 106
    return-object v3

    .line 107
    :cond_1
    if-gez v2, :cond_2

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 108
    :cond_2
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :goto_0
    nop

    .line 109
    .local v5, "subtype":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-static {v5}, Lj$/sun/nio/fs/AbstractFileTypeDetector;->isValidToken(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 111
    return-object v3

    .line 112
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 113
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 57
    const-string v0, ""

    .line 58
    .local v0, "ext":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 60
    .local v1, "dot":I
    if-ltz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 61
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    .end local v1    # "dot":I
    :cond_0
    return-object v0
.end method

.method protected abstract implProbeContentType(Lj$/nio/file/Path;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final probeContentType(Lj$/nio/file/Path;)Ljava/lang/String;
    .locals 4
    .param p1, "file"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    if-eqz p1, :cond_2

    .line 75
    invoke-virtual {p0, p1}, Lj$/sun/nio/fs/AbstractFileTypeDetector;->implProbeContentType(Lj$/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 79
    invoke-interface {p1}, Lj$/nio/file/Path;->getFileName()Lj$/nio/file/Path;

    move-result-object v1

    .line 80
    .local v1, "fileName":Lj$/nio/file/Path;
    if-eqz v1, :cond_0

    .line 81
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v2

    .line 82
    .local v2, "fileNameMap":Ljava/net/FileNameMap;
    invoke-interface {v1}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .end local v1    # "fileName":Lj$/nio/file/Path;
    .end local v2    # "fileNameMap":Ljava/net/FileNameMap;
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lj$/sun/nio/fs/AbstractFileTypeDetector;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 74
    .end local v0    # "result":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'file\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
