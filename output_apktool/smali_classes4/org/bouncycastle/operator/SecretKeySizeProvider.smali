.class public interface abstract Lorg/bouncycastle/operator/SecretKeySizeProvider;
.super Ljava/lang/Object;
.source "SecretKeySizeProvider.java"


# virtual methods
.method public abstract getKeySize(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation
.end method

.method public abstract getKeySize(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithmIdentifier"
        }
    .end annotation
.end method
