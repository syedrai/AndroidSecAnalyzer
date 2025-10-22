.class public Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValueBuilder;
.super Ljava/lang/Object;
.source "DeltaCertificateRequestAttributeValueBuilder.java"


# instance fields
.field private signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private subject:Lorg/bouncycastle/asn1/x500/X500Name;

.field private final subjectPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 0
    .param p1, "subjectPublicKey"    # Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subjectPublicKey"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValueBuilder;->subjectPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 23
    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;
    .locals 6

    .line 41
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 43
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValueBuilder;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 45
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValueBuilder;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 47
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValueBuilder;->subjectPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 48
    iget-object v1, p0, Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValueBuilder;->signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v1, :cond_1

    .line 50
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValueBuilder;->signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 54
    :cond_1
    new-instance v1, Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/Attribute;

    new-instance v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "2.16.840.1.114027.80.6.2"

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v4, Lorg/bouncycastle/asn1/DERSet;

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/pkcs/Attribute;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;-><init>(Lorg/bouncycastle/asn1/pkcs/Attribute;)V

    return-object v1
.end method

.method public setSignatureAlgorithm(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValueBuilder;
    .locals 0
    .param p1, "signatureAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signatureAlgorithm"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValueBuilder;->signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 29
    return-object p0
.end method

.method public setSubject(Lorg/bouncycastle/asn1/x500/X500Name;)Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValueBuilder;
    .locals 0
    .param p1, "subject"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subject"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValueBuilder;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    .line 36
    return-object p0
.end method
