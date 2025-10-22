.class public final synthetic Lj$/nio/file/attribute/BasicFileAttributeView$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/nio/file/attribute/BasicFileAttributeView;


# instance fields
.field public final synthetic wrappedValue:Lj$/nio/file/attribute/BasicFileAttributeView;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/attribute/BasicFileAttributeView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/BasicFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/BasicFileAttributeView;

    return-void
.end method

.method public static synthetic convert(Lj$/nio/file/attribute/BasicFileAttributeView;)Ljava/nio/file/attribute/BasicFileAttributeView;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/BasicFileAttributeView$VivifiedWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/attribute/BasicFileAttributeView$VivifiedWrapper;

    iget-object p0, p0, Lj$/nio/file/attribute/BasicFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/BasicFileAttributeView;

    return-object p0

    :cond_1
    instance-of v0, p0, Lj$/nio/file/attribute/DosFileAttributeView;

    if-eqz v0, :cond_2

    check-cast p0, Lj$/nio/file/attribute/DosFileAttributeView;

    invoke-static {p0}, Lj$/nio/file/attribute/DosFileAttributeView$Wrapper;->convert(Lj$/nio/file/attribute/DosFileAttributeView;)Ljava/nio/file/attribute/DosFileAttributeView;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Lj$/nio/file/attribute/PosixFileAttributeView;

    if-eqz v0, :cond_3

    check-cast p0, Lj$/nio/file/attribute/PosixFileAttributeView;

    invoke-static {p0}, Lj$/nio/file/attribute/PosixFileAttributeView$Wrapper;->convert(Lj$/nio/file/attribute/PosixFileAttributeView;)Ljava/nio/file/attribute/PosixFileAttributeView;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Lj$/nio/file/attribute/BasicFileAttributeView$Wrapper;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/BasicFileAttributeView$Wrapper;-><init>(Lj$/nio/file/attribute/BasicFileAttributeView;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/BasicFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/BasicFileAttributeView;

    instance-of v1, p1, Lj$/nio/file/attribute/BasicFileAttributeView$Wrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/attribute/BasicFileAttributeView$Wrapper;

    iget-object p1, p1, Lj$/nio/file/attribute/BasicFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/BasicFileAttributeView;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/BasicFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/BasicFileAttributeView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/BasicFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/BasicFileAttributeView;

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributeView;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/BasicFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/BasicFileAttributeView;

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributeView;->readAttributes()Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/BasicFileAttributes$Wrapper;->convert(Lj$/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/BasicFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/BasicFileAttributeView;

    invoke-static {p1}, Lj$/nio/file/attribute/FileAttributeConversions;->convert(Ljava/nio/file/attribute/FileTime;)Lj$/nio/file/attribute/FileTime;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/attribute/FileAttributeConversions;->convert(Ljava/nio/file/attribute/FileTime;)Lj$/nio/file/attribute/FileTime;

    move-result-object p2

    invoke-static {p3}, Lj$/nio/file/attribute/FileAttributeConversions;->convert(Ljava/nio/file/attribute/FileTime;)Lj$/nio/file/attribute/FileTime;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lj$/nio/file/attribute/BasicFileAttributeView;->setTimes(Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;)V

    return-void
.end method
