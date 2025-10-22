.class public Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;
.super Ljava/lang/Object;
.source "CertTemplateBuilder.java"


# instance fields
.field private extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private issuer:Lorg/bouncycastle/asn1/x500/X500Name;

.field private issuerUID:Lorg/bouncycastle/asn1/DERBitString;

.field private publicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field private serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

.field private signingAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private subject:Lorg/bouncycastle/asn1/x500/X500Name;

.field private subjectUID:Lorg/bouncycastle/asn1/DERBitString;

.field private validity:Lorg/bouncycastle/asn1/crmf/OptionalValidity;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "v"    # Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .param p2, "tagNo"    # I
    .param p3, "isExplicit"    # Z
    .param p4, "obj"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "tagNo",
            "isExplicit",
            "obj"
        }
    .end annotation

    .line 145
    if-eqz p4, :cond_0

    .line 147
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v0, p3, p2, p4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/asn1/crmf/CertTemplate;
    .locals 5

    .line 127
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 129
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 130
    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v2, v1}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 131
    const/4 v1, 0x2

    iget-object v4, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->signingAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 132
    const/4 v1, 0x3

    iget-object v4, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-direct {p0, v0, v1, v3, v4}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 133
    const/4 v1, 0x4

    iget-object v4, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->validity:Lorg/bouncycastle/asn1/crmf/OptionalValidity;

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 134
    const/4 v1, 0x5

    iget-object v4, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-direct {p0, v0, v1, v3, v4}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 135
    const/4 v1, 0x6

    iget-object v3, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->publicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 136
    const/4 v1, 0x7

    iget-object v3, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->issuerUID:Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 137
    const/16 v1, 0x8

    iget-object v3, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->subjectUID:Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 138
    const/16 v1, 0x9

    iget-object v3, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 140
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lorg/bouncycastle/asn1/crmf/CertTemplate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertTemplate;

    move-result-object v1

    return-object v1
.end method

.method public setExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0
    .param p1, "extens"    # Lorg/bouncycastle/asn1/x509/Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extens"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 106
    return-object p0
.end method

.method public setExtensions(Lorg/bouncycastle/asn1/x509/X509Extensions;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;
    .locals 1
    .param p1, "extens"    # Lorg/bouncycastle/asn1/x509/X509Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extens"
        }
    .end annotation

    .line 99
    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->setExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setIssuer(Lorg/bouncycastle/asn1/x500/X500Name;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0
    .param p1, "name"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    .line 54
    return-object p0
.end method

.method public setIssuerUID(Lorg/bouncycastle/asn1/DERBitString;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0
    .param p1, "uid"    # Lorg/bouncycastle/asn1/DERBitString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->issuerUID:Lorg/bouncycastle/asn1/DERBitString;

    .line 83
    return-object p0
.end method

.method public setPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0
    .param p1, "spki"    # Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spki"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->publicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 75
    return-object p0
.end method

.method public setSerialNumber(Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0
    .param p1, "ser"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ser"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 40
    return-object p0
.end method

.method public setSigningAlg(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0
    .param p1, "aid"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aid"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->signingAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 47
    return-object p0
.end method

.method public setSubject(Lorg/bouncycastle/asn1/x500/X500Name;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0
    .param p1, "name"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    .line 68
    return-object p0
.end method

.method public setSubjectUID(Lorg/bouncycastle/asn1/DERBitString;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0
    .param p1, "uid"    # Lorg/bouncycastle/asn1/DERBitString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->subjectUID:Lorg/bouncycastle/asn1/DERBitString;

    .line 91
    return-object p0
.end method

.method public setValidity(Lorg/bouncycastle/asn1/crmf/OptionalValidity;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0
    .param p1, "v"    # Lorg/bouncycastle/asn1/crmf/OptionalValidity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->validity:Lorg/bouncycastle/asn1/crmf/OptionalValidity;

    .line 61
    return-object p0
.end method

.method public setVersion(I)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;
    .locals 3
    .param p1, "ver"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ver"
        }
    .end annotation

    .line 31
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 33
    return-object p0
.end method
