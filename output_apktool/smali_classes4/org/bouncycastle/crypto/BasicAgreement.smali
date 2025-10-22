.class public interface abstract Lorg/bouncycastle/crypto/BasicAgreement;
.super Ljava/lang/Object;
.source "BasicAgreement.java"


# virtual methods
.method public abstract calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pubKey"
        }
    .end annotation
.end method

.method public abstract getFieldSize()I
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
