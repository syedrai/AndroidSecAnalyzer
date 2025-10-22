.class public interface abstract Lj$/nio/file/attribute/BasicFileAttributeView;
.super Ljava/lang/Object;
.source "BasicFileAttributeView.java"

# interfaces
.implements Lj$/nio/file/attribute/FileAttributeView;


# virtual methods
.method public abstract name()Ljava/lang/String;
.end method

.method public abstract readAttributes()Lj$/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setTimes(Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
