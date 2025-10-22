.class public interface abstract Lorg/bouncycastle/crypto/KeyEncapsulation;
.super Ljava/lang/Object;
.source "KeyEncapsulation.java"


# virtual methods
.method public abstract decrypt([BIII)Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "inLen",
            "keyLen"
        }
    .end annotation
.end method

.method public abstract encrypt([BII)Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff",
            "keyLen"
        }
    .end annotation
.end method

.method public abstract init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation
.end method
