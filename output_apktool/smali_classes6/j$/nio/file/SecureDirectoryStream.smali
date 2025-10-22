.class public interface abstract Lj$/nio/file/SecureDirectoryStream;
.super Ljava/lang/Object;
.source "SecureDirectoryStream.java"

# interfaces
.implements Ljava/nio/file/DirectoryStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/nio/file/DirectoryStream<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract deleteDirectory(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract deleteFile(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFileAttributeView(Ljava/lang/Class;)Lj$/nio/file/attribute/FileAttributeView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lj$/nio/file/attribute/FileAttributeView;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;)TV;"
        }
    .end annotation
.end method

.method public varargs abstract getFileAttributeView(Ljava/lang/Object;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/FileAttributeView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lj$/nio/file/attribute/FileAttributeView;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TV;>;[",
            "Lj$/nio/file/LinkOption;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract move(Ljava/lang/Object;Lj$/nio/file/SecureDirectoryStream;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lj$/nio/file/SecureDirectoryStream<",
            "TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs abstract newByteChannel(Ljava/lang/Object;Ljava/util/Set;[Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Set<",
            "+",
            "Lj$/nio/file/OpenOption;",
            ">;[",
            "Lj$/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/channels/SeekableByteChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs abstract newDirectoryStream(Ljava/lang/Object;[Lj$/nio/file/LinkOption;)Lj$/nio/file/SecureDirectoryStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Lj$/nio/file/LinkOption;",
            ")",
            "Lj$/nio/file/SecureDirectoryStream<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
