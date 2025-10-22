.class public final synthetic Lj$/nio/file/attribute/PosixFileAttributes$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/nio/file/attribute/PosixFileAttributes;


# instance fields
.field public final synthetic wrappedValue:Lj$/nio/file/attribute/PosixFileAttributes;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/attribute/PosixFileAttributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/PosixFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/PosixFileAttributes;

    return-void
.end method

.method public static synthetic convert(Lj$/nio/file/attribute/PosixFileAttributes;)Ljava/nio/file/attribute/PosixFileAttributes;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/PosixFileAttributes$VivifiedWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/attribute/PosixFileAttributes$VivifiedWrapper;

    iget-object p0, p0, Lj$/nio/file/attribute/PosixFileAttributes$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/PosixFileAttributes;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/attribute/PosixFileAttributes$Wrapper;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/PosixFileAttributes$Wrapper;-><init>(Lj$/nio/file/attribute/PosixFileAttributes;)V

    return-object v0
.end method


# virtual methods
.method public synthetic creationTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/PosixFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->creationTime()Lj$/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/FileAttributeConversions;->convert(Lj$/nio/file/attribute/FileTime;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/PosixFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/PosixFileAttributes;

    instance-of v1, p1, Lj$/nio/file/attribute/PosixFileAttributes$Wrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/attribute/PosixFileAttributes$Wrapper;

    iget-object p1, p1, Lj$/nio/file/attribute/PosixFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/PosixFileAttributes;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic fileKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/PosixFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic group()Ljava/nio/file/attribute/GroupPrincipal;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/PosixFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Lj$/nio/file/attribute/PosixFileAttributes;->group()Lj$/nio/file/attribute/GroupPrincipal;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/GroupPrincipal$Wrapper;->convert(Lj$/nio/file/attribute/GroupPrincipal;)Ljava/nio/file/attribute/GroupPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/PosixFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/PosixFileAttributes;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic isDirectory()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/PosixFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public synthetic isOther()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/PosixFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->isOther()Z

    move-result v0

    return v0
.end method

.method public synthetic isRegularFile()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/PosixFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v0

    return v0
.end method

.method public synthetic isSymbolicLink()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/PosixFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v0

    return v0
.end method

.method public synthetic lastAccessTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/PosixFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Lj$/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/FileAttributeConversions;->convert(Lj$/nio/file/attribute/FileTime;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lastModifiedTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/PosixFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Lj$/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/FileAttributeConversions;->convert(Lj$/nio/file/attribute/FileTime;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public synthetic owner()Ljava/nio/file/attribute/UserPrincipal;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/PosixFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Lj$/nio/file/attribute/PosixFileAttributes;->owner()Lj$/nio/file/attribute/UserPrincipal;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/UserPrincipal$Wrapper;->convert(Lj$/nio/file/attribute/UserPrincipal;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public synthetic permissions()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/PosixFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Lj$/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/FileApiFlips;->flipPosixPermissionSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic size()J
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/PosixFileAttributes$Wrapper;->wrappedValue:Lj$/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v0

    return-wide v0
.end method
