.class public interface abstract Lorg/bouncycastle/operator/bc/BcDigestProvider;
.super Ljava/lang/Object;
.source "BcDigestProvider.java"


# virtual methods
.method public abstract get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/ExtendedDigest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digestAlgorithmIdentifier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation
.end method
