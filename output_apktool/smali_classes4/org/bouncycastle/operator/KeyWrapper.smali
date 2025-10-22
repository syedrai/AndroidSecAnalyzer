.class public interface abstract Lorg/bouncycastle/operator/KeyWrapper;
.super Ljava/lang/Object;
.source "KeyWrapper.java"


# virtual methods
.method public abstract generateWrappedKey(Lorg/bouncycastle/operator/GenericKey;)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encryptionKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorException;
        }
    .end annotation
.end method

.method public abstract getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
.end method
