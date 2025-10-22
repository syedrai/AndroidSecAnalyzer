.class public Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;
.super Lj$/nio/file/FileSystem;
.source "DesugarLinuxFileSystem.java"


# static fields
.field private static final GLOB_SYNTAX:Ljava/lang/String; = "glob"

.field private static final REGEX_SYNTAX:Ljava/lang/String; = "regex"

.field public static final SEPARATOR:Ljava/lang/String; = "/"


# instance fields
.field private final provider:Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;

.field private final rootDir:Ljava/lang/String;

.field private final userDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;
    .param p2, "userDir"    # Ljava/lang/String;
    .param p3, "rootDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "provider",
            "userDir",
            "rootDir"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lj$/nio/file/FileSystem;-><init>()V

    .line 50
    iput-object p1, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;->provider:Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;

    .line 51
    iput-object p2, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;->userDir:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;->rootDir:Ljava/lang/String;

    .line 53
    return-void
.end method

.method static synthetic lambda$getPathMatcher$0(Ljava/util/regex/Pattern;Lj$/nio/file/Path;)Z
    .locals 1
    .param p0, "pattern"    # Ljava/util/regex/Pattern;
    .param p1, "path"    # Lj$/nio/file/Path;

    .line 152
    invoke-interface {p1}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFileStores()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lj$/nio/file/FileStore;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs getPath(Ljava/lang/String;[Ljava/lang/String;)Lj$/desugar/sun/nio/fs/DesugarUnixPath;
    .locals 5
    .param p1, "first"    # Ljava/lang/String;
    .param p2, "more"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "first",
            "more"
        }
    .end annotation

    .line 108
    array-length v0, p2

    if-nez v0, :cond_0

    .line 109
    move-object v0, p1

    .local v0, "path":Ljava/lang/String;
    goto :goto_1

    .line 111
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    .line 114
    .local v3, "segment":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 116
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .end local v3    # "segment":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 123
    .local v0, "path":Ljava/lang/String;
    :goto_1
    new-instance v1, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v2, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;->userDir:Ljava/lang/String;

    iget-object v3, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;->rootDir:Ljava/lang/String;

    invoke-direct {v1, p0, v0, v2, v3}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Lj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic getPath(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "first",
            "more"
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object p1

    return-object p1
.end method

.method public getPathMatcher(Ljava/lang/String;)Lj$/nio/file/PathMatcher;
    .locals 6
    .param p1, "syntaxAndPattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "syntaxAndPattern"
        }
    .end annotation

    .line 128
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 129
    .local v0, "pos":I
    const/4 v1, 0x0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 135
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "syntax":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "input":Ljava/lang/String;
    const-string v3, "glob"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    invoke-static {v2}, Lj$/desugar/sun/nio/fs/DesugarGlobs;->toUnixRegexPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "expr":Ljava/lang/String;
    goto :goto_0

    .line 142
    .end local v3    # "expr":Ljava/lang/String;
    :cond_0
    const-string v3, "regex"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    move-object v3, v2

    .line 150
    .restart local v3    # "expr":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 152
    .local v4, "pattern":Ljava/util/regex/Pattern;
    new-instance v5, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticLambda4;

    invoke-direct {v5, v4}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticLambda4;-><init>(Ljava/util/regex/Pattern;)V

    return-object v5

    .line 145
    .end local v3    # "expr":Ljava/lang/String;
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Syntax \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' not recognized"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 130
    .end local v1    # "syntax":Ljava/lang/String;
    .end local v2    # "input":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const/4 v1, 0x1

    aput-object p1, v4, v1

    .line 131
    const-string v1, "Requested <syntax>:<pattern> spliterator(\':\') position(%d) is out of bound in %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getRootDir()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;->rootDir:Ljava/lang/String;

    return-object v0
.end method

.method public getRootDirectories()Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lj$/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v1, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;->userDir:Ljava/lang/String;

    iget-object v2, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;->rootDir:Ljava/lang/String;

    const-string v3, "/"

    invoke-direct {v0, p0, v3, v1, v2}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Lj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticBackport2;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSeparator()Ljava/lang/String;
    .locals 1

    .line 77
    const-string v0, "/"

    return-object v0
.end method

.method public getUserDir()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;->userDir:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPrincipalLookupService()Lj$/nio/file/attribute/UserPrincipalLookupService;
    .locals 1

    .line 158
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public newWatchService()Lj$/nio/file/WatchService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public provider()Lj$/nio/file/spi/FileSystemProvider;
    .locals 1

    .line 57
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;->provider:Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;

    return-object v0
.end method

.method public supportedFileAttributeViews()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    const-string v0, "basic"

    invoke-static {v0}, Lj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
