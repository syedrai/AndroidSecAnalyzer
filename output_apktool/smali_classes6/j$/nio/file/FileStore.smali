.class public abstract Lj$/nio/file/FileStore;
.super Ljava/lang/Object;
.source "FileStore.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getBlockSize()J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract getFileStoreAttributeView(Ljava/lang/Class;)Lj$/nio/file/attribute/FileStoreAttributeView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lj$/nio/file/attribute/FileStoreAttributeView;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;)TV;"
        }
    .end annotation
.end method

.method public abstract getTotalSpace()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getUnallocatedSpace()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getUsableSpace()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isReadOnly()Z
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract supportsFileAttributeView(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lj$/nio/file/attribute/FileAttributeView;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract supportsFileAttributeView(Ljava/lang/String;)Z
.end method

.method public abstract type()Ljava/lang/String;
.end method
