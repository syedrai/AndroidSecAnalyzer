.class public Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;
.super Ljava/lang/Object;
.source "V2AttributeCertificateInfoGenerator.java"


# instance fields
.field private attributes:Lorg/bouncycastle/asn1/ASN1EncodableVector;

.field private endDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field private extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private holder:Lorg/bouncycastle/asn1/x509/Holder;

.field private issuer:Lorg/bouncycastle/asn1/x509/AttCertIssuer;

.field private issuerUniqueID:Lorg/bouncycastle/asn1/DERBitString;

.field private serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

.field private signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private startDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 47
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->attributes:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 48
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 4
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oid",
            "value"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->attributes:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    new-instance v1, Lorg/bouncycastle/asn1/x509/Attribute;

    new-instance v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v3, p2}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/Attribute;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 58
    return-void
.end method

.method public addAttribute(Lorg/bouncycastle/asn1/x509/Attribute;)V
    .locals 1
    .param p1, "attribute"    # Lorg/bouncycastle/asn1/x509/Attribute;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attribute"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->attributes:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 66
    return-void
.end method

.method public generateAttributeCertificateInfo()Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;
    .locals 4

    .line 122
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->issuer:Lorg/bouncycastle/asn1/x509/AttCertIssuer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->startDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->endDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->attributes:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    if-eqz v0, :cond_2

    .line 129
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 131
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 132
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 133
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->issuer:Lorg/bouncycastle/asn1/x509/AttCertIssuer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 134
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 135
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 140
    new-instance v1, Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->startDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->endDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;-><init>(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)V

    .line 141
    .local v1, "validity":Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 144
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->attributes:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 146
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->issuerUniqueID:Lorg/bouncycastle/asn1/DERBitString;

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->issuerUniqueID:Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 151
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v2, :cond_1

    .line 153
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 156
    :cond_1
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v2

    return-object v2

    .line 126
    .end local v0    # "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v1    # "validity":Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not all mandatory fields set in V2 AttributeCertificateInfo generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEndDate(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)V
    .locals 0
    .param p1, "endDate"    # Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endDate"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->endDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 96
    return-void
.end method

.method public setExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)V
    .locals 0
    .param p1, "extensions"    # Lorg/bouncycastle/asn1/x509/Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extensions"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 118
    return-void
.end method

.method public setExtensions(Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .locals 1
    .param p1, "extensions"    # Lorg/bouncycastle/asn1/x509/X509Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extensions"
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/X509Extensions;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 112
    return-void
.end method

.method public setHolder(Lorg/bouncycastle/asn1/x509/Holder;)V
    .locals 0
    .param p1, "holder"    # Lorg/bouncycastle/asn1/x509/Holder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    .line 53
    return-void
.end method

.method public setIssuer(Lorg/bouncycastle/asn1/x509/AttCertIssuer;)V
    .locals 0
    .param p1, "issuer"    # Lorg/bouncycastle/asn1/x509/AttCertIssuer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "issuer"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->issuer:Lorg/bouncycastle/asn1/x509/AttCertIssuer;

    .line 84
    return-void
.end method

.method public setIssuerUniqueID(Lorg/bouncycastle/asn1/DERBitString;)V
    .locals 0
    .param p1, "issuerUniqueID"    # Lorg/bouncycastle/asn1/DERBitString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "issuerUniqueID"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->issuerUniqueID:Lorg/bouncycastle/asn1/DERBitString;

    .line 102
    return-void
.end method

.method public setSerialNumber(Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 0
    .param p1, "serialNumber"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serialNumber"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 72
    return-void
.end method

.method public setSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0
    .param p1, "signature"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signature"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 78
    return-void
.end method

.method public setStartDate(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)V
    .locals 0
    .param p1, "startDate"    # Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startDate"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->startDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 90
    return-void
.end method
