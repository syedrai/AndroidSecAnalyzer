.class public final synthetic Lj$/nio/file/WatchKey$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/nio/file/WatchKey;


# instance fields
.field public final synthetic wrappedValue:Lj$/nio/file/WatchKey;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/WatchKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/WatchKey$Wrapper;->wrappedValue:Lj$/nio/file/WatchKey;

    return-void
.end method

.method public static synthetic convert(Lj$/nio/file/WatchKey;)Ljava/nio/file/WatchKey;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/WatchKey$VivifiedWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/WatchKey$VivifiedWrapper;

    iget-object p0, p0, Lj$/nio/file/WatchKey$VivifiedWrapper;->wrappedValue:Ljava/nio/file/WatchKey;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/WatchKey$Wrapper;

    invoke-direct {v0, p0}, Lj$/nio/file/WatchKey$Wrapper;-><init>(Lj$/nio/file/WatchKey;)V

    return-object v0
.end method


# virtual methods
.method public synthetic cancel()V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/WatchKey$Wrapper;->wrappedValue:Lj$/nio/file/WatchKey;

    invoke-interface {v0}, Lj$/nio/file/WatchKey;->cancel()V

    return-void
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/WatchKey$Wrapper;->wrappedValue:Lj$/nio/file/WatchKey;

    instance-of v1, p1, Lj$/nio/file/WatchKey$Wrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/WatchKey$Wrapper;

    iget-object p1, p1, Lj$/nio/file/WatchKey$Wrapper;->wrappedValue:Lj$/nio/file/WatchKey;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/WatchKey$Wrapper;->wrappedValue:Lj$/nio/file/WatchKey;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic isValid()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/WatchKey$Wrapper;->wrappedValue:Lj$/nio/file/WatchKey;

    invoke-interface {v0}, Lj$/nio/file/WatchKey;->isValid()Z

    move-result v0

    return v0
.end method

.method public synthetic pollEvents()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/WatchKey$Wrapper;->wrappedValue:Lj$/nio/file/WatchKey;

    invoke-interface {v0}, Lj$/nio/file/WatchKey;->pollEvents()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/FileApiFlips;->flipWatchEventList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic reset()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/WatchKey$Wrapper;->wrappedValue:Lj$/nio/file/WatchKey;

    invoke-interface {v0}, Lj$/nio/file/WatchKey;->reset()Z

    move-result v0

    return v0
.end method

.method public synthetic watchable()Ljava/nio/file/Watchable;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/WatchKey$Wrapper;->wrappedValue:Lj$/nio/file/WatchKey;

    invoke-interface {v0}, Lj$/nio/file/WatchKey;->watchable()Lj$/nio/file/Watchable;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/Watchable$Wrapper;->convert(Lj$/nio/file/Watchable;)Ljava/nio/file/Watchable;

    move-result-object v0

    return-object v0
.end method
