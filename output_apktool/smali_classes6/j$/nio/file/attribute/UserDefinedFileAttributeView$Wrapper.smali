.class public final synthetic Lj$/nio/file/attribute/UserDefinedFileAttributeView$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/nio/file/attribute/UserDefinedFileAttributeView;


# instance fields
.field public final synthetic wrappedValue:Lj$/nio/file/attribute/UserDefinedFileAttributeView;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/attribute/UserDefinedFileAttributeView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/UserDefinedFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/UserDefinedFileAttributeView;

    return-void
.end method

.method public static synthetic convert(Lj$/nio/file/attribute/UserDefinedFileAttributeView;)Ljava/nio/file/attribute/UserDefinedFileAttributeView;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/UserDefinedFileAttributeView$VivifiedWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/attribute/UserDefinedFileAttributeView$VivifiedWrapper;

    iget-object p0, p0, Lj$/nio/file/attribute/UserDefinedFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/attribute/UserDefinedFileAttributeView$Wrapper;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/UserDefinedFileAttributeView$Wrapper;-><init>(Lj$/nio/file/attribute/UserDefinedFileAttributeView;)V

    return-object v0
.end method


# virtual methods
.method public synthetic delete(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/UserDefinedFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/UserDefinedFileAttributeView;

    invoke-interface {v0, p1}, Lj$/nio/file/attribute/UserDefinedFileAttributeView;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/UserDefinedFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/UserDefinedFileAttributeView;

    instance-of v1, p1, Lj$/nio/file/attribute/UserDefinedFileAttributeView$Wrapper;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/attribute/UserDefinedFileAttributeView$Wrapper;

    iget-object p1, p1, Lj$/nio/file/attribute/UserDefinedFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/UserDefinedFileAttributeView;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/UserDefinedFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/UserDefinedFileAttributeView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic list()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/UserDefinedFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/UserDefinedFileAttributeView;

    invoke-interface {v0}, Lj$/nio/file/attribute/UserDefinedFileAttributeView;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/UserDefinedFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/UserDefinedFileAttributeView;

    invoke-interface {v0}, Lj$/nio/file/attribute/UserDefinedFileAttributeView;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic read(Ljava/lang/String;Ljava/nio/ByteBuffer;)I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/UserDefinedFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/UserDefinedFileAttributeView;

    invoke-interface {v0, p1, p2}, Lj$/nio/file/attribute/UserDefinedFileAttributeView;->read(Ljava/lang/String;Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public synthetic size(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/UserDefinedFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/UserDefinedFileAttributeView;

    invoke-interface {v0, p1}, Lj$/nio/file/attribute/UserDefinedFileAttributeView;->size(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public synthetic write(Ljava/lang/String;Ljava/nio/ByteBuffer;)I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/UserDefinedFileAttributeView$Wrapper;->wrappedValue:Lj$/nio/file/attribute/UserDefinedFileAttributeView;

    invoke-interface {v0, p1, p2}, Lj$/nio/file/attribute/UserDefinedFileAttributeView;->write(Ljava/lang/String;Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method
