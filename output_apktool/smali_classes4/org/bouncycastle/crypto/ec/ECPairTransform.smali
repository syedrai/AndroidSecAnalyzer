.class public interface abstract Lorg/bouncycastle/crypto/ec/ECPairTransform;
.super Ljava/lang/Object;
.source "ECPairTransform.java"


# virtual methods
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

.method public abstract transform(Lorg/bouncycastle/crypto/ec/ECPair;)Lorg/bouncycastle/crypto/ec/ECPair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cipherText"
        }
    .end annotation
.end method
