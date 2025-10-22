.class public final synthetic Lj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/nio/file/attribute/PosixFileAttributeView;


# instance fields
.field public final synthetic wrappedValue:Ljava/nio/file/attribute/PosixFileAttributeView;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/attribute/PosixFileAttributeView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/PosixFileAttributeView;

    return-void
.end method

.method public static synthetic convert(Ljava/nio/file/attribute/PosixFileAttributeView;)Lj$/nio/file/attribute/PosixFileAttributeView;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/PosixFileAttributeView$Wrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/attribute/PosixFileAttributeView$Wrapper;

    iget-object p0, p0, Lj$/nio/file/attribute/PosixFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/PosixFileAttributeView;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;-><init>(Ljava/nio/file/attribute/PosixFileAttributeView;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/PosixFileAttributeView;

    instance-of v1, p1, Lj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;

    iget-object p1, p1, Lj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/PosixFileAttributeView;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic getOwner()Lj$/nio/file/attribute/UserPrincipal;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/FileOwnerAttributeView;->getOwner()Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/UserPrincipal$VivifiedWrapper;->convert(Ljava/nio/file/attribute/UserPrincipal;)Lj$/nio/file/attribute/UserPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributeView;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic readAttributes()Lj$/nio/file/attribute/BasicFileAttributes;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributeView;->readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/BasicFileAttributes$VivifiedWrapper;->convert(Ljava/nio/file/attribute/BasicFileAttributes;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public synthetic readAttributes()Lj$/nio/file/attribute/PosixFileAttributes;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributeView;->readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/PosixFileAttributes$VivifiedWrapper;->convert(Ljava/nio/file/attribute/PosixFileAttributes;)Lj$/nio/file/attribute/PosixFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setGroup(Lj$/nio/file/attribute/GroupPrincipal;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-static {p1}, Lj$/nio/file/attribute/GroupPrincipal$Wrapper;->convert(Lj$/nio/file/attribute/GroupPrincipal;)Ljava/nio/file/attribute/GroupPrincipal;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/attribute/PosixFileAttributeView;->setGroup(Ljava/nio/file/attribute/GroupPrincipal;)V

    return-void
.end method

.method public synthetic setOwner(Lj$/nio/file/attribute/UserPrincipal;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-static {p1}, Lj$/nio/file/attribute/UserPrincipal$Wrapper;->convert(Lj$/nio/file/attribute/UserPrincipal;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/attribute/FileOwnerAttributeView;->setOwner(Ljava/nio/file/attribute/UserPrincipal;)V

    return-void
.end method

.method public synthetic setPermissions(Ljava/util/Set;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-static {p1}, Lj$/nio/file/FileApiFlips;->flipPosixPermissionSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/attribute/PosixFileAttributeView;->setPermissions(Ljava/util/Set;)V

    return-void
.end method

.method public synthetic setTimes(Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-static {p1}, Lj$/nio/file/attribute/FileAttributeConversions;->convert(Lj$/nio/file/attribute/FileTime;)Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/attribute/FileAttributeConversions;->convert(Lj$/nio/file/attribute/FileTime;)Ljava/nio/file/attribute/FileTime;

    move-result-object p2

    invoke-static {p3}, Lj$/nio/file/attribute/FileAttributeConversions;->convert(Lj$/nio/file/attribute/FileTime;)Ljava/nio/file/attribute/FileTime;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Ljava/nio/file/attribute/BasicFileAttributeView;->setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V

    return-void
.end method
