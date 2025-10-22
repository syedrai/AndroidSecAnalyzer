.class public Lj$/nio/file/attribute/FileAttributeConversions;
.super Ljava/lang/Object;
.source "FileAttributeConversions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/nio/file/attribute/FileAttribute;)Lj$/nio/file/attribute/FileAttribute;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Lj$/nio/file/attribute/FileAttribute<",
            "*>;"
        }
    .end annotation

    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_0
    invoke-interface {p0}, Ljava/nio/file/attribute/FileAttribute;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/FileAttributeConversions;->isPosixPermissionAttributes(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    new-instance v0, Lj$/nio/file/attribute/FileAttributeConversions$1;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/FileAttributeConversions$1;-><init>(Ljava/nio/file/attribute/FileAttribute;)V

    return-object v0

    .line 45
    :cond_1
    invoke-static {p0}, Lj$/nio/file/attribute/FileAttribute$VivifiedWrapper;->convert(Ljava/nio/file/attribute/FileAttribute;)Lj$/nio/file/attribute/FileAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/nio/file/attribute/FileTime;)Lj$/nio/file/attribute/FileTime;
    .locals 2

    .line 14
    if-nez p0, :cond_0

    .line 15
    const/4 p0, 0x0

    return-object p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/nio/file/attribute/FileTime;->fromMillis(J)Lj$/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/file/attribute/FileAttribute;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;"
        }
    .end annotation

    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_0
    invoke-interface {p0}, Lj$/nio/file/attribute/FileAttribute;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/FileAttributeConversions;->isPosixPermissionAttributes(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Lj$/nio/file/attribute/FileAttributeConversions$2;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/FileAttributeConversions$2;-><init>(Lj$/nio/file/attribute/FileAttribute;)V

    return-object v0

    .line 65
    :cond_1
    invoke-static {p0}, Lj$/nio/file/attribute/FileAttribute$Wrapper;->convert(Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/file/attribute/FileAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Lj$/nio/file/attribute/FileTime;)Ljava/nio/file/attribute/FileTime;
    .locals 2

    .line 21
    if-nez p0, :cond_0

    .line 22
    const/4 p0, 0x0

    return-object p0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lj$/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0
.end method

.method private static isPosixPermissionAttributes(Ljava/lang/Object;)Z
    .locals 1

    .line 69
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 70
    check-cast p0, Ljava/util/Set;

    .line 71
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 73
    instance-of v0, p0, Lj$/nio/file/attribute/PosixFilePermission;

    if-nez v0, :cond_0

    instance-of p0, p0, Ljava/nio/file/attribute/PosixFilePermission;

    if-eqz p0, :cond_1

    .line 75
    :cond_0
    const/4 p0, 0x1

    return p0

    .line 79
    :cond_1
    const/4 p0, 0x0

    return p0
.end method
