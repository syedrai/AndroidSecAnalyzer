.class public interface abstract Lorg/bouncycastle/crypto/ec/ECEncryptor;
.super Ljava/lang/Object;
.source "ECEncryptor.java"


# virtual methods
.method public abstract encrypt(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/crypto/ec/ECPair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "point"
        }
    .end annotation
.end method

.method public abstract init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation
.end method
