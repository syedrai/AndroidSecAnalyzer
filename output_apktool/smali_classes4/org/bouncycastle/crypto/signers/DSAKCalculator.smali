.class public interface abstract Lorg/bouncycastle/crypto/signers/DSAKCalculator;
.super Ljava/lang/Object;
.source "DSAKCalculator.java"


# virtual methods
.method public abstract init(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "d",
            "message"
        }
    .end annotation
.end method

.method public abstract init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "random"
        }
    .end annotation
.end method

.method public abstract isDeterministic()Z
.end method

.method public abstract nextK()Ljava/math/BigInteger;
.end method
