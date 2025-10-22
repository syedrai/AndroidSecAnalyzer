.class public final synthetic Lj$/nio/file/attribute/AclFileAttributeView$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/nio/file/attribute/AclFileAttributeView;


# instance fields
.field public final synthetic wrappedValue:Lj$/nio/file/attribute/AclFileAttributeView;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/attribute/AclFileAttributeView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/AclFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/AclFileAttributeView;

    return-void
.end method

.method public static synthetic convert(Lj$/nio/file/attribute/AclFileAttributeView;)Ljava/nio/file/attribute/AclFileAttributeView;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/AclFileAttributeView$VivifiedWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/attribute/AclFileAttributeView$VivifiedWrapper;

    iget-object p0, p0, Lj$/nio/file/attribute/AclFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/AclFileAttributeView;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/attribute/AclFileAttributeView$Wrapper;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/AclFileAttributeView$Wrapper;-><init>(Lj$/nio/file/attribute/AclFileAttributeView;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/AclFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/AclFileAttributeView;

    instance-of v1, p1, Lj$/nio/file/attribute/AclFileAttributeView$Wrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/attribute/AclFileAttributeView$Wrapper;

    iget-object p1, p1, Lj$/nio/file/attribute/AclFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/AclFileAttributeView;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic getAcl()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/AclFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/AclFileAttributeView;

    invoke-interface {v0}, Lj$/nio/file/attribute/AclFileAttributeView;->getAcl()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getOwner()Ljava/nio/file/attribute/UserPrincipal;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/AclFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/AclFileAttributeView;

    invoke-interface {v0}, Lj$/nio/file/attribute/FileOwnerAttributeView;->getOwner()Lj$/nio/file/attribute/UserPrincipal;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/UserPrincipal$Wrapper;->convert(Lj$/nio/file/attribute/UserPrincipal;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/AclFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/AclFileAttributeView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/AclFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/AclFileAttributeView;

    invoke-interface {v0}, Lj$/nio/file/attribute/AclFileAttributeView;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setAcl(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/AclFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/AclFileAttributeView;

    invoke-interface {v0, p1}, Lj$/nio/file/attribute/AclFileAttributeView;->setAcl(Ljava/util/List;)V

    return-void
.end method

.method public synthetic setOwner(Ljava/nio/file/attribute/UserPrincipal;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/AclFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/AclFileAttributeView;

    invoke-static {p1}, Lj$/nio/file/attribute/UserPrincipal$VivifiedWrapper;->convert(Ljava/nio/file/attribute/UserPrincipal;)Lj$/nio/file/attribute/UserPrincipal;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/nio/file/attribute/FileOwnerAttributeView;->setOwner(Lj$/nio/file/attribute/UserPrincipal;)V

    return-void
.end method
