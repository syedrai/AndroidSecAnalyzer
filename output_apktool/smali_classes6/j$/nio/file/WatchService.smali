.class public interface abstract Lj$/nio/file/WatchService;
.super Ljava/lang/Object;
.source "WatchService.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract poll()Lj$/nio/file/WatchKey;
.end method

.method public abstract poll(JLjava/util/concurrent/TimeUnit;)Lj$/nio/file/WatchKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract take()Lj$/nio/file/WatchKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
