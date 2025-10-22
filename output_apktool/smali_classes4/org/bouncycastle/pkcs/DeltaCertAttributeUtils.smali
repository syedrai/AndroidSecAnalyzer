.class public Lorg/bouncycastle/pkcs/DeltaCertAttributeUtils;
.super Ljava/lang/Object;
.source "DeltaCertAttributeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDeltaRequestSignatureValid(Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;Lorg/bouncycastle/operator/ContentVerifierProvider;)Z
    .locals 12
    .param p0, "baseRequest"    # Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;
    .param p1, "contentVerifierProvider"    # Lorg/bouncycastle/operator/ContentVerifierProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseRequest",
            "contentVerifierProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkcs/PKCSException;
        }
    .end annotation

    .line 20
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.16.840.1.114027.80.6.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->getAttributes(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lorg/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v0

    .line 22
    .local v0, "attributes":[Lorg/bouncycastle/asn1/pkcs/Attribute;
    new-instance v1, Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-direct {v1, v3}, Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;-><init>(Lorg/bouncycastle/asn1/pkcs/Attribute;)V

    .line 24
    .local v1, "deltaReq":Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "2.16.840.1.114027.80.6.3"

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->getAttributes(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lorg/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->toASN1Structure()Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object v3

    .line 27
    .local v3, "deltaPkcs10":Lorg/bouncycastle/asn1/pkcs/CertificationRequest;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v5

    .line 29
    .local v5, "deltaInfo":Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 30
    .local v6, "deltaPkcs10InfoV":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 31
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 32
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 34
    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 35
    .local v7, "attrSetV":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v8

    .local v8, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 37
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/bouncycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v9

    .line 39
    .local v9, "attr":Lorg/bouncycastle/asn1/pkcs/Attribute;
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/pkcs/Attribute;->getAttrType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    new-instance v11, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v11, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 41
    invoke-virtual {v7, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 43
    .end local v9    # "attr":Lorg/bouncycastle/asn1/pkcs/Attribute;
    :cond_0
    goto :goto_0

    .line 45
    .end local v8    # "en":Ljava/util/Enumeration;
    :cond_1
    new-instance v4, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v8, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v8, v7}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v4, v2, v2, v8}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v6, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 47
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 49
    .local v4, "deltaPkcs10V":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v8, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 50
    invoke-virtual {v1}, Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 51
    aget-object v8, v0, v2

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/pkcs/Attribute;->getAttributeValues()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    aget-object v2, v8, v2

    invoke-virtual {v4, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 53
    new-instance v2, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;

    new-instance v8, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v8}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object v8

    invoke-direct {v2, v8}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;-><init>(Lorg/bouncycastle/asn1/pkcs/CertificationRequest;)V

    .line 55
    .local v2, "deltaPkcs10Req":Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;
    invoke-virtual {v2, p1}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->isSignatureValid(Lorg/bouncycastle/operator/ContentVerifierProvider;)Z

    move-result v8

    return v8
.end method
