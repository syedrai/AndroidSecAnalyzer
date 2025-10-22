.class public interface abstract Lj$/nio/file/attribute/PosixFileAttributeView;
.super Ljava/lang/Object;
.source "PosixFileAttributeView.java"

# interfaces
.implements Lj$/nio/file/attribute/BasicFileAttributeView;
.implements Lj$/nio/file/attribute/FileOwnerAttributeView;


# virtual methods
.method public abstract name()Ljava/lang/String;
.end method

.method public abstract readAttributes()Lj$/nio/file/attribute/PosixFileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setGroup(Lj$/nio/file/attribute/GroupPrincipal;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setPermissions(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lj$/nio/file/attribute/PosixFilePermission;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
