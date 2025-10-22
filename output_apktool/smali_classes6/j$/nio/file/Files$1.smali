.class Lj$/nio/file/Files$1;
.super Ljava/lang/Object;
.source "Files.java"

# interfaces
.implements Ljava/nio/file/DirectoryStream$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/nio/file/Files;->newDirectoryStream(Lj$/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/DirectoryStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/nio/file/DirectoryStream$Filter<",
        "Lj$/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$matcher:Lj$/nio/file/PathMatcher;


# direct methods
.method constructor <init>(Lj$/nio/file/PathMatcher;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lj$/nio/file/Files$1;->val$matcher:Lj$/nio/file/PathMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lj$/nio/file/Path;)Z
    .locals 2
    .param p1, "entry"    # Lj$/nio/file/Path;

    .line 535
    iget-object v0, p0, Lj$/nio/file/Files$1;->val$matcher:Lj$/nio/file/PathMatcher;

    invoke-interface {p1}, Lj$/nio/file/Path;->getFileName()Lj$/nio/file/Path;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/nio/file/PathMatcher;->matches(Lj$/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    check-cast p1, Lj$/nio/file/Path;

    invoke-virtual {p0, p1}, Lj$/nio/file/Files$1;->accept(Lj$/nio/file/Path;)Z

    move-result p1

    return p1
.end method
