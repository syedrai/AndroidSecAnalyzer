.class public interface abstract Lj$/nio/file/WatchKey;
.super Ljava/lang/Object;
.source "WatchKey.java"


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract isValid()Z
.end method

.method public abstract pollEvents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj$/nio/file/WatchEvent<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract reset()Z
.end method

.method public abstract watchable()Lj$/nio/file/Watchable;
.end method
