.class public final synthetic Lj$/nio/file/attribute/UserPrincipalLookupService$VivifiedWrapper;
.super Lj$/nio/file/attribute/UserPrincipalLookupService;
.source "D8$$SyntheticClass"


# instance fields
.field public final synthetic wrappedValue:Ljava/nio/file/attribute/UserPrincipalLookupService;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/attribute/UserPrincipalLookupService;)V
    .locals 0

    invoke-direct {p0}, Lj$/nio/file/attribute/UserPrincipalLookupService;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/UserPrincipalLookupService$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/UserPrincipalLookupService;

    return-void
.end method

.method public static synthetic convert(Ljava/nio/file/attribute/UserPrincipalLookupService;)Lj$/nio/file/attribute/UserPrincipalLookupService;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/UserPrincipalLookupService$Wrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/attribute/UserPrincipalLookupService$Wrapper;

    iget-object p0, p0, Lj$/nio/file/attribute/UserPrincipalLookupService$Wrapper;->wrappedValue:Lj$/nio/file/attribute/UserPrincipalLookupService;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/attribute/UserPrincipalLookupService$VivifiedWrapper;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/UserPrincipalLookupService$VivifiedWrapper;-><init>(Ljava/nio/file/attribute/UserPrincipalLookupService;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/UserPrincipalLookupService$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/UserPrincipalLookupService;

    instance-of v1, p1, Lj$/nio/file/attribute/UserPrincipalLookupService$VivifiedWrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/attribute/UserPrincipalLookupService$VivifiedWrapper;

    iget-object p1, p1, Lj$/nio/file/attribute/UserPrincipalLookupService$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/UserPrincipalLookupService;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/UserPrincipalLookupService$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/UserPrincipalLookupService;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic lookupPrincipalByGroupName(Ljava/lang/String;)Lj$/nio/file/attribute/GroupPrincipal;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/UserPrincipalLookupService$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/UserPrincipalLookupService;

    invoke-virtual {v0, p1}, Ljava/nio/file/attribute/UserPrincipalLookupService;->lookupPrincipalByGroupName(Ljava/lang/String;)Ljava/nio/file/attribute/GroupPrincipal;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/attribute/GroupPrincipal$VivifiedWrapper;->convert(Ljava/nio/file/attribute/GroupPrincipal;)Lj$/nio/file/attribute/GroupPrincipal;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lookupPrincipalByName(Ljava/lang/String;)Lj$/nio/file/attribute/UserPrincipal;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/UserPrincipalLookupService$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/UserPrincipalLookupService;

    invoke-virtual {v0, p1}, Ljava/nio/file/attribute/UserPrincipalLookupService;->lookupPrincipalByName(Ljava/lang/String;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/attribute/UserPrincipal$VivifiedWrapper;->convert(Ljava/nio/file/attribute/UserPrincipal;)Lj$/nio/file/attribute/UserPrincipal;

    move-result-object p1

    return-object p1
.end method
