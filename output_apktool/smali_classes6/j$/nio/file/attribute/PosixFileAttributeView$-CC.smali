.class public final synthetic Lj$/nio/file/attribute/PosixFileAttributeView$-CC;
.super Ljava/lang/Object;
.source "PosixFileAttributeView.java"


# direct methods
.method public static bridge synthetic $default$readAttributes(Lj$/nio/file/attribute/PosixFileAttributeView;)Lj$/nio/file/attribute/BasicFileAttributes;
    .locals 1
    .param p0, "_this"    # Lj$/nio/file/attribute/PosixFileAttributeView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-interface {p0}, Lj$/nio/file/attribute/PosixFileAttributeView;->readAttributes()Lj$/nio/file/attribute/PosixFileAttributes;

    move-result-object v0

    return-object v0
.end method
