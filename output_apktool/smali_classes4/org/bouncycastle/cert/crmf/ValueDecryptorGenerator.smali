.class public interface abstract Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;
.super Ljava/lang/Object;
.source "ValueDecryptorGenerator.java"


# virtual methods
.method public abstract getValueDecryptor(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/operator/InputDecryptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyAlg",
            "symmAlg",
            "encKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation
.end method
