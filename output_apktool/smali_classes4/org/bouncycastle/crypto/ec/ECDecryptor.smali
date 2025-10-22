.class public interface abstract Lorg/bouncycastle/crypto/ec/ECDecryptor;
.super Ljava/lang/Object;
.source "ECDecryptor.java"


# virtual methods
.method public abstract decrypt(Lorg/bouncycastle/crypto/ec/ECPair;)Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cipherText"
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
