.class public final synthetic Lj$/nio/file/attribute/FileOwnerAttributeView$VivifiedWrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/nio/file/attribute/FileOwnerAttributeView;


# instance fields
.field public final synthetic wrappedValue:Ljava/nio/file/attribute/FileOwnerAttributeView;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/attribute/FileOwnerAttributeView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/FileOwnerAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/FileOwnerAttributeView;

    return-void
.end method

.method public static synthetic convert(Ljava/nio/file/attribute/FileOwnerAttributeView;)Lj$/nio/file/attribute/FileOwnerAttributeView;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/FileOwnerAttributeView$Wrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/attribute/FileOwnerAttributeView$Wrapper;

    iget-object p0, p0, Lj$/nio/file/attribute/FileOwnerAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/FileOwnerAttributeView;

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/nio/file/attribute/AclFileAttributeView;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/nio/file/attribute/AclFileAttributeView;

    invoke-static {p0}, Lj$/nio/file/attribute/AclFileAttributeView$VivifiedWrapper;->convert(Ljava/nio/file/attribute/AclFileAttributeView;)Lj$/nio/file/attribute/AclFileAttributeView;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/nio/file/attribute/PosixFileAttributeView;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-static {p0}, Lj$/nio/file/attribute/PosixFileAttributeView$VivifiedWrapper;->convert(Ljava/nio/file/attribute/PosixFileAttributeView;)Lj$/nio/file/attribute/PosixFileAttributeView;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Lj$/nio/file/attribute/FileOwnerAttributeView$VivifiedWrapper;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/FileOwnerAttributeView$VivifiedWrapper;-><init>(Ljava/nio/file/attribute/FileOwnerAttributeView;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/FileOwnerAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/FileOwnerAttributeView;

    instance-of v1, p1, Lj$/nio/file/attribute/FileOwnerAttributeView$VivifiedWrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/attribute/FileOwnerAttributeView$VivifiedWrapper;

    iget-object p1, p1, Lj$/nio/file/attribute/FileOwnerAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/FileOwnerAttributeView;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic getOwner()Lj$/nio/file/attribute/UserPrincipal;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/FileOwnerAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/FileOwnerAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/FileOwnerAttributeView;->getOwner()Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/UserPrincipal$VivifiedWrapper;->convert(Ljava/nio/file/attribute/UserPrincipal;)Lj$/nio/file/attribute/UserPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/FileOwnerAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/FileOwnerAttributeView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/FileOwnerAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/FileOwnerAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/FileOwnerAttributeView;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setOwner(Lj$/nio/file/attribute/UserPrincipal;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/FileOwnerAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/FileOwnerAttributeView;

    invoke-static {p1}, Lj$/nio/file/attribute/UserPrincipal$Wrapper;->convert(Lj$/nio/file/attribute/UserPrincipal;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/attribute/FileOwnerAttributeView;->setOwner(Ljava/nio/file/attribute/UserPrincipal;)V

    return-void
.end method
