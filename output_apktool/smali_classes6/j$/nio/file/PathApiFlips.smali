.class public Lj$/nio/file/PathApiFlips;
.super Ljava/lang/Object;
.source "PathApiFlips.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/nio/file/PathApiFlips$DirectoryStreamPathWrapper;,
        Lj$/nio/file/PathApiFlips$IteratorPathWrapper;,
        Lj$/nio/file/PathApiFlips$IterablePathWrapper;,
        Lj$/nio/file/PathApiFlips$DirectoryStreamFilterWrapper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertPath(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 39
    if-nez p0, :cond_0

    .line 40
    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_0
    instance-of v0, p0, Lj$/nio/file/Path;

    if-eqz v0, :cond_1

    .line 43
    check-cast p0, Lj$/nio/file/Path;

    invoke-static {p0}, Lj$/nio/file/Path$Wrapper;->convert(Lj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0

    .line 45
    :cond_1
    instance-of v0, p0, Ljava/nio/file/Path;

    if-eqz v0, :cond_2

    .line 46
    check-cast p0, Ljava/nio/file/Path;

    invoke-static {p0}, Lj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p0

    return-object p0

    .line 48
    :cond_2
    return-object p0
.end method

.method public static flipDirectoryStreamFilterPath(Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream$Filter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/DirectoryStream$Filter<",
            "*>;)",
            "Ljava/nio/file/DirectoryStream$Filter<",
            "*>;"
        }
    .end annotation

    .line 29
    new-instance v0, Lj$/nio/file/PathApiFlips$DirectoryStreamFilterWrapper;

    invoke-direct {v0, p0}, Lj$/nio/file/PathApiFlips$DirectoryStreamFilterWrapper;-><init>(Ljava/nio/file/DirectoryStream$Filter;)V

    return-object v0
.end method

.method public static flipDirectoryStreamPath(Ljava/nio/file/DirectoryStream;)Ljava/nio/file/DirectoryStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/DirectoryStream<",
            "*>;)",
            "Ljava/nio/file/DirectoryStream<",
            "*>;"
        }
    .end annotation

    .line 24
    new-instance v0, Lj$/nio/file/PathApiFlips$DirectoryStreamPathWrapper;

    invoke-direct {v0, p0}, Lj$/nio/file/PathApiFlips$DirectoryStreamPathWrapper;-><init>(Ljava/nio/file/DirectoryStream;)V

    return-object v0
.end method

.method public static flipIterablePath(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/lang/Iterable<",
            "*>;"
        }
    .end annotation

    .line 19
    new-instance v0, Lj$/nio/file/PathApiFlips$IterablePathWrapper;

    invoke-direct {v0, p0}, Lj$/nio/file/PathApiFlips$IterablePathWrapper;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static flipIteratorPath(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;)",
            "Ljava/util/Iterator<",
            "*>;"
        }
    .end annotation

    .line 15
    new-instance v0, Lj$/nio/file/PathApiFlips$IteratorPathWrapper;

    invoke-direct {v0, p0}, Lj$/nio/file/PathApiFlips$IteratorPathWrapper;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method
