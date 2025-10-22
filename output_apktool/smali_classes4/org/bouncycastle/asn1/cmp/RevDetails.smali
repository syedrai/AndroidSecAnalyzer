.class public Lorg/bouncycastle/asn1/cmp/RevDetails;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "RevDetails.java"


# instance fields
.field private final certDetails:Lorg/bouncycastle/asn1/crmf/CertTemplate;

.field private crlEntryDetails:Lorg/bouncycastle/asn1/x509/Extensions;


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

    .line 31
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/CertTemplate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertTemplate;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevDetails;->certDetails:Lorg/bouncycastle/asn1/crmf/CertTemplate;

    .line 33
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 35
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevDetails;->crlEntryDetails:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 37
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/CertTemplate;)V
    .locals 0
    .param p1, "certDetails"    # Lorg/bouncycastle/asn1/crmf/CertTemplate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certDetails"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/RevDetails;->certDetails:Lorg/bouncycastle/asn1/crmf/CertTemplate;

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/CertTemplate;Lorg/bouncycastle/asn1/x509/Extensions;)V
    .locals 0
    .param p1, "certDetails"    # Lorg/bouncycastle/asn1/crmf/CertTemplate;
    .param p2, "crlEntryDetails"    # Lorg/bouncycastle/asn1/x509/Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certDetails",
            "crlEntryDetails"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/RevDetails;->certDetails:Lorg/bouncycastle/asn1/crmf/CertTemplate;

    .line 58
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/RevDetails;->crlEntryDetails:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/CertTemplate;Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .locals 1
    .param p1, "certDetails"    # Lorg/bouncycastle/asn1/crmf/CertTemplate;
    .param p2, "crlEntryDetails"    # Lorg/bouncycastle/asn1/x509/X509Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certDetails",
            "crlEntryDetails"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/RevDetails;->certDetails:Lorg/bouncycastle/asn1/crmf/CertTemplate;

    .line 52
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/X509Extensions;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevDetails;->crlEntryDetails:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 53
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/RevDetails;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 63
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/RevDetails;

    if-eqz v0, :cond_0

    .line 65
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/RevDetails;

    return-object v0

    .line 68
    :cond_0
    if-eqz p0, :cond_1

    .line 70
    new-instance v0, Lorg/bouncycastle/asn1/cmp/RevDetails;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/RevDetails;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 73
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCertDetails()Lorg/bouncycastle/asn1/crmf/CertTemplate;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevDetails;->certDetails:Lorg/bouncycastle/asn1/crmf/CertTemplate;

    return-object v0
.end method

.method public getCrlEntryDetails()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevDetails;->crlEntryDetails:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 89
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 91
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/RevDetails;->certDetails:Lorg/bouncycastle/asn1/crmf/CertTemplate;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 93
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/RevDetails;->crlEntryDetails:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/RevDetails;->crlEntryDetails:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 98
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
