.class public interface abstract Lorg/bouncycastle/crypto/SkippingCipher;
.super Ljava/lang/Object;
.source "SkippingCipher.java"


# virtual methods
.method public abstract getPosition()J
.end method

.method public abstract seekTo(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public abstract skip(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numberOfBytes"
        }
    .end annotation
.end method
