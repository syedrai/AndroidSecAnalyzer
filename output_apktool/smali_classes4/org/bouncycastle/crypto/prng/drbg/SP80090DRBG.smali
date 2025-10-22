.class public interface abstract Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;
.super Ljava/lang/Object;
.source "SP80090DRBG.java"


# virtual methods
.method public abstract generate([B[BZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "additionalInput",
            "predictionResistant"
        }
    .end annotation
.end method

.method public abstract getBlockSize()I
.end method

.method public abstract reseed([B)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "additionalInput"
        }
    .end annotation
.end method
