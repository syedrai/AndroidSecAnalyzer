.class public interface abstract Lorg/bouncycastle/crypto/prng/RandomGenerator;
.super Ljava/lang/Object;
.source "RandomGenerator.java"


# virtual methods
.method public abstract addSeedMaterial(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seed"
        }
    .end annotation
.end method

.method public abstract addSeedMaterial([B)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seed"
        }
    .end annotation
.end method

.method public abstract nextBytes([B)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation
.end method

.method public abstract nextBytes([BII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "start",
            "len"
        }
    .end annotation
.end method
