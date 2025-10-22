.class Lj$/nio/file/Files$2;
.super Ljava/lang/Object;
.source "Files.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/nio/file/Files;->list(Lj$/nio/file/Path;)Lj$/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lj$/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$delegate:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    .line 3718
    iput-object p1, p0, Lj$/nio/file/Files$2;->val$delegate:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 3722
    :try_start_0
    iget-object v0, p0, Lj$/nio/file/Files$2;->val$delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3723
    :catch_0
    move-exception v0

    .line 3724
    .local v0, "e":Ljava/nio/file/DirectoryIteratorException;
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-virtual {v0}, Ljava/nio/file/DirectoryIteratorException;->getCause()Ljava/io/IOException;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public next()Lj$/nio/file/Path;
    .locals 3

    .line 3730
    :try_start_0
    iget-object v0, p0, Lj$/nio/file/Files$2;->val$delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/nio/file/Path;
    :try_end_0
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3731
    :catch_0
    move-exception v0

    .line 3732
    .local v0, "e":Ljava/nio/file/DirectoryIteratorException;
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-virtual {v0}, Ljava/nio/file/DirectoryIteratorException;->getCause()Ljava/io/IOException;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 3718
    invoke-virtual {p0}, Lj$/nio/file/Files$2;->next()Lj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method
