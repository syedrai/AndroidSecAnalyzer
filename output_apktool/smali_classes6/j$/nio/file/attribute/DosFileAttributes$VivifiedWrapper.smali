.class public final synthetic Lj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/nio/file/attribute/DosFileAttributes;


# instance fields
.field public final synthetic wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/attribute/DosFileAttributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    return-void
.end method

.method public static synthetic convert(Ljava/nio/file/attribute/DosFileAttributes;)Lj$/nio/file/attribute/DosFileAttributes;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/DosFileAttributes$Wrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/attribute/DosFileAttributes$Wrapper;

    iget-object p0, p0, Lj$/nio/file/attribute/DosFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/DosFileAttributes;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;-><init>(Ljava/nio/file/attribute/DosFileAttributes;)V

    return-object v0
.end method


# virtual methods
.method public synthetic creationTime()Lj$/nio/file/attribute/FileTime;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/FileAttributeConversions;->convert(Ljava/nio/file/attribute/FileTime;)Lj$/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    instance-of v1, p1, Lj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;

    iget-object p1, p1, Lj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic fileKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic isArchive()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/DosFileAttributes;->isArchive()Z

    move-result v0

    return v0
.end method

.method public synthetic isDirectory()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public synthetic isHidden()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/DosFileAttributes;->isHidden()Z

    move-result v0

    return v0
.end method

.method public synthetic isOther()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isOther()Z

    move-result v0

    return v0
.end method

.method public synthetic isReadOnly()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/DosFileAttributes;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public synthetic isRegularFile()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v0

    return v0
.end method

.method public synthetic isSymbolicLink()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v0

    return v0
.end method

.method public synthetic isSystem()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/DosFileAttributes;->isSystem()Z

    move-result v0

    return v0
.end method

.method public synthetic lastAccessTime()Lj$/nio/file/attribute/FileTime;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/FileAttributeConversions;->convert(Ljava/nio/file/attribute/FileTime;)Lj$/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lastModifiedTime()Lj$/nio/file/attribute/FileTime;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/FileAttributeConversions;->convert(Ljava/nio/file/attribute/FileTime;)Lj$/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public synthetic size()J
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/DosFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/DosFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v0

    return-wide v0
.end method
