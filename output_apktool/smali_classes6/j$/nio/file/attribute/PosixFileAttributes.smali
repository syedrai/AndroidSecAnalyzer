.class public interface abstract Lj$/nio/file/attribute/PosixFileAttributes;
.super Ljava/lang/Object;
.source "PosixFileAttributes.java"

# interfaces
.implements Lj$/nio/file/attribute/BasicFileAttributes;


# virtual methods
.method public abstract group()Lj$/nio/file/attribute/GroupPrincipal;
.end method

.method public abstract owner()Lj$/nio/file/attribute/UserPrincipal;
.end method

.method public abstract permissions()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lj$/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation
.end method
