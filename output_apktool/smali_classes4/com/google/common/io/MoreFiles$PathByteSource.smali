.class final Lcom/google/common/io/MoreFiles$PathByteSource;
.super Lcom/google/common/io/SeekableChannelByteSource;
.source "MoreFiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/MoreFiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PathByteSource"
.end annotation


# static fields
.field private static final FOLLOW_LINKS:[Lj$/nio/file/LinkOption;


# instance fields
.field private final followLinks:Z

.field private final options:[Lj$/nio/file/OpenOption;

.field private final path:Lj$/nio/file/Path;


# direct methods
.method static bridge synthetic -$$Nest$fgetpath(Lcom/google/common/io/MoreFiles$PathByteSource;)Lj$/nio/file/Path;
    .locals 0

    iget-object p0, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->path:Lj$/nio/file/Path;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 111
    const/4 v0, 0x0

    new-array v0, v0, [Lj$/nio/file/LinkOption;

    sput-object v0, Lcom/google/common/io/MoreFiles$PathByteSource;->FOLLOW_LINKS:[Lj$/nio/file/LinkOption;

    return-void
.end method

.method private varargs constructor <init>(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)V
    .locals 1
    .param p1, "path"    # Lj$/nio/file/Path;
    .param p2, "options"    # [Lj$/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "options"
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lcom/google/common/io/SeekableChannelByteSource;-><init>()V

    .line 118
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/nio/file/Path;

    iput-object v0, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->path:Lj$/nio/file/Path;

    .line 119
    invoke-virtual {p2}, [Lj$/nio/file/OpenOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/nio/file/OpenOption;

    iput-object v0, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->options:[Lj$/nio/file/OpenOption;

    .line 120
    iget-object v0, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->options:[Lj$/nio/file/OpenOption;

    invoke-static {v0}, Lcom/google/common/io/MoreFiles$PathByteSource;->followLinks([Lj$/nio/file/OpenOption;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->followLinks:Z

    .line 122
    return-void
.end method

.method synthetic constructor <init>(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;Lcom/google/common/io/MoreFiles-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/io/MoreFiles$PathByteSource;-><init>(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)V

    return-void
.end method

.method private static followLinks([Lj$/nio/file/OpenOption;)Z
    .locals 5
    .param p0, "options"    # [Lj$/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    .line 125
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 126
    .local v3, "option":Lj$/nio/file/OpenOption;
    sget-object v4, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    if-ne v3, v4, :cond_0

    .line 127
    return v1

    .line 125
    .end local v3    # "option":Lj$/nio/file/OpenOption;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private readAttributes()Lj$/nio/file/attribute/BasicFileAttributes;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->path:Lj$/nio/file/Path;

    const-class v1, Lj$/nio/file/attribute/BasicFileAttributes;

    .line 148
    iget-boolean v2, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->followLinks:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/common/io/MoreFiles$PathByteSource;->FOLLOW_LINKS:[Lj$/nio/file/LinkOption;

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Lj$/nio/file/LinkOption;

    const/4 v3, 0x0

    sget-object v4, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    aput-object v4, v2, v3

    .line 145
    :goto_0
    invoke-static {v0, v1, v2}, Lj$/nio/file/Files;->readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "charset"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->options:[Lj$/nio/file/OpenOption;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/google/common/io/MoreFiles$PathByteSource$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/MoreFiles$PathByteSource$1;-><init>(Lcom/google/common/io/MoreFiles$PathByteSource;Ljava/nio/charset/Charset;)V

    return-object v0

    .line 208
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/io/SeekableChannelByteSource;->asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic openChannel()Ljava/nio/channels/ReadableByteChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/google/common/io/MoreFiles$PathByteSource;->openChannel()Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public openChannel()Ljava/nio/channels/SeekableByteChannel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->path:Lj$/nio/file/Path;

    iget-object v1, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->options:[Lj$/nio/file/OpenOption;

    invoke-static {v0, v1}, Lj$/nio/file/Files;->newByteChannel(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public openStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->path:Lj$/nio/file/Path;

    iget-object v1, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->options:[Lj$/nio/file/OpenOption;

    invoke-static {v0, v1}, Lj$/nio/file/Files;->newInputStream(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public read()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->path:Lj$/nio/file/Path;

    iget-object v1, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->options:[Lj$/nio/file/OpenOption;

    invoke-static {v0, v1}, Lj$/nio/file/Files;->newByteChannel(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    .line 188
    .local v0, "channel":Ljava/nio/channels/SeekableByteChannel;
    :try_start_0
    invoke-static {v0}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;J)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 188
    :cond_0
    return-object v1

    .line 187
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public size()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Lcom/google/common/io/MoreFiles$PathByteSource;->readAttributes()Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    .line 176
    .local v0, "attrs":Lj$/nio/file/attribute/BasicFileAttributes;
    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 178
    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v1

    return-wide v1

    .line 179
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "can\'t read: is a symbolic link"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "can\'t read: is a directory"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sizeIfKnown()Lcom/google/common/base/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 155
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/io/MoreFiles$PathByteSource;->readAttributes()Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .local v0, "attrs":Lj$/nio/file/attribute/BasicFileAttributes;
    nop

    .line 163
    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    return-object v1

    .line 164
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    return-object v1

    .line 156
    .end local v0    # "attrs":Lj$/nio/file/attribute/BasicFileAttributes;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 213
    iget-object v0, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->path:Lj$/nio/file/Path;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->options:[Lj$/nio/file/OpenOption;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MoreFiles.asByteSource("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
