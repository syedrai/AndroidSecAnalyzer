.class public final synthetic Lj$/nio/file/PathMatcher$VivifiedWrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/nio/file/PathMatcher;


# instance fields
.field public final synthetic wrappedValue:Ljava/nio/file/PathMatcher;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/PathMatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/PathMatcher$VivifiedWrapper;->wrappedValue:Ljava/nio/file/PathMatcher;

    return-void
.end method

.method public static synthetic convert(Ljava/nio/file/PathMatcher;)Lj$/nio/file/PathMatcher;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/PathMatcher$Wrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/PathMatcher$Wrapper;

    iget-object p0, p0, Lj$/nio/file/PathMatcher$Wrapper;->wrappedValue:Lj$/nio/file/PathMatcher;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/PathMatcher$VivifiedWrapper;

    invoke-direct {v0, p0}, Lj$/nio/file/PathMatcher$VivifiedWrapper;-><init>(Ljava/nio/file/PathMatcher;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/PathMatcher$VivifiedWrapper;->wrappedValue:Ljava/nio/file/PathMatcher;

    instance-of v1, p1, Lj$/nio/file/PathMatcher$VivifiedWrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/PathMatcher$VivifiedWrapper;

    iget-object p1, p1, Lj$/nio/file/PathMatcher$VivifiedWrapper;->wrappedValue:Ljava/nio/file/PathMatcher;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/PathMatcher$VivifiedWrapper;->wrappedValue:Ljava/nio/file/PathMatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic matches(Lj$/nio/file/Path;)Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/PathMatcher$VivifiedWrapper;->wrappedValue:Ljava/nio/file/PathMatcher;

    invoke-static {p1}, Lj$/nio/file/Path$Wrapper;->convert(Lj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method
