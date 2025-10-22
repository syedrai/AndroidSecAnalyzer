.class public interface abstract Lj$/nio/file/attribute/FileOwnerAttributeView;
.super Ljava/lang/Object;
.source "FileOwnerAttributeView.java"

# interfaces
.implements Lj$/nio/file/attribute/FileAttributeView;


# virtual methods
.method public abstract getOwner()Lj$/nio/file/attribute/UserPrincipal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract setOwner(Lj$/nio/file/attribute/UserPrincipal;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
