.class public interface abstract Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;
.super Ljava/lang/Object;
.source "CMSSignatureAlgorithmNameGenerator.java"


# virtual methods
.method public abstract getSignatureName(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digestAlg",
            "encryptionAlg"
        }
    .end annotation
.end method
