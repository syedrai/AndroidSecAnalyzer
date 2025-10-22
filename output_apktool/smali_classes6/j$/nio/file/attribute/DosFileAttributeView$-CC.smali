.class public final synthetic Lj$/nio/file/attribute/DosFileAttributeView$-CC;
.super Ljava/lang/Object;
.source "DosFileAttributeView.java"


# direct methods
.method public static bridge synthetic $default$readAttributes(Lj$/nio/file/attribute/DosFileAttributeView;)Lj$/nio/file/attribute/BasicFileAttributes;
    .locals 1
    .param p0, "_this"    # Lj$/nio/file/attribute/DosFileAttributeView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-interface {p0}, Lj$/nio/file/attribute/DosFileAttributeView;->readAttributes()Lj$/nio/file/attribute/DosFileAttributes;

    move-result-object v0

    return-object v0
.end method
