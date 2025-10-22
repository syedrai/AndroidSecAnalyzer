.class public interface abstract Lorg/bouncycastle/operator/AlgorithmNameFinder;
.super Ljava/lang/Object;
.source "AlgorithmNameFinder.java"


# virtual methods
.method public abstract getAlgorithmName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objectIdentifier"
        }
    .end annotation
.end method

.method public abstract getAlgorithmName(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithmIdentifier"
        }
    .end annotation
.end method

.method public abstract hasAlgorithmName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objectIdentifier"
        }
    .end annotation
.end method
