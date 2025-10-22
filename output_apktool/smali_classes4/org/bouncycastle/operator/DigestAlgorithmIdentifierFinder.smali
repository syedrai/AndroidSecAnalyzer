.class public interface abstract Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;
.super Ljava/lang/Object;
.source "DigestAlgorithmIdentifierFinder.java"


# virtual methods
.method public abstract find(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digAlgName"
        }
    .end annotation
.end method

.method public abstract find(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digestOid"
        }
    .end annotation
.end method

.method public abstract find(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sigAlgId"
        }
    .end annotation
.end method
