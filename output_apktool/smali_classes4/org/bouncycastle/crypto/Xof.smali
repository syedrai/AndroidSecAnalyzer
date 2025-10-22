.class public interface abstract Lorg/bouncycastle/crypto/Xof;
.super Ljava/lang/Object;
.source "Xof.java"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;


# virtual methods
.method public abstract doFinal([BII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff",
            "outLen"
        }
    .end annotation
.end method

.method public abstract doOutput([BII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff",
            "outLen"
        }
    .end annotation
.end method
