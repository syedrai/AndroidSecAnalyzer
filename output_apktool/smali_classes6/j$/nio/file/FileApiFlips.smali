.class public Lj$/nio/file/FileApiFlips;
.super Ljava/lang/Object;
.source "FileApiFlips.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exceptionFileTime(Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1

    .line 127
    const-string v0, "java.nio.file.attribute.FileTime"

    invoke-static {v0, p0}, Lj$/util/ConversionRuntimeException;->exception(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static exceptionOpenOption(Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1

    .line 90
    const-string v0, "java.nio.file.OpenOption"

    invoke-static {v0, p0}, Lj$/util/ConversionRuntimeException;->exception(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static exceptionPosixPermission(Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1

    .line 164
    const-string v0, "java.nio.file.attribute.PosixFilePermission"

    invoke-static {v0, p0}, Lj$/util/ConversionRuntimeException;->exception(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static exceptionWatchEvent(Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1

    .line 201
    const-string v0, "java.nio.file.WatchEvent"

    invoke-static {v0, p0}, Lj$/util/ConversionRuntimeException;->exception(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static flipFileAttributeView(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_0
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributeView;

    if-ne p0, v0, :cond_1

    .line 49
    const-class p0, Lj$/nio/file/attribute/BasicFileAttributeView;

    return-object p0

    .line 51
    :cond_1
    const-class v0, Lj$/nio/file/attribute/BasicFileAttributeView;

    if-ne p0, v0, :cond_2

    .line 52
    const-class p0, Ljava/nio/file/attribute/BasicFileAttributeView;

    return-object p0

    .line 54
    :cond_2
    const-class v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    if-ne p0, v0, :cond_3

    .line 55
    const-class p0, Lj$/nio/file/attribute/PosixFileAttributeView;

    return-object p0

    .line 57
    :cond_3
    const-class v0, Lj$/nio/file/attribute/PosixFileAttributeView;

    if-ne p0, v0, :cond_4

    .line 58
    const-class p0, Ljava/nio/file/attribute/PosixFileAttributeView;

    return-object p0

    .line 60
    :cond_4
    const-class v0, Ljava/nio/file/attribute/FileOwnerAttributeView;

    if-ne p0, v0, :cond_5

    .line 61
    const-class p0, Lj$/nio/file/attribute/FileOwnerAttributeView;

    return-object p0

    .line 63
    :cond_5
    const-class v0, Lj$/nio/file/attribute/FileOwnerAttributeView;

    if-ne p0, v0, :cond_6

    .line 64
    const-class p0, Ljava/nio/file/attribute/FileOwnerAttributeView;

    return-object p0

    .line 68
    :cond_6
    const-class v0, Lj$/nio/file/attribute/DosFileAttributeView;

    if-ne p0, v0, :cond_7

    .line 69
    const-class p0, Ljava/nio/file/attribute/DosFileAttributeView;

    return-object p0

    .line 71
    :cond_7
    const-class v0, Ljava/nio/file/attribute/DosFileAttributeView;

    if-ne p0, v0, :cond_8

    .line 72
    const-class p0, Lj$/nio/file/attribute/DosFileAttributeView;

    return-object p0

    .line 74
    :cond_8
    const-class v0, Lj$/nio/file/attribute/UserDefinedFileAttributeView;

    if-ne p0, v0, :cond_9

    .line 75
    const-class p0, Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    return-object p0

    .line 77
    :cond_9
    const-class v0, Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    if-ne p0, v0, :cond_a

    .line 78
    const-class p0, Lj$/nio/file/attribute/UserDefinedFileAttributeView;

    return-object p0

    .line 80
    :cond_a
    const-class v0, Lj$/nio/file/attribute/AclFileAttributeView;

    if-ne p0, v0, :cond_b

    .line 81
    const-class p0, Ljava/nio/file/attribute/AclFileAttributeView;

    return-object p0

    .line 83
    :cond_b
    const-class v0, Ljava/nio/file/attribute/AclFileAttributeView;

    if-ne p0, v0, :cond_c

    .line 84
    const-class p0, Lj$/nio/file/attribute/AclFileAttributeView;

    return-object p0

    .line 86
    :cond_c
    const-string v0, "java.nio.file.attribute.FileAttributeView"

    invoke-static {v0, p0}, Lj$/util/ConversionRuntimeException;->exception(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static flipFileAttributes(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 20
    if-nez p0, :cond_0

    .line 21
    const/4 p0, 0x0

    return-object p0

    .line 23
    :cond_0
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributes;

    if-ne p0, v0, :cond_1

    .line 24
    const-class p0, Lj$/nio/file/attribute/BasicFileAttributes;

    return-object p0

    .line 26
    :cond_1
    const-class v0, Lj$/nio/file/attribute/BasicFileAttributes;

    if-ne p0, v0, :cond_2

    .line 27
    const-class p0, Ljava/nio/file/attribute/BasicFileAttributes;

    return-object p0

    .line 29
    :cond_2
    const-class v0, Ljava/nio/file/attribute/PosixFileAttributes;

    if-ne p0, v0, :cond_3

    .line 30
    const-class p0, Lj$/nio/file/attribute/PosixFileAttributes;

    return-object p0

    .line 32
    :cond_3
    const-class v0, Lj$/nio/file/attribute/PosixFileAttributes;

    if-ne p0, v0, :cond_4

    .line 33
    const-class p0, Ljava/nio/file/attribute/PosixFileAttributes;

    return-object p0

    .line 35
    :cond_4
    const-class v0, Lj$/nio/file/attribute/DosFileAttributes;

    if-ne p0, v0, :cond_5

    .line 36
    const-class p0, Ljava/nio/file/attribute/DosFileAttributes;

    return-object p0

    .line 38
    :cond_5
    const-class v0, Ljava/nio/file/attribute/DosFileAttributes;

    if-ne p0, v0, :cond_6

    .line 39
    const-class p0, Lj$/nio/file/attribute/DosFileAttributes;

    return-object p0

    .line 41
    :cond_6
    const-string v0, "java.nio.file.attribute.BasicFileAttributes"

    invoke-static {v0, p0}, Lj$/util/ConversionRuntimeException;->exception(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static flipMapWithMaybeFileTimeValues(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 153
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 156
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 158
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lj$/nio/file/FileApiFlips;->flipMaybeFileTime(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    goto :goto_0

    .line 160
    :cond_1
    return-object v0

    .line 154
    :cond_2
    :goto_1
    return-object p0
.end method

.method public static flipMaybeFileTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 131
    instance-of v0, p0, Ljava/nio/file/attribute/FileTime;

    if-eqz v0, :cond_0

    .line 134
    :try_start_0
    check-cast p0, Ljava/nio/file/attribute/FileTime;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    nop

    .line 138
    invoke-static {p0}, Lj$/nio/file/attribute/FileAttributeConversions;->convert(Ljava/nio/file/attribute/FileTime;)Lj$/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0

    .line 135
    :catch_0
    move-exception p0

    .line 136
    invoke-static {p0}, Lj$/nio/file/FileApiFlips;->exceptionFileTime(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 140
    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/FileTime;

    if-eqz v0, :cond_1

    .line 143
    :try_start_1
    check-cast p0, Lj$/nio/file/attribute/FileTime;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    nop

    .line 147
    invoke-static {p0}, Lj$/nio/file/attribute/FileAttributeConversions;->convert(Lj$/nio/file/attribute/FileTime;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0

    .line 144
    :catch_1
    move-exception p0

    .line 145
    invoke-static {p0}, Lj$/nio/file/FileApiFlips;->exceptionFileTime(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 149
    :cond_1
    return-object p0
.end method

.method public static flipOpenOptionSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;)",
            "Ljava/util/Set<",
            "*>;"
        }
    .end annotation

    .line 94
    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 97
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 98
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 99
    instance-of v2, v1, Lj$/nio/file/OpenOption;

    if-eqz v2, :cond_2

    .line 100
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 103
    :try_start_0
    check-cast v1, Lj$/nio/file/OpenOption;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    nop

    .line 107
    invoke-static {v1}, Lj$/nio/file/OpenOption$Wrapper;->convert(Lj$/nio/file/OpenOption;)Ljava/nio/file/OpenOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    goto :goto_0

    .line 104
    :catch_0
    move-exception p0

    .line 105
    invoke-static {p0}, Lj$/nio/file/FileApiFlips;->exceptionOpenOption(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 109
    :cond_1
    return-object v0

    .line 111
    :cond_2
    instance-of v2, v1, Ljava/nio/file/OpenOption;

    if-eqz v2, :cond_4

    .line 112
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 115
    :try_start_1
    check-cast v1, Ljava/nio/file/OpenOption;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    nop

    .line 119
    invoke-static {v1}, Lj$/nio/file/OpenOption$VivifiedWrapper;->convert(Ljava/nio/file/OpenOption;)Lj$/nio/file/OpenOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    goto :goto_1

    .line 116
    :catch_1
    move-exception p0

    .line 117
    invoke-static {p0}, Lj$/nio/file/FileApiFlips;->exceptionOpenOption(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 121
    :cond_3
    return-object v0

    .line 123
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lj$/nio/file/FileApiFlips;->exceptionOpenOption(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 95
    :cond_5
    :goto_2
    return-object p0
.end method

.method public static flipPosixPermissionSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;)",
            "Ljava/util/Set<",
            "*>;"
        }
    .end annotation

    .line 168
    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 171
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 172
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 173
    instance-of v2, v1, Lj$/nio/file/attribute/PosixFilePermission;

    if-eqz v2, :cond_2

    .line 174
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 177
    :try_start_0
    check-cast v1, Lj$/nio/file/attribute/PosixFilePermission;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    nop

    .line 181
    invoke-static {v1}, Lj$/nio/file/attribute/PosixFilePermission$EnumConversion;->convert(Lj$/nio/file/attribute/PosixFilePermission;)Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 182
    goto :goto_0

    .line 178
    :catch_0
    move-exception p0

    .line 179
    invoke-static {p0}, Lj$/nio/file/FileApiFlips;->exceptionPosixPermission(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 183
    :cond_1
    return-object v0

    .line 185
    :cond_2
    instance-of v2, v1, Ljava/nio/file/attribute/PosixFilePermission;

    if-eqz v2, :cond_4

    .line 186
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 189
    :try_start_1
    check-cast v1, Ljava/nio/file/attribute/PosixFilePermission;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    nop

    .line 193
    invoke-static {v1}, Lj$/nio/file/attribute/PosixFilePermission$EnumConversion;->convert(Ljava/nio/file/attribute/PosixFilePermission;)Lj$/nio/file/attribute/PosixFilePermission;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 194
    goto :goto_1

    .line 190
    :catch_1
    move-exception p0

    .line 191
    invoke-static {p0}, Lj$/nio/file/FileApiFlips;->exceptionPosixPermission(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 195
    :cond_3
    return-object v0

    .line 197
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lj$/nio/file/FileApiFlips;->exceptionPosixPermission(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 169
    :cond_5
    :goto_2
    return-object p0
.end method

.method public static flipWatchEventList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 205
    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 208
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 210
    instance-of v2, v1, Lj$/nio/file/WatchEvent;

    if-eqz v2, :cond_2

    .line 211
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 214
    :try_start_0
    check-cast v1, Lj$/nio/file/WatchEvent;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    nop

    .line 218
    invoke-static {v1}, Lj$/nio/file/WatchEvent$Wrapper;->convert(Lj$/nio/file/WatchEvent;)Ljava/nio/file/WatchEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    goto :goto_0

    .line 215
    :catch_0
    move-exception p0

    .line 216
    invoke-static {p0}, Lj$/nio/file/FileApiFlips;->exceptionWatchEvent(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 220
    :cond_1
    return-object v0

    .line 222
    :cond_2
    instance-of v2, v1, Ljava/nio/file/WatchEvent;

    if-eqz v2, :cond_4

    .line 223
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 226
    :try_start_1
    check-cast v1, Ljava/nio/file/WatchEvent;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 229
    nop

    .line 230
    invoke-static {v1}, Lj$/nio/file/WatchEvent$VivifiedWrapper;->convert(Ljava/nio/file/WatchEvent;)Lj$/nio/file/WatchEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    goto :goto_1

    .line 227
    :catch_1
    move-exception p0

    .line 228
    invoke-static {p0}, Lj$/nio/file/FileApiFlips;->exceptionWatchEvent(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 232
    :cond_3
    return-object v0

    .line 234
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lj$/nio/file/FileApiFlips;->exceptionWatchEvent(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 206
    :cond_5
    :goto_2
    return-object p0
.end method
