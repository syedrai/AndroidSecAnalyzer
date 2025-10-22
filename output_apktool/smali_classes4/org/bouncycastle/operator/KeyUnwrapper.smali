.class public interface abstract Lorg/bouncycastle/operator/KeyUnwrapper;
.super Ljava/lang/Object;
.source "KeyUnwrapper.java"


# virtual methods
.method public abstract generateUnwrappedKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/operator/GenericKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encryptionKeyAlgorithm",
            "encryptedKey"
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
