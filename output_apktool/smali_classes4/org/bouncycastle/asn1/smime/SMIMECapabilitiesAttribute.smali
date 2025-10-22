.class public Lorg/bouncycastle/asn1/smime/SMIMECapabilitiesAttribute;
.super Lorg/bouncycastle/asn1/cms/Attribute;
.source "SMIMECapabilitiesAttribute.java"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/smime/SMIMECapabilityVector;)V
    .locals 4
    .param p1, "capabilities"    # Lorg/bouncycastle/asn1/smime/SMIMECapabilityVector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capabilities"
        }
    .end annotation

    .line 13
    sget-object v0, Lorg/bouncycastle/asn1/smime/SMIMEAttributes;->smimeCapabilities:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/asn1/DERSet;

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    .line 14
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/smime/SMIMECapabilityVector;->toASN1EncodableVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 13
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/cms/Attribute;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 15
    return-void
.end method
