.class public Lj$/desugar/sun/nio/fs/DesugarUnixPath;
.super Ljava/lang/Object;
.source "DesugarUnixPath.java"

# interfaces
.implements Lj$/nio/file/Path;


# static fields
.field private static final PATH_COMPONENT_SPLITERATOR:Ljava/util/regex/Pattern;

.field private static final SEPARATOR:Ljava/lang/String; = "/"


# instance fields
.field private volatile byteArrayValue:[B

.field private final fileNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final fileSystem:Lj$/nio/file/FileSystem;

.field private final isAbsolutePath:Z

.field private final pathText:Ljava/lang/String;

.field private final rootDir:Ljava/lang/String;

.field private final userDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-string v0, "/+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->PATH_COMPONENT_SPLITERATOR:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "fileSystem"    # Lj$/nio/file/FileSystem;
    .param p2, "rawPath"    # Ljava/lang/String;
    .param p3, "userDir"    # Ljava/lang/String;
    .param p4, "rootDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fileSystem",
            "rawPath",
            "userDir",
            "rootDir"
        }
    .end annotation

    .line 66
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    invoke-static {p2}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->getFileNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "fileSystem":Lj$/nio/file/FileSystem;
    .end local p3    # "userDir":Ljava/lang/String;
    .end local p4    # "rootDir":Ljava/lang/String;
    .local v2, "fileSystem":Lj$/nio/file/FileSystem;
    .local v5, "userDir":Ljava/lang/String;
    .local v6, "rootDir":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Lj$/nio/file/FileSystem;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method private constructor <init>(Lj$/nio/file/FileSystem;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fileSystem"    # Lj$/nio/file/FileSystem;
    .param p2, "isAbsolutePath"    # Z
    .param p4, "userDir"    # Ljava/lang/String;
    .param p5, "rootDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fileSystem",
            "isAbsolutePath",
            "fileNames",
            "userDir",
            "rootDir"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/FileSystem;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 74
    .local p3, "fileNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->fileSystem:Lj$/nio/file/FileSystem;

    .line 76
    iput-boolean p2, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->isAbsolutePath:Z

    .line 77
    iput-object p3, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->fileNames:Ljava/util/List;

    .line 79
    invoke-static {p2, p3}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->getPathText(ZLjava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->pathText:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    .line 81
    iput-object p5, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private static getFileNames(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "rawTextPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rawTextPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, ""

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 88
    :cond_0
    sget-object v0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->PATH_COMPONENT_SPLITERATOR:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lj$/desugar/sun/nio/fs/DesugarUnixPath$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lj$/desugar/sun/nio/fs/DesugarUnixPath$$ExternalSyntheticLambda1;-><init>()V

    .line 89
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 90
    invoke-static {}, Lj$/util/stream/Collectors;->toUnmodifiableList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 88
    return-object v0
.end method

.method private static getPathText(ZLjava/util/Collection;)Ljava/lang/String;
    .locals 3
    .param p0, "isAbsolutePath"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isAbsolutePath",
            "fileNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 94
    .local p1, "fileNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "/"

    if-eqz p0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-static {v0, p1}, Lj$/desugar/sun/nio/fs/DesugarUnixPath$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getFileNames$0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private subPathName(II)Ljava/lang/String;
    .locals 2
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "beginIndex",
            "endIndex"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->fileNames:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    const-string v1, "/"

    invoke-static {v1, v0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method asByteArray()[B
    .locals 2

    .line 357
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->byteArrayValue:[B

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->pathText:Ljava/lang/String;

    invoke-static {}, Lj$/desugar/sun/nio/fs/DesugarUtil;->jnuEncoding()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->byteArrayValue:[B

    .line 360
    :cond_0
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->byteArrayValue:[B

    return-object v0
.end method

.method public compareTo(Lj$/nio/file/Path;)I
    .locals 2
    .param p1, "other"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->pathText:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v1, v1, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->pathText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 49
    check-cast p1, Lj$/nio/file/Path;

    invoke-virtual {p0, p1}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->compareTo(Lj$/nio/file/Path;)I

    move-result p1

    return p1
.end method

.method public endsWith(Lj$/nio/file/Path;)Z
    .locals 6
    .param p1, "other"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 197
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    instance-of v0, p1, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 199
    return v1

    .line 201
    :cond_0
    invoke-interface {p1}, Lj$/nio/file/Path;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {p0, p1}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 204
    :cond_1
    invoke-interface {p1}, Lj$/nio/file/Path;->getNameCount()I

    move-result v0

    .line 205
    .local v0, "otherNameCount":I
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->getNameCount()I

    move-result v2

    if-ge v2, v0, :cond_2

    .line 206
    return v1

    .line 208
    :cond_2
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->getNameCount()I

    move-result v2

    .line 209
    .local v2, "thisNameCount":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    .line 210
    sub-int v4, v3, v0

    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->getName(I)Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v4

    invoke-interface {p1, v3}, Lj$/nio/file/Path;->getName(I)Lj$/nio/file/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 211
    return v1

    .line 209
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 214
    .end local v3    # "i":I
    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 192
    new-instance v0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v1, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->fileSystem:Lj$/nio/file/FileSystem;

    iget-object v2, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v3, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, v3}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Lj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->endsWith(Lj$/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 219
    instance-of v0, p1, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 220
    return v1

    .line 222
    :cond_0
    move-object v0, p1

    check-cast v0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    invoke-virtual {p0, v0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->compareTo(Lj$/nio/file/Path;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getFileName()Lj$/desugar/sun/nio/fs/DesugarUnixPath;
    .locals 5

    .line 122
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->fileNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-boolean v0, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->isAbsolutePath:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    goto :goto_0

    .line 124
    :cond_1
    new-instance v0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v1, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->fileSystem:Lj$/nio/file/FileSystem;

    iget-object v2, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->fileNames:Ljava/util/List;

    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->getNameCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v4, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Lj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    return-object v0
.end method

.method public bridge synthetic getFileName()Lj$/nio/file/Path;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->getFileName()Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v0

    return-object v0
.end method

.method public getFileSystem()Lj$/nio/file/FileSystem;
    .locals 1

    .line 99
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->fileSystem:Lj$/nio/file/FileSystem;

    return-object v0
.end method

.method public getName(I)Lj$/desugar/sun/nio/fs/DesugarUnixPath;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 148
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->getNameCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 152
    new-instance v0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v1, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->fileSystem:Lj$/nio/file/FileSystem;

    iget-object v2, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->fileNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v4, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Lj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p0, v2, v1

    const-string v1, "Requested name for index (%d) is out of bound in \n%s."

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getName(I)Lj$/nio/file/Path;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->getName(I)Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object p1

    return-object p1
.end method

.method public getNameCount()I
    .locals 1

    .line 143
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->fileNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParent()Lj$/desugar/sun/nio/fs/DesugarUnixPath;
    .locals 7

    .line 129
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->getNameCount()I

    move-result v0

    .line 130
    .local v0, "nameCount":I
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->isAbsolutePath:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v1, "pathBuilder":Ljava/lang/StringBuilder;
    iget-boolean v2, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->isAbsolutePath:Z

    if-eqz v2, :cond_1

    .line 135
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_1
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->subPathName(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "pathText":Ljava/lang/String;
    new-instance v3, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v4, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->fileSystem:Lj$/nio/file/FileSystem;

    iget-object v5, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v6, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    invoke-direct {v3, v4, v2, v5, v6}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Lj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 131
    .end local v1    # "pathBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "pathText":Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic getParent()Lj$/nio/file/Path;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->getParent()Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lj$/desugar/sun/nio/fs/DesugarUnixPath;
    .locals 5

    .line 109
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->getFileSystem()Lj$/nio/file/FileSystem;

    move-result-object v1

    iget-object v2, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    iget-object v3, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v4, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Lj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getRoot()Lj$/nio/file/Path;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->getRoot()Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v0

    return-object v0
.end method

.method getUserDir()Lj$/desugar/sun/nio/fs/DesugarUnixPath;
    .locals 5

    .line 117
    new-instance v0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->getFileSystem()Lj$/nio/file/FileSystem;

    move-result-object v1

    iget-object v2, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v3, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v4, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Lj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 227
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->pathText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAbsolute()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->isAbsolutePath:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lj$/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 366
    invoke-static {p0}, Lj$/nio/file/Path$-CC;->$default$iterator(Lj$/nio/file/Path;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public normalize()Lj$/desugar/sun/nio/fs/DesugarUnixPath;
    .locals 6

    .line 237
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 238
    .local v0, "normalizedFileNames":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/String;>;"
    iget-object v1, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->fileNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 239
    .local v2, "fileName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_1
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 246
    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 243
    :pswitch_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 244
    goto :goto_3

    .line 241
    :pswitch_1
    nop

    .line 249
    .end local v2    # "fileName":Ljava/lang/String;
    :goto_3
    goto :goto_0

    .line 250
    :cond_1
    new-instance v1, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v2, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->fileSystem:Lj$/nio/file/FileSystem;

    iget-boolean v3, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->isAbsolutePath:Z

    .line 251
    invoke-static {v3, v0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->getPathText(ZLjava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v5, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Lj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_1
        0x5c0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic normalize()Lj$/nio/file/Path;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->normalize()Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v0

    return-object v0
.end method

.method public varargs synthetic register(Lj$/nio/file/WatchService;[Lj$/nio/file/WatchEvent$Kind;)Lj$/nio/file/WatchKey;
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/nio/file/Path$-CC;->$default$register(Lj$/nio/file/Path;Lj$/nio/file/WatchService;[Lj$/nio/file/WatchEvent$Kind;)Lj$/nio/file/WatchKey;

    move-result-object p1

    return-object p1
.end method

.method public varargs register(Lj$/nio/file/WatchService;[Lj$/nio/file/WatchEvent$Kind;[Lj$/nio/file/WatchEvent$Modifier;)Lj$/nio/file/WatchKey;
    .locals 2
    .param p1, "watcher"    # Lj$/nio/file/WatchService;
    .param p3, "modifiers"    # [Lj$/nio/file/WatchEvent$Modifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "watcher",
            "events",
            "modifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/WatchService;",
            "[",
            "Lj$/nio/file/WatchEvent$Kind<",
            "*>;[",
            "Lj$/nio/file/WatchEvent$Modifier;",
            ")",
            "Lj$/nio/file/WatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    .local p2, "events":[Lj$/nio/file/WatchEvent$Kind;, "[Ljava/nio/file/WatchEvent$Kind<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Watch Service is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public relativize(Lj$/nio/file/Path;)Lj$/desugar/sun/nio/fs/DesugarUnixPath;
    .locals 11
    .param p1, "other"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 290
    instance-of v0, p1, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    if-eqz v0, :cond_4

    .line 298
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->isAbsolute()Z

    move-result v0

    invoke-interface {p1}, Lj$/nio/file/Path;->isAbsolute()Z

    move-result v1

    if-ne v0, v1, :cond_3

    .line 302
    move-object v0, p1

    check-cast v0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v0, v0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->fileNames:Ljava/util/List;

    .line 304
    .local v0, "otherFileNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->fileNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 305
    .local v1, "thisFileNameCount":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 307
    .local v2, "otherFileNameCount":I
    const/4 v3, 0x0

    .line 308
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->fileNames:Ljava/util/List;

    .line 310
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 311
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 314
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v4

    .line 315
    .local v8, "relativeFileNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v4, v3

    .local v4, "j":I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 316
    const-string v5, ".."

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 318
    .end local v4    # "j":I
    :cond_1
    move v4, v3

    .restart local v4    # "j":I
    :goto_2
    if-ge v4, v2, :cond_2

    .line 319
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 322
    .end local v4    # "j":I
    :cond_2
    new-instance v5, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v6, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->fileSystem:Lj$/nio/file/FileSystem;

    iget-object v9, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v10, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct/range {v5 .. v10}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Lj$/nio/file/FileSystem;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 299
    .end local v0    # "otherFileNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "thisFileNameCount":I
    .end local v2    # "otherFileNameCount":I
    .end local v3    # "i":I
    .end local v8    # "relativeFileNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'other\' is different type of Path in absolute property."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 295
    invoke-interface {p1}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/FileSystem;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 292
    const-string v1, "Expected to resolve paths on the same file system as DesugarUnixPath, but gets %s (%s)."

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic relativize(Lj$/nio/file/Path;)Lj$/nio/file/Path;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->relativize(Lj$/nio/file/Path;)Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object p1

    return-object p1
.end method

.method public resolve(Lj$/nio/file/Path;)Lj$/desugar/sun/nio/fs/DesugarUnixPath;
    .locals 5
    .param p1, "other"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 256
    instance-of v0, p1, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    if-eqz v0, :cond_1

    .line 264
    invoke-interface {p1}, Lj$/nio/file/Path;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    move-object v0, p1

    check-cast v0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    return-object v0

    .line 267
    :cond_0
    new-instance v0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v1, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->fileSystem:Lj$/nio/file/FileSystem;

    iget-object v2, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->pathText:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v4, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Lj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 257
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 261
    invoke-interface {p1}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/FileSystem;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 258
    const-string v1, "Expected to resolve paths on the same file system as DesugarUnixPath, but gets %s (%s)."

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic resolve(Lj$/nio/file/Path;)Lj$/nio/file/Path;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->resolve(Lj$/nio/file/Path;)Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object p1

    return-object p1
.end method

.method public synthetic resolve(Ljava/lang/String;)Lj$/nio/file/Path;
    .locals 0

    invoke-static {p0, p1}, Lj$/nio/file/Path$-CC;->$default$resolve(Lj$/nio/file/Path;Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public resolveSibling(Lj$/nio/file/Path;)Lj$/desugar/sun/nio/fs/DesugarUnixPath;
    .locals 4
    .param p1, "other"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 272
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->getParent()Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v0

    .line 280
    .local v0, "parent":Lj$/desugar/sun/nio/fs/DesugarUnixPath;
    if-nez v0, :cond_0

    move-object v1, p1

    check-cast v1, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->resolve(Lj$/nio/file/Path;)Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v1

    :goto_0
    return-object v1

    .line 273
    .end local v0    # "parent":Lj$/desugar/sun/nio/fs/DesugarUnixPath;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 277
    invoke-interface {p1}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/FileSystem;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 274
    const-string v1, "Expected to resolve paths on the same file system as DesugarUnixPath, but gets %s (%s)."

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolveSibling(Ljava/lang/String;)Lj$/desugar/sun/nio/fs/DesugarUnixPath;
    .locals 4
    .param p1, "other"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 285
    new-instance v0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v1, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->fileSystem:Lj$/nio/file/FileSystem;

    iget-object v2, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v3, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, v3}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Lj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->resolveSibling(Lj$/nio/file/Path;)Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic resolveSibling(Lj$/nio/file/Path;)Lj$/nio/file/Path;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->resolveSibling(Lj$/nio/file/Path;)Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic resolveSibling(Ljava/lang/String;)Lj$/nio/file/Path;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->resolveSibling(Ljava/lang/String;)Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object p1

    return-object p1
.end method

.method public startsWith(Lj$/nio/file/Path;)Z
    .locals 5
    .param p1, "other"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 171
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    instance-of v0, p1, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 173
    return v1

    .line 175
    :cond_0
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->isAbsolute()Z

    move-result v0

    invoke-interface {p1}, Lj$/nio/file/Path;->isAbsolute()Z

    move-result v2

    if-eq v0, v2, :cond_1

    .line 176
    return v1

    .line 178
    :cond_1
    invoke-interface {p1}, Lj$/nio/file/Path;->getNameCount()I

    move-result v0

    .line 179
    .local v0, "otherNameCount":I
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->getNameCount()I

    move-result v2

    if-ge v2, v0, :cond_2

    .line 180
    return v1

    .line 182
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 183
    invoke-virtual {p0, v2}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->getName(I)Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v3

    invoke-interface {p1, v2}, Lj$/nio/file/Path;->getName(I)Lj$/nio/file/Path;

    move-result-object v4

    invoke-virtual {v3, v4}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 184
    return v1

    .line 182
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v2    # "i":I
    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 166
    new-instance v0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v1, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->fileSystem:Lj$/nio/file/FileSystem;

    iget-object v2, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v3, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, v3}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Lj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->startsWith(Lj$/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public subpath(II)Lj$/desugar/sun/nio/fs/DesugarUnixPath;
    .locals 5
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "beginIndex",
            "endIndex"
        }
    .end annotation

    .line 157
    new-instance v0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v1, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->fileSystem:Lj$/nio/file/FileSystem;

    invoke-direct {p0, p1, p2}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->subPathName(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v4, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Lj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic subpath(II)Lj$/nio/file/Path;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "beginIndex",
            "endIndex"
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->subpath(II)Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object p1

    return-object p1
.end method

.method public toAbsolutePath()Lj$/desugar/sun/nio/fs/DesugarUnixPath;
    .locals 1

    .line 338
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->getUserDir()Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->resolve(Lj$/nio/file/Path;)Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toAbsolutePath()Lj$/nio/file/Path;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->toAbsolutePath()Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v0

    return-object v0
.end method

.method public toFile()Ljava/io/File;
    .locals 2

    .line 328
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public varargs toRealPath([Lj$/nio/file/LinkOption;)Lj$/desugar/sun/nio/fs/DesugarUnixPath;
    .locals 5
    .param p1, "options"    # [Lj$/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->getFileSystem()Lj$/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lj$/nio/file/FileSystem;->provider()Lj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lj$/nio/file/AccessMode;

    const/4 v2, 0x0

    sget-object v3, Lj$/nio/file/AccessMode;->READ:Lj$/nio/file/AccessMode;

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lj$/nio/file/spi/FileSystemProvider;->checkAccess(Lj$/nio/file/Path;[Lj$/nio/file/AccessMode;)V

    .line 344
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->toAbsolutePath()Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v0

    return-object v0

    .line 347
    :cond_0
    new-instance v0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v1, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->fileSystem:Lj$/nio/file/FileSystem;

    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v4, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Lj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic toRealPath([Lj$/nio/file/LinkOption;)Lj$/nio/file/Path;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->toRealPath([Lj$/nio/file/LinkOption;)Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 352
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->pathText:Ljava/lang/String;

    return-object v0
.end method

.method public toUri()Ljava/net/URI;
    .locals 1

    .line 333
    invoke-static {p0}, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->toUri(Lj$/desugar/sun/nio/fs/DesugarUnixPath;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method
