.class public Lj$/nio/channels/DesugarChannels;
.super Ljava/lang/Object;
.source "DesugarChannels.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertMaybeLegacyFileChannelFromLibrary(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;
    .locals 1

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 p0, 0x0

    return-object p0

    .line 27
    :cond_0
    sget-boolean v0, Lj$/adapter/AndroidVersionTest;->is24OrAbove:Z

    if-eqz v0, :cond_1

    .line 28
    return-object p0

    .line 30
    :cond_1
    invoke-static {p0}, Lj$/desugar/sun/nio/fs/DesugarFileChannel;->wrap(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method

.method public static varargs open(Lj$/nio/file/Path;Ljava/util/Set;[Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Ljava/util/Set<",
            "+",
            "Lj$/nio/file/OpenOption;",
            ">;[",
            "Lj$/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/channels/FileChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    sget-boolean v0, Lj$/adapter/AndroidVersionTest;->is26OrAbove:Z

    if-eqz v0, :cond_0

    .line 45
    invoke-static {p0, p1, p2}, Lj$/nio/channels/DesugarChannels$$ExternalSyntheticAPIConversion1;->m(Lj$/nio/file/Path;Ljava/util/Set;[Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0

    .line 47
    :cond_0
    invoke-static {p0, p1, p2}, Lj$/desugar/sun/nio/fs/DesugarFileChannel;->openEmulatedFileChannel(Lj$/nio/file/Path;Ljava/util/Set;[Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method

.method public static varargs open(Lj$/nio/file/Path;[Lj$/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 36
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 37
    const/4 p1, 0x0

    new-array p1, p1, [Lj$/nio/file/attribute/FileAttribute;

    invoke-static {p0, v0, p1}, Lj$/nio/channels/DesugarChannels;->open(Lj$/nio/file/Path;Ljava/util/Set;[Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method
