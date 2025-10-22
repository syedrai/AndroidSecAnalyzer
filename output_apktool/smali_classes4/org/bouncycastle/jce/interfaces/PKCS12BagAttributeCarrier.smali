.class public interface abstract Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
.super Ljava/lang/Object;
.source "PKCS12BagAttributeCarrier.java"


# virtual methods
.method public abstract getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oid"
        }
    .end annotation
.end method

.method public abstract getBagAttributeKeys()Ljava/util/Enumeration;
.end method

.method public abstract setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oid",
            "attribute"
        }
    .end annotation
.end method
