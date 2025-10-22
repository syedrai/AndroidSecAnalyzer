.class public Lj$/nio/file/WatchEventKindConversions;
.super Ljava/lang/Object;
.source "WatchEventKindConversions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/nio/file/WatchEvent$Kind;)Lj$/nio/file/WatchEvent$Kind;
    .locals 1

    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_0
    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    if-ne p0, v0, :cond_1

    .line 38
    sget-object p0, Lj$/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Lj$/nio/file/WatchEvent$Kind;

    return-object p0

    .line 40
    :cond_1
    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    if-ne p0, v0, :cond_2

    .line 41
    sget-object p0, Lj$/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Lj$/nio/file/WatchEvent$Kind;

    return-object p0

    .line 43
    :cond_2
    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    if-ne p0, v0, :cond_3

    .line 44
    sget-object p0, Lj$/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Lj$/nio/file/WatchEvent$Kind;

    return-object p0

    .line 46
    :cond_3
    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    if-ne p0, v0, :cond_4

    .line 47
    sget-object p0, Lj$/nio/file/StandardWatchEventKinds;->OVERFLOW:Lj$/nio/file/WatchEvent$Kind;

    return-object p0

    .line 49
    :cond_4
    invoke-static {p0}, Lj$/nio/file/WatchEvent$Kind$VivifiedWrapper;->convert(Ljava/nio/file/WatchEvent$Kind;)Lj$/nio/file/WatchEvent$Kind;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Lj$/nio/file/WatchEvent$Kind;)Ljava/nio/file/WatchEvent$Kind;
    .locals 1

    .line 15
    if-nez p0, :cond_0

    .line 16
    const/4 p0, 0x0

    return-object p0

    .line 18
    :cond_0
    sget-object v0, Lj$/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Lj$/nio/file/WatchEvent$Kind;

    if-ne p0, v0, :cond_1

    .line 19
    sget-object p0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    return-object p0

    .line 21
    :cond_1
    sget-object v0, Lj$/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Lj$/nio/file/WatchEvent$Kind;

    if-ne p0, v0, :cond_2

    .line 22
    sget-object p0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    return-object p0

    .line 24
    :cond_2
    sget-object v0, Lj$/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Lj$/nio/file/WatchEvent$Kind;

    if-ne p0, v0, :cond_3

    .line 25
    sget-object p0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    return-object p0

    .line 27
    :cond_3
    sget-object v0, Lj$/nio/file/StandardWatchEventKinds;->OVERFLOW:Lj$/nio/file/WatchEvent$Kind;

    if-ne p0, v0, :cond_4

    .line 28
    sget-object p0, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    return-object p0

    .line 30
    :cond_4
    invoke-static {p0}, Lj$/nio/file/WatchEvent$Kind$Wrapper;->convert(Lj$/nio/file/WatchEvent$Kind;)Ljava/nio/file/WatchEvent$Kind;

    move-result-object p0

    return-object p0
.end method
