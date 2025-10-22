.class public final synthetic Lj$/nio/channels/CompletionHandler$VivifiedWrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/nio/channels/CompletionHandler;


# instance fields
.field public final synthetic wrappedValue:Ljava/nio/channels/CompletionHandler;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/channels/CompletionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/channels/CompletionHandler$VivifiedWrapper;->wrappedValue:Ljava/nio/channels/CompletionHandler;

    return-void
.end method

.method public static synthetic convert(Ljava/nio/channels/CompletionHandler;)Lj$/nio/channels/CompletionHandler;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/channels/CompletionHandler$Wrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/channels/CompletionHandler$Wrapper;

    iget-object p0, p0, Lj$/nio/channels/CompletionHandler$Wrapper;->wrappedValue:Lj$/nio/channels/CompletionHandler;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/channels/CompletionHandler$VivifiedWrapper;

    invoke-direct {v0, p0}, Lj$/nio/channels/CompletionHandler$VivifiedWrapper;-><init>(Ljava/nio/channels/CompletionHandler;)V

    return-object v0
.end method


# virtual methods
.method public synthetic completed(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/channels/CompletionHandler$VivifiedWrapper;->wrappedValue:Ljava/nio/channels/CompletionHandler;

    invoke-interface {v0, p1, p2}, Ljava/nio/channels/CompletionHandler;->completed(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/channels/CompletionHandler$VivifiedWrapper;->wrappedValue:Ljava/nio/channels/CompletionHandler;

    instance-of v1, p1, Lj$/nio/channels/CompletionHandler$VivifiedWrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/channels/CompletionHandler$VivifiedWrapper;

    iget-object p1, p1, Lj$/nio/channels/CompletionHandler$VivifiedWrapper;->wrappedValue:Ljava/nio/channels/CompletionHandler;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic failed(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/channels/CompletionHandler$VivifiedWrapper;->wrappedValue:Ljava/nio/channels/CompletionHandler;

    invoke-interface {v0, p1, p2}, Ljava/nio/channels/CompletionHandler;->failed(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/channels/CompletionHandler$VivifiedWrapper;->wrappedValue:Ljava/nio/channels/CompletionHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
