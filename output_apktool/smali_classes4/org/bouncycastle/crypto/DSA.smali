.class public interface abstract Lorg/bouncycastle/crypto/DSA;
.super Ljava/lang/Object;
.source "DSA.java"


# virtual methods
.method public abstract generateSignature([B)[Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation
.end method

.method public abstract init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forSigning",
            "param"
        }
    .end annotation
.end method

.method public abstract verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "r",
            "s"
        }
    .end annotation
.end method
