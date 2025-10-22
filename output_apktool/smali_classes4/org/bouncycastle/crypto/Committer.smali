.class public interface abstract Lorg/bouncycastle/crypto/Committer;
.super Ljava/lang/Object;
.source "Committer.java"


# virtual methods
.method public abstract commit([B)Lorg/bouncycastle/crypto/Commitment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation
.end method

.method public abstract isRevealed(Lorg/bouncycastle/crypto/Commitment;[B)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "commitment",
            "message"
        }
    .end annotation
.end method
