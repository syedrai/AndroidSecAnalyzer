.class public final Lj$/nio/file/attribute/PosixFilePermissions;
.super Ljava/lang/Object;
.source "PosixFilePermissions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asFileAttribute(Ljava/util/Set;)Lj$/nio/file/attribute/FileAttribute;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lj$/nio/file/attribute/PosixFilePermission;",
            ">;)",
            "Lj$/nio/file/attribute/FileAttribute<",
            "Ljava/util/Set<",
            "Lj$/nio/file/attribute/PosixFilePermission;",
            ">;>;"
        }
    .end annotation

    .line 163
    .local p0, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 164
    .end local p0    # "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    .local v0, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/nio/file/attribute/PosixFilePermission;

    .line 165
    .local v1, "p":Lj$/nio/file/attribute/PosixFilePermission;
    if-eqz v1, :cond_0

    .line 167
    .end local v1    # "p":Lj$/nio/file/attribute/PosixFilePermission;
    goto :goto_0

    .line 166
    .restart local v1    # "p":Lj$/nio/file/attribute/PosixFilePermission;
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 168
    .end local v1    # "p":Lj$/nio/file/attribute/PosixFilePermission;
    :cond_1
    move-object p0, v0

    .line 169
    .local p0, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    new-instance v1, Lj$/nio/file/attribute/PosixFilePermissions$1;

    invoke-direct {v1, p0}, Lj$/nio/file/attribute/PosixFilePermissions$1;-><init>(Ljava/util/Set;)V

    return-object v1
.end method

.method public static fromString(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p0, "perms"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lj$/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_9

    .line 129
    const-class v0, Lj$/nio/file/attribute/PosixFilePermission;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 130
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lj$/nio/file/attribute/PosixFilePermissions;->isR(C)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lj$/nio/file/attribute/PosixFilePermission;->OWNER_READ:Lj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lj$/nio/file/attribute/PosixFilePermissions;->isW(C)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lj$/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Lj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lj$/nio/file/attribute/PosixFilePermissions;->isX(C)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lj$/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Lj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lj$/nio/file/attribute/PosixFilePermissions;->isR(C)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lj$/nio/file/attribute/PosixFilePermission;->GROUP_READ:Lj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lj$/nio/file/attribute/PosixFilePermissions;->isW(C)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lj$/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Lj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_4
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lj$/nio/file/attribute/PosixFilePermissions;->isX(C)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lj$/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Lj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_5
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lj$/nio/file/attribute/PosixFilePermissions;->isR(C)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lj$/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Lj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_6
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lj$/nio/file/attribute/PosixFilePermissions;->isW(C)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lj$/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Lj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_7
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lj$/nio/file/attribute/PosixFilePermissions;->isX(C)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lj$/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Lj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_8
    return-object v0

    .line 128
    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isR(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 91
    const/16 v0, 0x72

    invoke-static {p0, v0}, Lj$/nio/file/attribute/PosixFilePermissions;->isSet(CC)Z

    move-result v0

    return v0
.end method

.method private static isSet(CC)Z
    .locals 2
    .param p0, "c"    # C
    .param p1, "setValue"    # C

    .line 85
    if-ne p0, p1, :cond_0

    .line 86
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_0
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_1

    .line 88
    const/4 v0, 0x0

    return v0

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isW(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 92
    const/16 v0, 0x77

    invoke-static {p0, v0}, Lj$/nio/file/attribute/PosixFilePermissions;->isSet(CC)Z

    move-result v0

    return v0
.end method

.method private static isX(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 93
    const/16 v0, 0x78

    invoke-static {p0, v0}, Lj$/nio/file/attribute/PosixFilePermissions;->isSet(CC)Z

    move-result v0

    return v0
.end method

.method public static toString(Ljava/util/Set;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lj$/nio/file/attribute/PosixFilePermission;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 74
    .local p0, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 75
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lj$/nio/file/attribute/PosixFilePermission;->OWNER_READ:Lj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Lj$/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Lj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Lj$/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Lj$/nio/file/attribute/PosixFilePermission;

    .line 76
    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 75
    invoke-static {v0, v1, v2, v3}, Lj$/nio/file/attribute/PosixFilePermissions;->writeBits(Ljava/lang/StringBuilder;ZZZ)V

    .line 77
    sget-object v1, Lj$/nio/file/attribute/PosixFilePermission;->GROUP_READ:Lj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Lj$/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Lj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Lj$/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Lj$/nio/file/attribute/PosixFilePermission;

    .line 78
    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 77
    invoke-static {v0, v1, v2, v3}, Lj$/nio/file/attribute/PosixFilePermissions;->writeBits(Ljava/lang/StringBuilder;ZZZ)V

    .line 79
    sget-object v1, Lj$/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Lj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Lj$/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Lj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Lj$/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Lj$/nio/file/attribute/PosixFilePermission;

    .line 80
    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 79
    invoke-static {v0, v1, v2, v3}, Lj$/nio/file/attribute/PosixFilePermissions;->writeBits(Ljava/lang/StringBuilder;ZZZ)V

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static writeBits(Ljava/lang/StringBuilder;ZZZ)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "r"    # Z
    .param p2, "w"    # Z
    .param p3, "x"    # Z

    .line 43
    const/16 v0, 0x2d

    if-eqz p1, :cond_0

    .line 44
    const/16 v1, 0x72

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    :goto_0
    if-eqz p2, :cond_1

    .line 49
    const/16 v1, 0x77

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    :goto_1
    if-eqz p3, :cond_2

    .line 54
    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 56
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    :goto_2
    return-void
.end method
