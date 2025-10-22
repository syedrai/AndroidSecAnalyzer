.class public Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "AttributeCertificateInfo.java"


# instance fields
.field private attrCertValidityPeriod:Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;

.field private attributes:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private holder:Lorg/bouncycastle/asn1/x509/Holder;

.field private issuer:Lorg/bouncycastle/asn1/x509/AttCertIssuer;

.field private issuerUniqueID:Lorg/bouncycastle/asn1/ASN1BitString;

.field private serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

.field private signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_5

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 60
    const/4 v0, 0x1

    .local v0, "start":I
    goto :goto_0

    .line 64
    .end local v0    # "start":I
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 65
    const/4 v0, 0x0

    .line 68
    .restart local v0    # "start":I
    :goto_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/Holder;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Holder;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    .line 69
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuer:Lorg/bouncycastle/asn1/x509/AttCertIssuer;

    .line 70
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 71
    add-int/lit8 v1, v0, 0x3

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 72
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->attrCertValidityPeriod:Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;

    .line 73
    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->attributes:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 75
    add-int/lit8 v1, v0, 0x6

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 77
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 79
    .local v2, "obj":Lorg/bouncycastle/asn1/ASN1Encodable;
    instance-of v3, v2, Lorg/bouncycastle/asn1/ASN1BitString;

    if-eqz v3, :cond_1

    .line 81
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuerUniqueID:Lorg/bouncycastle/asn1/ASN1BitString;

    goto :goto_2

    .line 83
    :cond_1
    instance-of v3, v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v3, :cond_2

    instance-of v3, v2, Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v3, :cond_3

    .line 85
    :cond_2
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 75
    .end local v2    # "obj":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    .end local v1    # "i":I
    :cond_4
    return-void

    .line 53
    .end local v0    # "start":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad sequence size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 36
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    if-eqz v0, :cond_0

    .line 38
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    return-object v0

    .line 40
    :cond_0
    if-eqz p0, :cond_1

    .line 42
    new-instance v0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 45
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;
    .locals 1
    .param p0, "obj"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "explicit"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAttrCertValidityPeriod()Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->attrCertValidityPeriod:Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;

    return-object v0
.end method

.method public getAttributes()Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->attributes:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getHolder()Lorg/bouncycastle/asn1/x509/Holder;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    return-object v0
.end method

.method public getIssuer()Lorg/bouncycastle/asn1/x509/AttCertIssuer;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuer:Lorg/bouncycastle/asn1/x509/AttCertIssuer;

    return-object v0
.end method

.method public getIssuerUniqueID()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuerUniqueID:Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getSignature()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 155
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 157
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 161
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 162
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuer:Lorg/bouncycastle/asn1/x509/AttCertIssuer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 163
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 164
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 165
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->attrCertValidityPeriod:Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 166
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->attributes:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 168
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuerUniqueID:Lorg/bouncycastle/asn1/ASN1BitString;

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuerUniqueID:Lorg/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 173
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_2

    .line 175
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 178
    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
