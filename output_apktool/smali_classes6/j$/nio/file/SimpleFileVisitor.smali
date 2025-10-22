.class public Lj$/nio/file/SimpleFileVisitor;
.super Ljava/lang/Object;
.source "SimpleFileVisitor.java"

# interfaces
.implements Lj$/nio/file/FileVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj$/nio/file/FileVisitor<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 47
    .local p0, "this":Lj$/nio/file/SimpleFileVisitor;, "Ljava/nio/file/SimpleFileVisitor<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public postVisitDirectory(Ljava/lang/Object;Ljava/io/IOException;)Lj$/nio/file/FileVisitResult;
    .locals 1
    .param p2, "exc"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/IOException;",
            ")",
            "Lj$/nio/file/FileVisitResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    .local p0, "this":Lj$/nio/file/SimpleFileVisitor;, "Ljava/nio/file/SimpleFileVisitor<TT;>;"
    .local p1, "dir":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    if-nez p2, :cond_0

    .line 110
    sget-object v0, Lj$/nio/file/FileVisitResult;->CONTINUE:Lj$/nio/file/FileVisitResult;

    return-object v0

    .line 109
    :cond_0
    throw p2
.end method

.method public preVisitDirectory(Ljava/lang/Object;Lj$/nio/file/attribute/BasicFileAttributes;)Lj$/nio/file/FileVisitResult;
    .locals 1
    .param p2, "attrs"    # Lj$/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lj$/nio/file/attribute/BasicFileAttributes;",
            ")",
            "Lj$/nio/file/FileVisitResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    .local p0, "this":Lj$/nio/file/SimpleFileVisitor;, "Ljava/nio/file/SimpleFileVisitor<TT;>;"
    .local p1, "dir":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lj$/nio/file/FileVisitResult;->CONTINUE:Lj$/nio/file/FileVisitResult;

    return-object v0
.end method

.method public visitFile(Ljava/lang/Object;Lj$/nio/file/attribute/BasicFileAttributes;)Lj$/nio/file/FileVisitResult;
    .locals 1
    .param p2, "attrs"    # Lj$/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lj$/nio/file/attribute/BasicFileAttributes;",
            ")",
            "Lj$/nio/file/FileVisitResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    .local p0, "this":Lj$/nio/file/SimpleFileVisitor;, "Ljava/nio/file/SimpleFileVisitor<TT;>;"
    .local p1, "file":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lj$/nio/file/FileVisitResult;->CONTINUE:Lj$/nio/file/FileVisitResult;

    return-object v0
.end method

.method public visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Lj$/nio/file/FileVisitResult;
    .locals 0
    .param p2, "exc"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/IOException;",
            ")",
            "Lj$/nio/file/FileVisitResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    .local p0, "this":Lj$/nio/file/SimpleFileVisitor;, "Ljava/nio/file/SimpleFileVisitor<TT;>;"
    .local p1, "file":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    throw p2
.end method
