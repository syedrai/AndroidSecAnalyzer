.class public Lorg/bouncycastle/asn1/cmp/RevAnnContent;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "RevAnnContent.java"


# instance fields
.field private final badSinceDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field private final certId:Lorg/bouncycastle/asn1/crmf/CertId;

.field private crlDetails:Lorg/bouncycastle/asn1/x509/Extensions;

.field private final status:Lorg/bouncycastle/asn1/cmp/PKIStatus;

.field private final willBeRevokedAt:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;


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

    .line 48
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/PKIStatus;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->status:Lorg/bouncycastle/asn1/cmp/PKIStatus;

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/CertId;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertId;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->certId:Lorg/bouncycastle/asn1/crmf/CertId;

    .line 51
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->willBeRevokedAt:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 52
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->badSinceDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 54
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 56
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->crlDetails:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 58
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/PKIStatus;Lorg/bouncycastle/asn1/crmf/CertId;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)V
    .locals 6
    .param p1, "status"    # Lorg/bouncycastle/asn1/cmp/PKIStatus;
    .param p2, "certId"    # Lorg/bouncycastle/asn1/crmf/CertId;
    .param p3, "willBeRevokedAt"    # Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .param p4, "badSinceDate"    # Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "status",
            "certId",
            "willBeRevokedAt",
            "badSinceDate"
        }
    .end annotation

    .line 35
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "status":Lorg/bouncycastle/asn1/cmp/PKIStatus;
    .end local p2    # "certId":Lorg/bouncycastle/asn1/crmf/CertId;
    .end local p3    # "willBeRevokedAt":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .end local p4    # "badSinceDate":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .local v1, "status":Lorg/bouncycastle/asn1/cmp/PKIStatus;
    .local v2, "certId":Lorg/bouncycastle/asn1/crmf/CertId;
    .local v3, "willBeRevokedAt":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .local v4, "badSinceDate":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/cmp/RevAnnContent;-><init>(Lorg/bouncycastle/asn1/cmp/PKIStatus;Lorg/bouncycastle/asn1/crmf/CertId;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/x509/Extensions;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/PKIStatus;Lorg/bouncycastle/asn1/crmf/CertId;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/x509/Extensions;)V
    .locals 0
    .param p1, "status"    # Lorg/bouncycastle/asn1/cmp/PKIStatus;
    .param p2, "certId"    # Lorg/bouncycastle/asn1/crmf/CertId;
    .param p3, "willBeRevokedAt"    # Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .param p4, "badSinceDate"    # Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .param p5, "crlDetails"    # Lorg/bouncycastle/asn1/x509/Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "status",
            "certId",
            "willBeRevokedAt",
            "badSinceDate",
            "crlDetails"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->status:Lorg/bouncycastle/asn1/cmp/PKIStatus;

    .line 41
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->certId:Lorg/bouncycastle/asn1/crmf/CertId;

    .line 42
    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->willBeRevokedAt:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 43
    iput-object p4, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->badSinceDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 44
    iput-object p5, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->crlDetails:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 45
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/RevAnnContent;
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

    .line 62
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;

    if-eqz v0, :cond_0

    .line 64
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;

    return-object v0

    .line 67
    :cond_0
    if-eqz p0, :cond_1

    .line 69
    new-instance v0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/RevAnnContent;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 72
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getBadSinceDate()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->badSinceDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getCertId()Lorg/bouncycastle/asn1/crmf/CertId;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->certId:Lorg/bouncycastle/asn1/crmf/CertId;

    return-object v0
.end method

.method public getCrlDetails()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->crlDetails:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getStatus()Lorg/bouncycastle/asn1/cmp/PKIStatus;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->status:Lorg/bouncycastle/asn1/cmp/PKIStatus;

    return-object v0
.end method

.method public getWillBeRevokedAt()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->willBeRevokedAt:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 116
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 118
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->status:Lorg/bouncycastle/asn1/cmp/PKIStatus;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 119
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->certId:Lorg/bouncycastle/asn1/crmf/CertId;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 120
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->willBeRevokedAt:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 121
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->badSinceDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 123
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->crlDetails:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->crlDetails:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 128
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
