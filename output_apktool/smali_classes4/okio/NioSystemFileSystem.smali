.class public Lokio/NioSystemFileSystem;
.super Lokio/JvmSystemFileSystem;
.source "NioSystemFileSystem.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNioSystemFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NioSystemFileSystem.kt\nokio/NioSystemFileSystem\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,92:1\n1#2:93\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0010\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0005*\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000e\u001a\u00020\rH\u0004\u00a2\u0006\u0004\u0008\u000b\u0010\u000fJ\u001f\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lokio/NioSystemFileSystem;",
        "Lokio/JvmSystemFileSystem;",
        "<init>",
        "()V",
        "j$/nio/file/attribute/FileTime",
        "",
        "zeroToNull",
        "(Lj$/nio/file/attribute/FileTime;)Ljava/lang/Long;",
        "Lokio/Path;",
        "path",
        "Lokio/FileMetadata;",
        "metadataOrNull",
        "(Lokio/Path;)Lokio/FileMetadata;",
        "j$/nio/file/Path",
        "nioPath",
        "(Lj$/nio/file/Path;)Lokio/FileMetadata;",
        "source",
        "target",
        "",
        "atomicMove",
        "(Lokio/Path;Lokio/Path;)V",
        "createSymlink",
        "",
        "toString",
        "()Ljava/lang/String;",
        "third_party.java_src.okio_okio-jvm"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lokio/JvmSystemFileSystem;-><init>()V

    return-void
.end method

.method private final zeroToNull(Lj$/nio/file/attribute/FileTime;)Ljava/lang/Long;
    .locals 7
    .param p1, "$this$zeroToNull"    # Lj$/nio/file/attribute/FileTime;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$zeroToNull"
        }
    .end annotation

    .line 73
    invoke-virtual {p1}, Lj$/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 93
    .local v1, "it":J
    const/4 v3, 0x0

    .line 73
    .local v3, "$i$a$-takeIf-NioSystemFileSystem$zeroToNull$1":I
    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .end local v1    # "it":J
    .end local v3    # "$i$a$-takeIf-NioSystemFileSystem$zeroToNull$1":I
    :goto_0
    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public atomicMove(Lokio/Path;Lokio/Path;)V
    .locals 5
    .param p1, "source"    # Lokio/Path;
    .param p2, "target"    # Lokio/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "target"
        }
    .end annotation

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    nop

    .line 78
    :try_start_0
    invoke-virtual {p1}, Lokio/Path;->toNioPath()Lj$/nio/file/Path;

    move-result-object v0

    invoke-virtual {p2}, Lokio/Path;->toNioPath()Lj$/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lj$/nio/file/CopyOption;

    sget-object v3, Lj$/nio/file/StandardCopyOption;->ATOMIC_MOVE:Lj$/nio/file/StandardCopyOption;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lj$/nio/file/StandardCopyOption;->REPLACE_EXISTING:Lj$/nio/file/StandardCopyOption;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lj$/nio/file/Files;->move(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)Lj$/nio/file/Path;
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "atomic move not supported"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v0

    .line 80
    .local v0, "e":Ljava/nio/file/NoSuchFileException;
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/nio/file/NoSuchFileException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createSymlink(Lokio/Path;Lokio/Path;)V
    .locals 3
    .param p1, "source"    # Lokio/Path;
    .param p2, "target"    # Lokio/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "target"
        }
    .end annotation

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lokio/Path;->toNioPath()Lj$/nio/file/Path;

    move-result-object v0

    invoke-virtual {p2}, Lokio/Path;->toNioPath()Lj$/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lj$/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1, v2}, Lj$/nio/file/Files;->createSymbolicLink(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;

    .line 88
    return-void
.end method

.method protected final metadataOrNull(Lj$/nio/file/Path;)Lokio/FileMetadata;
    .locals 14
    .param p1, "nioPath"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nioPath"
        }
    .end annotation

    const-string v0, "nioPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    nop

    .line 41
    nop

    .line 42
    const/4 v1, 0x0

    :try_start_0
    const-class v0, Lj$/nio/file/attribute/BasicFileAttributes;

    .line 43
    const/4 v2, 0x1

    new-array v3, v2, [Lj$/nio/file/LinkOption;

    sget-object v4, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 40
    invoke-static {p1, v0, v3}, Lj$/nio/file/Files;->readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/file/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    nop

    .line 51
    .local v0, "attributes":Lj$/nio/file/attribute/BasicFileAttributes;
    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    invoke-static {p1}, Lj$/nio/file/Files;->readSymbolicLink(Lj$/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object v3

    goto :goto_0

    .line 54
    :cond_0
    move-object v3, v1

    .line 51
    :goto_0
    nop

    .line 57
    .local v3, "symlinkTarget":Lj$/nio/file/Path;
    new-instance v6, Lokio/FileMetadata;

    .line 58
    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v7

    .line 59
    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v8

    .line 60
    if-eqz v3, :cond_1

    sget-object v4, Lokio/Path;->Companion:Lokio/Path$Companion;

    invoke-static {v4, v3, v5, v2, v1}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Lj$/nio/file/Path;ZILjava/lang/Object;)Lokio/Path;

    move-result-object v2

    move-object v9, v2

    goto :goto_1

    :cond_1
    move-object v9, v1

    .line 61
    :goto_1
    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 62
    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->creationTime()Lj$/nio/file/attribute/FileTime;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v2}, Lokio/NioSystemFileSystem;->zeroToNull(Lj$/nio/file/attribute/FileTime;)Ljava/lang/Long;

    move-result-object v2

    move-object v11, v2

    goto :goto_2

    :cond_2
    move-object v11, v1

    .line 63
    :goto_2
    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Lj$/nio/file/attribute/FileTime;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v2}, Lokio/NioSystemFileSystem;->zeroToNull(Lj$/nio/file/attribute/FileTime;)Ljava/lang/Long;

    move-result-object v2

    move-object v12, v2

    goto :goto_3

    :cond_3
    move-object v12, v1

    .line 64
    :goto_3
    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Lj$/nio/file/attribute/FileTime;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v2}, Lokio/NioSystemFileSystem;->zeroToNull(Lj$/nio/file/attribute/FileTime;)Ljava/lang/Long;

    move-result-object v1

    :cond_4
    move-object v13, v1

    .line 57
    invoke-direct/range {v6 .. v13}, Lokio/FileMetadata;-><init>(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v6

    .line 47
    .end local v0    # "attributes":Lj$/nio/file/attribute/BasicFileAttributes;
    .end local v3    # "symlinkTarget":Lj$/nio/file/Path;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "<unused var>":Ljava/nio/file/FileSystemException;
    return-object v1

    .line 45
    .end local v0    # "<unused var>":Ljava/nio/file/FileSystemException;
    :catch_1
    move-exception v0

    .line 46
    .local v0, "<unused var>":Ljava/nio/file/NoSuchFileException;
    return-object v1
.end method

.method public metadataOrNull(Lokio/Path;)Lokio/FileMetadata;
    .locals 1
    .param p1, "path"    # Lokio/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lokio/Path;->toNioPath()Lj$/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokio/NioSystemFileSystem;->metadataOrNull(Lj$/nio/file/Path;)Lokio/FileMetadata;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 90
    const-string v0, "NioSystemFileSystem"

    return-object v0
.end method
