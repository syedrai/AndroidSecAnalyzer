.class public interface abstract Lj$/nio/channels/CompletionHandler;
.super Ljava/lang/Object;
.source "CompletionHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract completed(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TA;)V"
        }
    .end annotation
.end method

.method public abstract failed(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "TA;)V"
        }
    .end annotation
.end method
