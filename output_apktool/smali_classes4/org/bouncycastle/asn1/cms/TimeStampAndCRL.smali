.class public Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "TimeStampAndCRL.java"


# instance fields
.field private crl:Lorg/bouncycastle/asn1/x509/CertificateList;

.field private timeStamp:Lorg/bouncycastle/asn1/cms/ContentInfo;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;->timeStamp:Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 34
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;->crl:Lorg/bouncycastle/asn1/x509/CertificateList;

    .line 38
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 0
    .param p1, "timeStamp"    # Lorg/bouncycastle/asn1/cms/ContentInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeStamp"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;->timeStamp:Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 29
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;
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

    .line 55
    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    if-eqz v0, :cond_0

    .line 57
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    return-object v0

    .line 59
    :cond_0
    if-eqz p0, :cond_1

    .line 61
    new-instance v0, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 64
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCRL()Lorg/bouncycastle/asn1/x509/CertificateList;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;->crl:Lorg/bouncycastle/asn1/x509/CertificateList;

    return-object v0
.end method

.method public getCertificateList()Lorg/bouncycastle/asn1/x509/CertificateList;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;->crl:Lorg/bouncycastle/asn1/x509/CertificateList;

    return-object v0
.end method

.method public getTimeStampToken()Lorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;->timeStamp:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 85
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 87
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;->timeStamp:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 89
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;->crl:Lorg/bouncycastle/asn1/x509/CertificateList;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;->crl:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 94
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
