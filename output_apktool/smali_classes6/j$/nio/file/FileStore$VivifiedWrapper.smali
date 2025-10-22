.class public final synthetic Lj$/nio/file/FileStore$VivifiedWrapper;
.super Lj$/nio/file/FileStore;
.source "D8$$SyntheticClass"


# instance fields
.field public final synthetic wrappedValue:Ljava/nio/file/FileStore;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/FileStore;)V
    .locals 0

    invoke-direct {p0}, Lj$/nio/file/FileStore;-><init>()V

    iput-object p1, p0, Lj$/nio/file/FileStore$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileStore;

    return-void
.end method

.method public static synthetic convert(Ljava/nio/file/FileStore;)Lj$/nio/file/FileStore;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/FileStore$Wrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/FileStore$Wrapper;

    iget-object p0, p0, Lj$/nio/file/FileStore$Wrapper;->wrappedValue:Lj$/nio/file/FileStore;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/FileStore$VivifiedWrapper;

    invoke-direct {v0, p0}, Lj$/nio/file/FileStore$VivifiedWrapper;-><init>(Ljava/nio/file/FileStore;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/FileStore$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileStore;

    instance-of v1, p1, Lj$/nio/file/FileStore$VivifiedWrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/FileStore$VivifiedWrapper;

    iget-object p1, p1, Lj$/nio/file/FileStore$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileStore;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/FileStore$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileStore;

    invoke-virtual {v0, p1}, Ljava/nio/file/FileStore;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getBlockSize()J
    .locals 2

    iget-object v0, p0, Lj$/nio/file/FileStore$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/nio/file/FileStore;->getBlockSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic getFileStoreAttributeView(Ljava/lang/Class;)Lj$/nio/file/attribute/FileStoreAttributeView;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/FileStore$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileStore;

    invoke-virtual {v0, p1}, Ljava/nio/file/FileStore;->getFileStoreAttributeView(Ljava/lang/Class;)Ljava/nio/file/attribute/FileStoreAttributeView;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/attribute/FileStoreAttributeView$VivifiedWrapper;->convert(Ljava/nio/file/attribute/FileStoreAttributeView;)Lj$/nio/file/attribute/FileStoreAttributeView;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getTotalSpace()J
    .locals 2

    iget-object v0, p0, Lj$/nio/file/FileStore$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/nio/file/FileStore;->getTotalSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic getUnallocatedSpace()J
    .locals 2

    iget-object v0, p0, Lj$/nio/file/FileStore$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/nio/file/FileStore;->getUnallocatedSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic getUsableSpace()J
    .locals 2

    iget-object v0, p0, Lj$/nio/file/FileStore$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/nio/file/FileStore;->getUsableSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/FileStore$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic isReadOnly()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/FileStore$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/nio/file/FileStore;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public synthetic name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/FileStore$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/nio/file/FileStore;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic supportsFileAttributeView(Ljava/lang/Class;)Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/FileStore$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileStore;

    invoke-static {p1}, Lj$/nio/file/FileApiFlips;->flipFileAttributeView(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/file/FileStore;->supportsFileAttributeView(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public synthetic supportsFileAttributeView(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/FileStore$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileStore;

    invoke-virtual {v0, p1}, Ljava/nio/file/FileStore;->supportsFileAttributeView(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public synthetic type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/FileStore$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/nio/file/FileStore;->type()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
