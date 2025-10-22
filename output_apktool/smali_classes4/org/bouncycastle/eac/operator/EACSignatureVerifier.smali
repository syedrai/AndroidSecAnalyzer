.class public interface abstract Lorg/bouncycastle/eac/operator/EACSignatureVerifier;
.super Ljava/lang/Object;
.source "EACSignatureVerifier.java"


# virtual methods
.method public abstract getOutputStream()Ljava/io/OutputStream;
.end method

.method public abstract getUsageIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
.end method

.method public abstract verify([B)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expected"
        }
    .end annotation
.end method
