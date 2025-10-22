.class Lj$/nio/file/TempFileHelper;
.super Ljava/lang/Object;
.source "TempFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/nio/file/TempFileHelper$PosixPermissions;
    }
.end annotation


# static fields
.field private static final isPosix:Z

.field private static final random:Ljava/security/SecureRandom;

.field private static final tmpdir:Lj$/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    nop

    .line 49
    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Lj$/sun/security/action/GetPropertyAction;->privilegedGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lj$/nio/file/Path$-CC;->of(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object v0

    sput-object v0, Lj$/nio/file/TempFileHelper;->tmpdir:Lj$/nio/file/Path;

    .line 52
    invoke-static {}, Lj$/nio/file/FileSystems;->getDefault()Lj$/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lj$/nio/file/FileSystem;->supportedFileAttributeViews()Ljava/util/Set;

    move-result-object v0

    const-string v1, "posix"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lj$/nio/file/TempFileHelper;->isPosix:Z

    .line 55
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lj$/nio/file/TempFileHelper;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static create(Lj$/nio/file/Path;Ljava/lang/String;Ljava/lang/String;Z[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;
    .locals 6
    .param p0, "dir"    # Lj$/nio/file/Path;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "createDirectory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z[",
            "Lj$/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Lj$/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    .local p4, "attrs":[Lj$/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    if-nez p1, :cond_0

    .line 87
    const-string p1, ""

    .line 88
    :cond_0
    if-nez p2, :cond_2

    .line 89
    if-eqz p3, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ".tmp"

    :goto_0
    move-object p2, v0

    .line 90
    :cond_2
    if-nez p0, :cond_3

    .line 91
    sget-object p0, Lj$/nio/file/TempFileHelper;->tmpdir:Lj$/nio/file/Path;

    .line 95
    :cond_3
    sget-boolean v0, Lj$/nio/file/TempFileHelper;->isPosix:Z

    if-eqz v0, :cond_9

    invoke-interface {p0}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/FileSystem;

    move-result-object v0

    invoke-static {}, Lj$/nio/file/FileSystems;->getDefault()Lj$/nio/file/FileSystem;

    move-result-object v1

    if-ne v0, v1, :cond_9

    .line 96
    array-length v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 98
    new-array p4, v2, [Lj$/nio/file/attribute/FileAttribute;

    .line 99
    if-eqz p3, :cond_4

    sget-object v0, Lj$/nio/file/TempFileHelper$PosixPermissions;->dirPermissions:Lj$/nio/file/attribute/FileAttribute;

    goto :goto_1

    .line 100
    :cond_4
    sget-object v0, Lj$/nio/file/TempFileHelper$PosixPermissions;->filePermissions:Lj$/nio/file/attribute/FileAttribute;

    :goto_1
    aput-object v0, p4, v1

    goto :goto_5

    .line 103
    :cond_5
    const/4 v0, 0x0

    .line 104
    .local v0, "hasPermissions":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, p4

    if-ge v3, v4, :cond_7

    .line 105
    aget-object v4, p4, v3

    invoke-interface {v4}, Lj$/nio/file/attribute/FileAttribute;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "posix:permissions"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 106
    const/4 v0, 0x1

    .line 107
    goto :goto_3

    .line 104
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 110
    .end local v3    # "i":I
    :cond_7
    :goto_3
    if-nez v0, :cond_9

    .line 111
    array-length v3, p4

    add-int/2addr v3, v2

    new-array v3, v3, [Lj$/nio/file/attribute/FileAttribute;

    .line 112
    .local v3, "copy":[Lj$/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    array-length v4, p4

    invoke-static {p4, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    move-object p4, v3

    .line 114
    array-length v1, p4

    sub-int/2addr v1, v2

    if-eqz p3, :cond_8

    .line 115
    sget-object v2, Lj$/nio/file/TempFileHelper$PosixPermissions;->dirPermissions:Lj$/nio/file/attribute/FileAttribute;

    goto :goto_4

    .line 116
    :cond_8
    sget-object v2, Lj$/nio/file/TempFileHelper$PosixPermissions;->filePermissions:Lj$/nio/file/attribute/FileAttribute;

    :goto_4
    aput-object v2, p4, v1

    .line 122
    .end local v0    # "hasPermissions":Z
    .end local v3    # "copy":[Lj$/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    :cond_9
    :goto_5
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 126
    .local v0, "sm":Ljava/lang/SecurityManager;
    :goto_6
    :try_start_0
    invoke-static {p1, p2, p0}, Lj$/nio/file/TempFileHelper;->generatePath(Ljava/lang/String;Ljava/lang/String;Lj$/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object v1
    :try_end_0
    .catch Ljava/nio/file/InvalidPathException; {:try_start_0 .. :try_end_0} :catch_2

    .line 132
    .local v1, "f":Lj$/nio/file/Path;
    nop

    .line 134
    if-eqz p3, :cond_a

    .line 135
    :try_start_1
    invoke-static {v1, p4}, Lj$/nio/file/Files;->createDirectory(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;

    move-result-object v2

    return-object v2

    .line 137
    :cond_a
    invoke-static {v1, p4}, Lj$/nio/file/Files;->createFile(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 144
    :catch_0
    move-exception v2

    .line 147
    .end local v1    # "f":Lj$/nio/file/Path;
    goto :goto_6

    .line 139
    .restart local v1    # "f":Lj$/nio/file/Path;
    :catch_1
    move-exception v2

    .line 141
    .local v2, "e":Ljava/lang/SecurityException;
    sget-object v3, Lj$/nio/file/TempFileHelper;->tmpdir:Lj$/nio/file/Path;

    if-ne p0, v3, :cond_b

    if-eqz v0, :cond_b

    .line 142
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Unable to create temporary file or directory"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 143
    :cond_b
    throw v2

    .line 127
    .end local v1    # "f":Lj$/nio/file/Path;
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .line 129
    .local v1, "e":Ljava/nio/file/InvalidPathException;
    if-eqz v0, :cond_c

    .line 130
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid prefix or suffix"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    :cond_c
    throw v1
.end method

.method static createTempDirectory(Lj$/nio/file/Path;Ljava/lang/String;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;
    .locals 2
    .param p0, "dir"    # Lj$/nio/file/Path;
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Ljava/lang/String;",
            "[",
            "Lj$/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Lj$/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    .local p2, "attrs":[Lj$/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Lj$/nio/file/TempFileHelper;->create(Lj$/nio/file/Path;Ljava/lang/String;Ljava/lang/String;Z[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method static createTempFile(Lj$/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;
    .locals 1
    .param p0, "dir"    # Lj$/nio/file/Path;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Lj$/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Lj$/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    .local p3, "attrs":[Lj$/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lj$/nio/file/TempFileHelper;->create(Lj$/nio/file/Path;Ljava/lang/String;Ljava/lang/String;Z[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method private static generatePath(Ljava/lang/String;Ljava/lang/String;Lj$/nio/file/Path;)Lj$/nio/file/Path;
    .locals 6
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .param p2, "dir"    # Lj$/nio/file/Path;

    .line 57
    sget-object v0, Lj$/nio/file/TempFileHelper;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 58
    .local v0, "n":J
    invoke-static {v0, v1}, Lj$/nio/file/TempFileHelper$$ExternalSyntheticBackport2;->m(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "s":Ljava/lang/String;
    invoke-interface {p2}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/FileSystem;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lj$/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object v3

    .line 61
    .local v3, "name":Lj$/nio/file/Path;
    invoke-interface {v3}, Lj$/nio/file/Path;->getParent()Lj$/nio/file/Path;

    move-result-object v4

    if-nez v4, :cond_0

    .line 63
    invoke-interface {p2, v3}, Lj$/nio/file/Path;->resolve(Lj$/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object v4

    return-object v4

    .line 62
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid prefix or suffix"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
