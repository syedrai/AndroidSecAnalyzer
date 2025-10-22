.class public interface abstract Lj$/nio/file/Watchable;
.super Ljava/lang/Object;
.source "Watchable.java"


# virtual methods
.method public varargs abstract register(Lj$/nio/file/WatchService;[Lj$/nio/file/WatchEvent$Kind;)Lj$/nio/file/WatchKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/WatchService;",
            "[",
            "Lj$/nio/file/WatchEvent$Kind<",
            "*>;)",
            "Lj$/nio/file/WatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs abstract register(Lj$/nio/file/WatchService;[Lj$/nio/file/WatchEvent$Kind;[Lj$/nio/file/WatchEvent$Modifier;)Lj$/nio/file/WatchKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/WatchService;",
            "[",
            "Lj$/nio/file/WatchEvent$Kind<",
            "*>;[",
            "Lj$/nio/file/WatchEvent$Modifier;",
            ")",
            "Lj$/nio/file/WatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
