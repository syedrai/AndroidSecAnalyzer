.class final Lcom/google/common/io/MoreFiles$PathByteSink;
.super Lcom/google/common/io/ByteSink;
.source "MoreFiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/MoreFiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PathByteSink"
.end annotation


# instance fields
.field private final options:[Lj$/nio/file/OpenOption;

.field private final path:Lj$/nio/file/Path;


# direct methods
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

    .line 237
    invoke-direct {p0}, Lcom/google/common/io/ByteSink;-><init>()V

    .line 238
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/nio/file/Path;

    iput-object v0, p0, Lcom/google/common/io/MoreFiles$PathByteSink;->path:Lj$/nio/file/Path;

    .line 239
    invoke-virtual {p2}, [Lj$/nio/file/OpenOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/nio/file/OpenOption;

    iput-object v0, p0, Lcom/google/common/io/MoreFiles$PathByteSink;->options:[Lj$/nio/file/OpenOption;

    .line 241
    return-void
.end method

.method synthetic constructor <init>(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;Lcom/google/common/io/MoreFiles-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/io/MoreFiles$PathByteSink;-><init>(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)V

    return-void
.end method


# virtual methods
.method public openStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/google/common/io/MoreFiles$PathByteSink;->path:Lj$/nio/file/Path;

    iget-object v1, p0, Lcom/google/common/io/MoreFiles$PathByteSink;->options:[Lj$/nio/file/OpenOption;

    invoke-static {v0, v1}, Lj$/nio/file/Files;->newOutputStream(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/google/common/io/MoreFiles$PathByteSink;->path:Lj$/nio/file/Path;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/MoreFiles$PathByteSink;->options:[Lj$/nio/file/OpenOption;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MoreFiles.asByteSink("

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
