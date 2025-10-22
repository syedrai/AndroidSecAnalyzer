.class public final synthetic Lj$/nio/file/WatchEvent$VivifiedWrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/nio/file/WatchEvent;


# instance fields
.field public final synthetic wrappedValue:Ljava/nio/file/WatchEvent;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/WatchEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/WatchEvent$VivifiedWrapper;->wrappedValue:Ljava/nio/file/WatchEvent;

    return-void
.end method

.method public static synthetic convert(Ljava/nio/file/WatchEvent;)Lj$/nio/file/WatchEvent;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/WatchEvent$Wrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/WatchEvent$Wrapper;

    iget-object p0, p0, Lj$/nio/file/WatchEvent$Wrapper;->wrappedValue:Lj$/nio/file/WatchEvent;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/WatchEvent$VivifiedWrapper;

    invoke-direct {v0, p0}, Lj$/nio/file/WatchEvent$VivifiedWrapper;-><init>(Ljava/nio/file/WatchEvent;)V

    return-object v0
.end method


# virtual methods
.method public synthetic context()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/WatchEvent$VivifiedWrapper;->wrappedValue:Ljava/nio/file/WatchEvent;

    invoke-interface {v0}, Ljava/nio/file/WatchEvent;->context()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/PathApiFlips;->convertPath(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic count()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/WatchEvent$VivifiedWrapper;->wrappedValue:Ljava/nio/file/WatchEvent;

    invoke-interface {v0}, Ljava/nio/file/WatchEvent;->count()I

    move-result v0

    return v0
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/WatchEvent$VivifiedWrapper;->wrappedValue:Ljava/nio/file/WatchEvent;

    instance-of v1, p1, Lj$/nio/file/WatchEvent$VivifiedWrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/WatchEvent$VivifiedWrapper;

    iget-object p1, p1, Lj$/nio/file/WatchEvent$VivifiedWrapper;->wrappedValue:Ljava/nio/file/WatchEvent;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/WatchEvent$VivifiedWrapper;->wrappedValue:Ljava/nio/file/WatchEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic kind()Lj$/nio/file/WatchEvent$Kind;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/WatchEvent$VivifiedWrapper;->wrappedValue:Ljava/nio/file/WatchEvent;

    invoke-interface {v0}, Ljava/nio/file/WatchEvent;->kind()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/WatchEventKindConversions;->convert(Ljava/nio/file/WatchEvent$Kind;)Lj$/nio/file/WatchEvent$Kind;

    move-result-object v0

    return-object v0
.end method
