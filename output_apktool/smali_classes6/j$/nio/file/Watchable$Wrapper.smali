.class public final synthetic Lj$/nio/file/Watchable$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/nio/file/Watchable;


# instance fields
.field public final synthetic wrappedValue:Lj$/nio/file/Watchable;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/Watchable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/Watchable$Wrapper;->wrappedValue:Lj$/nio/file/Watchable;

    return-void
.end method

.method public static synthetic convert(Lj$/nio/file/Watchable;)Ljava/nio/file/Watchable;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/Watchable$VivifiedWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/Watchable$VivifiedWrapper;

    iget-object p0, p0, Lj$/nio/file/Watchable$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Watchable;

    return-object p0

    :cond_1
    instance-of v0, p0, Lj$/nio/file/Path;

    if-eqz v0, :cond_2

    check-cast p0, Lj$/nio/file/Path;

    invoke-static {p0}, Lj$/nio/file/Path$Wrapper;->convert(Lj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Lj$/nio/file/Watchable$Wrapper;

    invoke-direct {v0, p0}, Lj$/nio/file/Watchable$Wrapper;-><init>(Lj$/nio/file/Watchable;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/Watchable$Wrapper;->wrappedValue:Lj$/nio/file/Watchable;

    instance-of v1, p1, Lj$/nio/file/Watchable$Wrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/Watchable$Wrapper;

    iget-object p1, p1, Lj$/nio/file/Watchable$Wrapper;->wrappedValue:Lj$/nio/file/Watchable;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/Watchable$Wrapper;->wrappedValue:Lj$/nio/file/Watchable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;)Ljava/nio/file/WatchKey;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/Watchable$Wrapper;->wrappedValue:Lj$/nio/file/Watchable;

    invoke-static {p1}, Lj$/nio/file/WatchService$VivifiedWrapper;->convert(Ljava/nio/file/WatchService;)Lj$/nio/file/WatchService;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/Path$$ExternalSynthetic$CollectionConversion0;->m([Ljava/nio/file/WatchEvent$Kind;)[Lj$/nio/file/WatchEvent$Kind;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lj$/nio/file/Watchable;->register(Lj$/nio/file/WatchService;[Lj$/nio/file/WatchEvent$Kind;)Lj$/nio/file/WatchKey;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/WatchKey$Wrapper;->convert(Lj$/nio/file/WatchKey;)Ljava/nio/file/WatchKey;

    move-result-object p1

    return-object p1
.end method

.method public synthetic register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/Watchable$Wrapper;->wrappedValue:Lj$/nio/file/Watchable;

    invoke-static {p1}, Lj$/nio/file/WatchService$VivifiedWrapper;->convert(Ljava/nio/file/WatchService;)Lj$/nio/file/WatchService;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/Path$$ExternalSynthetic$CollectionConversion0;->m([Ljava/nio/file/WatchEvent$Kind;)[Lj$/nio/file/WatchEvent$Kind;

    move-result-object p2

    invoke-static {p3}, Lj$/nio/file/Path$$ExternalSynthetic$CollectionConversion1;->m([Ljava/nio/file/WatchEvent$Modifier;)[Lj$/nio/file/WatchEvent$Modifier;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lj$/nio/file/Watchable;->register(Lj$/nio/file/WatchService;[Lj$/nio/file/WatchEvent$Kind;[Lj$/nio/file/WatchEvent$Modifier;)Lj$/nio/file/WatchKey;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/WatchKey$Wrapper;->convert(Lj$/nio/file/WatchKey;)Ljava/nio/file/WatchKey;

    move-result-object p1

    return-object p1
.end method
