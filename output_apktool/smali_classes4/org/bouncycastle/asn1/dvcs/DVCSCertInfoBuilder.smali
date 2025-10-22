.class public Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;
.super Ljava/lang/Object;
.source "DVCSCertInfoBuilder.java"


# static fields
.field private static final DEFAULT_VERSION:I = 0x1

.field private static final TAG_CERTS:I = 0x3

.field private static final TAG_DV_STATUS:I = 0x0

.field private static final TAG_POLICY:I = 0x1

.field private static final TAG_REQ_SIGNATURE:I = 0x2


# instance fields
.field private certs:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private dvReqInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

.field private dvStatus:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

.field private extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

.field private policy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

.field private reqSignature:Lorg/bouncycastle/asn1/ASN1Set;

.field private responseTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

.field private serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

.field private version:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;Lorg/bouncycastle/asn1/x509/DigestInfo;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/dvcs/DVCSTime;)V
    .locals 1
    .param p1, "dvReqInfo"    # Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;
    .param p2, "messageImprint"    # Lorg/bouncycastle/asn1/x509/DigestInfo;
    .param p3, "serialNumber"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .param p4, "responseTime"    # Lorg/bouncycastle/asn1/dvcs/DVCSTime;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dvReqInfo",
            "messageImprint",
            "serialNumber",
            "responseTime"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->version:I

    .line 58
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->dvReqInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    .line 59
    iput-object p2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    .line 60
    iput-object p3, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 61
    iput-object p4, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->responseTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    .line 62
    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;
    .locals 5

    .line 66
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 68
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->version:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 70
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v3, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->version:I

    int-to-long v3, v3

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 72
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->dvReqInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 73
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 74
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 75
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->responseTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 76
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->dvStatus:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 78
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v4, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->dvStatus:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    invoke-direct {v1, v3, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 80
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->policy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

    if-eqz v1, :cond_2

    .line 82
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v4, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->policy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

    invoke-direct {v1, v3, v2, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 84
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->reqSignature:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_3

    .line 86
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v4, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->reqSignature:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v3, v2, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 88
    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->certs:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_4

    .line 90
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x3

    iget-object v4, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->certs:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v3, v2, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 92
    :cond_4
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_5

    .line 94
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 97
    :cond_5
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSCertInfo;

    move-result-object v1

    return-object v1
.end method

.method public setCerts([Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;)V
    .locals 1
    .param p1, "certs"    # [Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certs"
        }
    .end annotation

    .line 142
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->certs:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 143
    return-void
.end method

.method public setDvReqInfo(Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;)V
    .locals 0
    .param p1, "dvReqInfo"    # Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dvReqInfo"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->dvReqInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    .line 108
    return-void
.end method

.method public setDvStatus(Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;)V
    .locals 0
    .param p1, "dvStatus"    # Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dvStatus"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->dvStatus:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    .line 128
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

    .line 147
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 148
    return-void
.end method

.method public setMessageImprint(Lorg/bouncycastle/asn1/x509/DigestInfo;)V
    .locals 0
    .param p1, "messageImprint"    # Lorg/bouncycastle/asn1/x509/DigestInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageImprint"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    .line 113
    return-void
.end method

.method public setPolicy(Lorg/bouncycastle/asn1/x509/PolicyInformation;)V
    .locals 0
    .param p1, "policy"    # Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "policy"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->policy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

    .line 133
    return-void
.end method

.method public setReqSignature(Lorg/bouncycastle/asn1/ASN1Set;)V
    .locals 0
    .param p1, "reqSignature"    # Lorg/bouncycastle/asn1/ASN1Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reqSignature"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->reqSignature:Lorg/bouncycastle/asn1/ASN1Set;

    .line 138
    return-void
.end method

.method public setResponseTime(Lorg/bouncycastle/asn1/dvcs/DVCSTime;)V
    .locals 0
    .param p1, "responseTime"    # Lorg/bouncycastle/asn1/dvcs/DVCSTime;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "responseTime"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->responseTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    .line 123
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

    .line 117
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 118
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 102
    iput p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSCertInfoBuilder;->version:I

    .line 103
    return-void
.end method
