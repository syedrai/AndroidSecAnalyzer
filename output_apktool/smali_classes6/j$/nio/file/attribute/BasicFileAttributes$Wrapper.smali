.class public final synthetic Lj$/nio/file/attribute/BasicFileAttributes$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/nio/file/attribute/BasicFileAttributes;


# instance fields
.field public final synthetic wrappedValue:Lj$/nio/file/attribute/BasicFileAttributes;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/attribute/BasicFileAttributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/BasicFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/BasicFileAttributes;

    return-void
.end method

.method public static synthetic convert(Lj$/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/BasicFileAttributes$VivifiedWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/attribute/BasicFileAttributes$VivifiedWrapper;

    iget-object p0, p0, Lj$/nio/file/attribute/BasicFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/BasicFileAttributes;

    return-object p0

    :cond_1
    instance-of v0, p0, Lj$/nio/file/attribute/DosFileAttributes;

    if-eqz v0, :cond_2

    check-cast p0, Lj$/nio/file/attribute/DosFileAttributes;

    invoke-static {p0}, Lj$/nio/file/attribute/DosFileAttributes$Wrapper;->convert(Lj$/nio/file/attribute/DosFileAttributes;)Ljava/nio/file/attribute/DosFileAttributes;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Lj$/nio/file/attribute/PosixFileAttributes;

    if-eqz v0, :cond_3

    check-cast p0, Lj$/nio/file/attribute/PosixFileAttributes;

    invoke-static {p0}, Lj$/nio/file/attribute/PosixFileAttributes$Wrapper;->convert(Lj$/nio/file/attribute/PosixFileAttributes;)Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Lj$/nio/file/attribute/BasicFileAttributes$Wrapper;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/BasicFileAttributes$Wrapper;-><init>(Lj$/nio/file/attribute/BasicFileAttributes;)V

    return-object v0
.end method


# virtual methods
.method public synthetic creationTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/BasicFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/BasicFileAttributes;

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->creationTime()Lj$/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/FileAttributeConversions;->convert(Lj$/nio/file/attribute/FileTime;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/BasicFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/BasicFileAttributes;

    instance-of v1, p1, Lj$/nio/file/attribute/BasicFileAttributes$Wrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/attribute/BasicFileAttributes$Wrapper;

    iget-object p1, p1, Lj$/nio/file/attribute/BasicFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/BasicFileAttributes;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic fileKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/BasicFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/BasicFileAttributes;

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/BasicFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/BasicFileAttributes;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic isDirectory()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/BasicFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/BasicFileAttributes;

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public synthetic isOther()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/BasicFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/BasicFileAttributes;

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->isOther()Z

    move-result v0

    return v0
.end method

.method public synthetic isRegularFile()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/BasicFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/BasicFileAttributes;

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v0

    return v0
.end method

.method public synthetic isSymbolicLink()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/BasicFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/BasicFileAttributes;

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v0

    return v0
.end method

.method public synthetic lastAccessTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/BasicFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/BasicFileAttributes;

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Lj$/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/FileAttributeConversions;->convert(Lj$/nio/file/attribute/FileTime;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lastModifiedTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/BasicFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/BasicFileAttributes;

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Lj$/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/FileAttributeConversions;->convert(Lj$/nio/file/attribute/FileTime;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public synthetic size()J
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/BasicFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/BasicFileAttributes;

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v0

    return-wide v0
.end method
